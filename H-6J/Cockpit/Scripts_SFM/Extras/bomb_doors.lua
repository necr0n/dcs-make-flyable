dofile(LockOn_Options.script_path.."devices.lua")

-- Declare self variables
local dev = GetSelf()
local log_en = false
local log_once = true


-- Defines what happens when the script loads in
function post_initialize()
  print_message_to_user("Bomb doors script loaded")
end


local PlaneJettisonFuelTanks=178

dev:listen_command(PlaneJettisonFuelTanks)   -- debug enable


local WEAPON_BAY_ACTION = 0 --define for the first time
set_aircraft_draw_argument_value(26,0) --plane spawns with an open bomb bay, close it

-- 0.01 rep. 1000th of second, by 10 ms.
local update_time_step = 0.01

make_default_activity(update_time_step)

--Update arg on key pressed
function update ()
  local weapon_bay_state = get_aircraft_draw_argument_value(26)
  local weapon_bay_update_step = 0.0022
  
--Weapon bay animation
	if (WEAPON_BAY_ACTION == 1 and weapon_bay_state < 1) then
	  --print_message_to_user("WEAPON_BAY_ACTION 1")
	  --if weapon_bay_state < 1 then
	  set_aircraft_draw_argument_value(26,weapon_bay_state+weapon_bay_update_step)
	  --print_message_to_user("Arg 26 "..tostring(weapon_bay_state))
	  --open weapons bay
	    if weapon_bay_state > 1 then
	      weapon_bay_state = 1
	    end
      --end
	elseif (WEAPON_BAY_ACTION == 0 and weapon_bay_state > weapon_bay_update_step ) then -- and weapon_bay_state >= 0
	  --and weapon_bay_state > 0
	  --print_message_to_user("WEAPON_BAY_ACTION 0")
	  set_aircraft_draw_argument_value(26,weapon_bay_state-weapon_bay_update_step) --close weapons bay
	  --print_message_to_user("Arg 26 "..tostring(weapon_bay_state))
	  if weapon_bay_state < 0 then
	    weapon_bay_state = 0
	  end
	end
end

-- Debug function
function SetCommand(command,value)
    --print_message_to_user("Entering function")
	if command == PlaneJettisonFuelTanks then
	    --print_message_to_user("Key pressed")
        if WEAPON_BAY_ACTION == 0 then
			WEAPON_BAY_ACTION = 1
			--print_message_to_user("WEAPON_BAY_ACTION enable "..tostring(WEAPON_BAY_ACTION))
        else
			WEAPON_BAY_ACTION = 0
			--print_message_to_user("WEAPON_BAY_ACTION enable "..tostring(WEAPON_BAY_ACTION))
        end
    end
end

need_to_be_closed = false
