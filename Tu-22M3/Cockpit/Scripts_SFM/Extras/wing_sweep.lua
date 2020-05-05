-- Approx. of data provided by https://www.arms-expo.ru/armament/samples/984/66949/, http://www.modernarmy.ru/article/315/bombardirovshik-raketonosec-tu-22m3
-- Takeoff/landing at 20°, up to 30° subsonic and cruising (930Km/h); over 30° up to 65° close to and over M=1, also at extremely low altitude
-- 20°, 30°, 40°, 60°, 65° are all possible values
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
  
  -- Fastest >1M
   if mach > 1 and currentsweep < 1.0 then
    targetsweep = 1.0
  -- Close to M=1
   elseif mach > .85 and currentsweep < 0.88 then
    targetsweep = 0.88
  -- Over cruising speed (>930Km/h)
   elseif mach > .75 and currentsweep < 0.44 then
    targetsweep = 0.44
  -- Fast flight at extremely low altitude <200m
   elseif mach > .52 and altG < 200 then
    targetsweep = 1.0
	-- Subsonic/cruising (<930Km/h)
   elseif mach > .4 and currentsweep < 0.22 then
    targetsweep = 0.22
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
