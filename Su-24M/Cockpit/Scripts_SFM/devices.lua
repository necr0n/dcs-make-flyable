local count = 0
local function counter()
	count = count + 1
	return count
end
-------DEVICE ID-------
devices = {}
devices["KNEEBOARD"]		 = counter()--01
devices["WING_SWEEP"]     = counter()--02