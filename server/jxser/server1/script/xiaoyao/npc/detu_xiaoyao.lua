function main()
	local szTitle = "Xin ch�o <color=red>"..GetName().."<color> ! B�t k� ng��i thu�c ng� h�nh n�o, ng��i c� mu�n gia nh�p <color=fire>Ti�u Dao<color> kh�ng?"
	local tbOpt=
	{
		"V� ph�i/go_tieudao",
		"V�o ph�i Ti�u Dao v� l�m nhi�m v� ph�i/TieuDaoPhai",
		"V�o ph�i Ti�u Dao v� h�c ��n skill 150/join_tieudao",
		"K�t th�c ��i tho�i./no",
	}
	Say(szTitle, getn(tbOpt), tbOpt)
end

function go_tieudao()
	Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>Ti�u dao ph�i")
	NewWorld(1046, 1641, 3288)
end


function TieuDaoPhai()
	local FactionNumber = GetLastFactionNumber()
	if FactionNumber >= 0 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	if GetLevel()<10 then
		Talk(1, "", "H�y t� luy�n t�p th�m ��n c�p 10 r�i quay l�i ��y.")
		return
	end
	SetSeries(3);
	SetFaction("xiaoyao");
	SetCamp(3);
	SetCurCamp(4);
	SetRank(98);
	SetLastFactionNumber(12);
	AddMagic(1881,0)-- level 10
	AddMagic(1905,0)-- level 10
	SetTask(12,10*256);
	---AddItem(0,0,7,1,0,0) AddItem(0,0,8,1,0,0)
	Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i <color=fire>Ti�u Dao")
	Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Ti�u Dao ���c Tr� Th�nh Ti�n ��o C� S�")
end

function join_tieudao()
	local FactionNumber = GetLastFactionNumber()
	if FactionNumber >= 0 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local szTitle = "<color=red>"..GetName().."<color> ng��i c� ch�c ch�n mu�n gia nh�p ph�i <color=fire>Ti�u Dao<color> b�n ta kh�ng?"
	local tbOpt ={
			"X�c nh�n!/join_tieudao_sure",
			"Kh�ng./no",
		}
	Say(szTitle, getn(tbOpt), tbOpt)
end

-----------------------------------------------------------------------------------------------------------
function join_tieudao_sure()
	SetFaction("xiaoyao");
	SetCamp(3);
	SetCurCamp(4);
	SetRank(98);
	SetSeries(4);
	SetLastFactionNumber(12);
	AddMagic(1881,20)-- level 10
	AddMagic(1905,20)-- level 10

	AddMagic(1882,20)-- level 20
	AddMagic(1906,20)-- level 20

	AddMagic(1883,20)-- level 30

	AddMagic(1885,20)-- level 40
	AddMagic(1907,20)-- level 40

	AddMagic(1887,20)-- level 50
	AddMagic(1909,20)-- level 50

	AddMagic(1888,20)-- level 60

	AddMagic(1890,20)-- level 70
	AddMagic(1889,20)-- level 70

	AddMagic(1891,20)---- level 90
	AddMagic(1910,20)---- level 90

	AddMagic(1894,20)---- level 120

	AddMagic(1896,20)---- level 150
	AddMagic(1911,20)---- level 150

	AddMagic(1901,20)---- level 180
	Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i <color=fire>Ti�u Dao")
end