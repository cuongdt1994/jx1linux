Include("\\script\\global\\autoexec_head.lua")
--------------------------------------------------------

xiaoyao_parserby = {

	{625,1046,1674,3323,"\\script\\changefeature\\npc\\box.lua","R­¬ng chøa ®å"},
	{2602,1046,1645,3281, "\\script\\xiaoyao\\npc\\huongchinam.lua", "H­íng Nam Chi"},
	{2606,1046,1771,3062, "\\script\\xiaoyao\\npc\\camdong.lua", "CÇm §ång"},
	{2607,1046,1787,3073, "\\script\\xiaoyao\\npc\\kiemdong.lua", "KiÕm §ång"},
	{2605,1046,1595,3242, "\\script\\xiaoyao\\npc\\lunglinh.lua", "Lung Linh"},
	{2605,1046,1750,3225, "\\script\\activitysys\\npcdailog.lua", "V¨n B¸n S¬n"},
	{2603,1046,1666,3112, "\\script\\activitysys\\npcdailog.lua", "LiÔu Tam BiÕn"},
	{2604,1046,1657,3287, "\\script\\xiaoyao\\npc\\lythaungoc.lua", "Lý ThÊu Ngäc"},
	{1846,1046,1726,3426, "\\script\\xiaoyao\\npc\\thuyenphu.lua", "ThuyÒn Phu"},
	
	{2605,53, 1592,3185,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","§Ö Tö Tiªu Dao"},
	{2605,20,3575,6221,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","§Ö Tö Tiªu Dao"},
	{2605,99,1691,3193,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","§Ö Tö Tiªu Dao"},
	{2605,100,1641,3209,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","§Ö Tö Tiªu Dao"},
	{2605,101,1703,3125,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","§Ö Tö Tiªu Dao"},
	{2605,121,1966,4480,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","§Ö Tö Tiªu Dao"},
	{2605,153,1650,3201,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","§Ö Tö Tiªu Dao"},
	{2605,174,1589,3236,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","§Ö Tö Tiªu Dao"},
}


function add_allnpc_xiaoyao()
	xiaoyao_xiaoyaobynpc(xiaoyao_parserby)
end

function xiaoyao_xiaoyaobynpc(Tab)
	for i = 1 , getn(Tab) do 
		SId = SubWorldID2Idx(Tab[i][2]);
		if (SId >= 0) then
			npcindex = AddNpc(Tab[i][1],1,SId,Tab[i][3]*32,Tab[i][4]*32,1,Tab[i][6]);
			SetNpcScript(npcindex, Tab[i][5]);
		end;
	end	
end

AutoFunctions:Add(add_allnpc_xiaoyao)