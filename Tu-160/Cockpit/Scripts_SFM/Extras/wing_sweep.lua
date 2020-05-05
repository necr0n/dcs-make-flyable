-- Approx. of data provided by https://legendary-aircraft.blogspot.com/2013/03/Konstrukcija-Tu-160.html
-- Takeoff/landing at 20°, 35° subsonic and cruising (930Km/h); 65° over M=1
-- 20°, 35°, ?, ?, 65° are all possible values
-- So, wing sweep value (arg.7) is 0.000 at 20° and 1.000 at 65°

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
   if mach > .69 and currentsweep < 1.0 then
    targetsweep = 1.0
	-- Subsonic/cruising (<930Km/h)
   elseif mach > .4 and currentsweep < 0.33 then
    targetsweep = 0.33
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
