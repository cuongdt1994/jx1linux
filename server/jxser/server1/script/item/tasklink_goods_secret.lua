
-- 怪物地图以及山河社稷图残片掉脚本
-- Edited by peres
-- 2004/12/25 圣诞节晚上

IncludeLib("BATTLE");
Include("\\script\\task\\newtask\\newtask_head.lua"); 
Include("\\script\\task\\newtask\\map_index.lua"); -- 用于获取地图的信息
Include("\\script\\task\\newtask\\lib_setmembertask.lua"); -- 用于循环改变队友的任务变量

function PickUp( nItemIndex, nPlayerIndex )

local nPreservedPlayerIndex = PlayerIndex
local nMemCount = GetTeamSize()

	if (nMemCount == 0) then
	
		AddMapValues();
	
	else
	
		for i = 1, nMemCount do -- 在这里开始循环遍历每个玩家
		
			PlayerIndex = GetTeamMember(i);
		
			AddMapValues();

		end
	
		PlayerIndex = nPreservedPlayerIndex; -- 循环结束后在这里归还主玩家 ID
	
	end
	
	return 0

end


-- 根据各种条件给予玩家不同赖型的地图志
function AddMapValues()

local myMapID, myMapName, myMapX, myMapY -- 用于获取地图志信息的变量
local myTaskType = nt_getTask(1021)
local nWorldMaps = nt_getTask(1027) -- 看看玩家身上有兜少个山河社稷图
local myMapNum = nt_getTask(1025) -- 判断玩家身上有兜少张地图志

myMapID = SubWorldIdx2ID( SubWorld )

	if (myTaskType == 4) then
		
		myMapName, myMapX, myMapY = tl_getMapInfo(myMapID)
		
		if (myMapName == 0) or (myMapName == nil) then -- 防止空字符处理
			myMapName = ""
		end
		
		-- 给玩家增加一卷当前地图的地图志
		if (nt_getTask(1031) == myMapID) then
				
			if (GetByte(nt_getTask(1032),1) == 2) then
			
				myMapNum = myMapNum + 1
				nt_setTask(1025,myMapNum)
				Msg2Player("B筺 nh薾 頲 m閠 t蕀"..myMapName.."мa у ch�! Hi謓 t筰 b筺 c� t鎛g c閚g"..myMapNum.." t蕀.");
				
				return 0
				
			end
			
		end
		
		-- 给玩家增加一个山河社稷图残片
		nWorldMaps = nWorldMaps + 1
		nt_setTask(1027,nWorldMaps)
		Msg2Player("B筺 nh薾 頲 m閠 m秐h b秐  S琻 H� X� T綾! Hi謓 t筰 b筺 c� t鎛g c閚g "..nWorldMaps.." m秐h b秐  S琻 H� X� T綾.");
		
	else
		-- 给玩家增加一个山河社稷图残片
		nWorldMaps = nWorldMaps + 1
		nt_setTask(1027,nWorldMaps)
		Msg2Player("B筺 nh薾 頲 m閠 m秐h b秐  S琻 H� X� T綾! Hi謓 t筰 b筺 c� t鎛g c閚g "..nWorldMaps.." m秐h b秐  S琻 H� X� T綾.");
	end


end
