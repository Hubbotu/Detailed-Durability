--[[	Detailed Durability - Localization
	by SDPhantom
	https://www.wowinterface.com/forums/member.php?u=34145
	https://www.curseforge.com/members/sdphantomgamer/projects	]]
--------------------------------------------------------------------------

----------------------------------
--[[	Localization Table	]]
----------------------------------
local Localization={
	enUS={--	Native locale by SDPhantom
		DurabilityText_BrokenCountFormat="%d/%d Broken";
	};
	ruRU={-- Russian locale ZamestoTV
	DurabilityText_BrokenCountFormat="%d/%d Сломано";
};
};

----------------------------------
--[[	Localization Loader	]]--	Nothing to localize below this line
----------------------------------
local AddOn=select(2,...);
setmetatable(Localization.enUS,{__index=function(t,k) return k; end});
AddOn.Localization=Localization[GetLocale()] or Localization.enUS;
if AddOn.Localization~=Localization.enUS then setmetatable(AddOn.Localization,{__index=Localization.enUS}); end
