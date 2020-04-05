ViewSettings = {
	Cockpit = {
	[1] = {-- player slot 1
		CameraViewAngleLimits  = {20.000000,140.000000},
		CockpitLocalPoint      = {5.300,1.900,0.000},
		CameraAngleRestriction = {false,90.000000,0.500000},
		CameraAngleLimits      = {200,-90.000000,90.000000},
		EyePoint               = {0.05000,0.100000,0.000000},
		ShoulderSize		   = 0.25,
		Allow360rotation	   = false,
		limits_6DOF            = {x = {-0.13,0.30},y ={-0.3,0.065},z = {-0.18,0.18},roll = 90.000000},
	},
	}, -- Cockpit 
	Chase = {
		LocalPoint      = {-5.0,1.0,3.0},
		AnglesDefault   = {0.000000,0.000000},
	}, -- Chase 
	Arcade = {
		LocalPoint      = {-21.500000,5.618000,0.000000},
		AnglesDefault   = {0.000000,-8.000000},
	}, -- Arcade 
}

local function head_pos_default(tab)
    if not tab then
	   tab = {}
	end

	tab.viewAngle = tab.viewAngle  or 90
	tab.hAngle    = tab.hAngle     or  0
	tab.vAngle    = tab.vAngle     or -9 -- -9 -- -2
	tab.x_trans   = tab.x_trans    or  0.13 --0.0592
	tab.y_trans   = tab.y_trans    or  -0.0083 --0.0072
	tab.z_trans   = tab.z_trans    or  0
	tab.rollAngle = tab.rollAngle  or  0
	
	return tab
end

SnapViews = {
[1] = {-- player slot 1
		[1]  = head_pos_default({}),--Num 0
		[2]  = head_pos_default({
					viewAngle = 47.292435,--FOV
					hAngle	 = 48.871532,
					vAngle	 = -27.210711,
					x_trans	 = 0.249971,
					y_trans	 = -0.084290,
					z_trans	 = 0.073930,
					rollAngle = 0.000000,
					}),--LWin + Num1 : Snap View 1 - Left Panel
		[3]  = head_pos_default({
					viewAngle = 55.221584,--FOV
					hAngle	 = 16.238178,
					vAngle	 = -30.736124,
					x_trans	 = -0.050000,
					y_trans	 = 0.023570,
					z_trans	 = 0.169352,
					rollAngle = 0.000000,
					}),--LWin + Num2 : Snap View 2 - Central Panel
		[4]  = head_pos_default({
					viewAngle = 42.162884,--FOV
					hAngle	 = -56.690430,
					vAngle	 = -28.339693,
					x_trans	 = 0.198301,
					y_trans	 = -0.113795,
					z_trans	 = -0.169444,
					rollAngle = 0.000000,
					}),--LWin + Num3 : Snap View 3 - Right Panel
		[5]  = head_pos_default({
					viewAngle = 64.821587,--FOV
					hAngle	 = 112.844025,
					vAngle	 = -38.512653,
					x_trans	 = 0.192144,
					y_trans	 = -0.149974,
					z_trans	 = 0.148975,
					rollAngle = 0.000000,
					}),--LWin + Num4 : Snap View 4 - RSI transmitter
		[6]  = head_pos_default({}),--LWin + Num5 : Snap View 5 - Default view
		[7]  = head_pos_default({
					viewAngle = 55.734432,--FOV
					hAngle	 = -135.255219,
					vAngle	 = -34.517639,
					x_trans	 = 0.0,--107932,
					y_trans	 = -0.149154,
					z_trans	 = -0.04,
					rollAngle = 0.000000,
					}),--LWin + Num6 : Snap View 6 - RSI Receiver
		[8]  = head_pos_default({
					viewAngle = 99.106483,--FOV
					hAngle	 = 131.835434,
					vAngle	 = -7.700000,
					x_trans	 = 0.116748,
					y_trans	 = 0.040000,
					z_trans	 = -0.063734,
					rollAngle = 0.000000,}),--LWin + Num7 : Snap View 7 - Left Wing
		[9]  = head_pos_default({
					viewAngle = 45.847183,--FOV
					hAngle	 = -67.158295,
					vAngle	 = -34.341640,
					x_trans	 = -0.047527,
					y_trans	 = -0.149968,
					z_trans	 = -0.169835,
					rollAngle = 0.000000,
					}),--LWin + Num8 : Snap View 8 - ARK
		[10] = head_pos_default({}),--Num 9
		[11] = head_pos_default({viewAngle = 60, vAngle = 10}),--look at left  mirror
		[12] = head_pos_default({viewAngle = 60, vAngle = 10}),--look at right mirror
		[13] = head_pos_default({})--default view
},
}
