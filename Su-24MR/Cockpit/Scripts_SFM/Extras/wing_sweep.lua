-- Approx. of data provided by https://en.wikipedia.org/wiki/Sukhoi_Su-24,
--http://forums.airbase.ru/2007/07/t36166_17--umnye-mysli-pro-su-24.html
--"16° for take-off and landing, 35° and 45° for cruise at different altitudes, and 69° for minimum aspect ratio and wing area in low-level dashes"
-- 16°, 36°, 45°, 69° are all possible values
-- So, wing sweep value (arg.7) is 0.000 at 16° and 1.000 at 69°

-- Declare self variables
local dev = GetSelf()

-- 0.01 rep. 1000th of second, by 10 ms.
local update_time_step = 0.01

make_default_activity(update_time_step)

local sensor_data = get_base_data()

-- Defines what happens when the script loads in
function post_initialize()
  print_message_to_user("Wing sweep automatic")
end

-- Defines how wing sweep animations should work
function update()
  -- Preparing constants/dependencies
  local mach = sensor_data:getMachNumber()
  local altG = sensor_data:getRadarAltitude()
  local currentsweep = get_aircraft_draw_argument_value(7)
  local targetsweep = 0
  local sweepstep = 0.0006
  
  -- Fastest ~1M
   if mach > .8 and currentsweep < 1.0 then
    targetsweep = 1.0
	-- Very low alt pass
   elseif altG < 200 and mach > .65 and currentsweep < 1.0 then
    targetsweep = 1.0
	-- Subsonic/cruising (45°)
   elseif mach > .65 and currentsweep < 0.55 then
    targetsweep = 0.55
	-- Subsonic/cruising (35°)
   elseif mach > .32 and currentsweep < 0.38 then
    targetsweep = 0.38
	-- Takeoff/landing (<400Km/h)
   elseif mach > 0 and currentsweep > 0.0 then
    targetsweep = 0.0
  end

  -- Actual update part
	if targetsweep >= 0.0 then
		if math.abs(targetsweep-currentsweep) < sweepstep then
			set_aircraft_draw_argument_value(7,targetsweep)
		elseif targetsweep > currentsweep then
			set_aircraft_draw_argument_value(7,currentsweep+sweepstep)
		elseif targetsweep < currentsweep then
			set_aircraft_draw_argument_value(7,currentsweep-sweepstep)
			end
	end
end

need_to_be_closed = false
