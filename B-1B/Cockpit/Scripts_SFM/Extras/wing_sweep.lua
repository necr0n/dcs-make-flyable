-- Approx. of data provided by https://en.wikipedia.org/wiki/Rockwell_B-1_Lancer and https://fas.org/nuke/guide/usa/bomber/b1b-factbook.pdf
-- Takeoff/landing at 15°, 35° over 0.45M, 55° over 0.55M ; 67.5° over M=0.85 or at low altitudes
-- 15°, 20°, 35°, 45°, 55°, 67.5° are all possible values
-- So, wing sweep value (arg.7) is 0.000 at 15° and 1.000 at 67.5°

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
   if mach > .85 and currentsweep < 1.0 then
    targetsweep = 1.0
	-- Very low alt pass
   elseif altG < 200 and mach > .65 and currentsweep < 1.0 then
    targetsweep = 1.0
	-- Subsonic/cruising (45°)
   elseif mach > .55 and currentsweep < 0.57 then
    targetsweep = 0.57
	-- Subsonic/cruising (35°)
   elseif mach > .45 and currentsweep < 0.38 then
    targetsweep = 0.38
	-- Takeoff/landing
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
