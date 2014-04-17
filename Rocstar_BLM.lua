function get_sets() 

  --Values
  pre = {} 
  
  mid = {} 
  
  mid.Ancient = {}
  
  --Change Macros 
  send_command('input /macro book 5;wait .1;input /macro set 9')
 
  --Message at start
  add_to_chat(200, 'Gearswap: Nuke Mode (Magic Damage) F9, Auto Stun (Disabled) F10')

  --Key binds
  send_command('bind f9 gs c Nuke_Mode') 
  send_command('bind f10 gs c Auto_Stun_Mode') 
  
  --Precast sets
  --Job Ability set
  pre.Manafont = {body="Sorcerer's coat +2"}
  
  --Weapon Skill sets
  pre.Retribution = {ear1="Bladeborn Earring",ear2="Steelflash Earring"}

  pre['Spirit Taker'] = {ear1="Friomisi Earring",ear2="Hecate's Earring"}

  --Fast Cast set
  pre.Cast = {ammo="Impatiens",head="Haruspex Hat",ear1="Loquacious Earring",
	ring1="Prolix Ring",ring2="Veneficium Ring",back="Swith Cape",
	waist="Witful Belt",legs="Orvail Pants +1"}

  --Enhancing Magic Casting time - set
  pre.Enhancing = set_combine(pre.Cast, {waist="Siegel Sash"})

  --Stoneskin Casting time - set
  pre.Stoneskin = set_combine(pre.Cast, pre.Enhancing, {hands="Carapacho Cuffs"})

  --Cure Casting time - set
  pre.Cure = set_combine(pre.Cast, {body="Heka's Kalasiris",back="Pahtli Cape",waist="Capricornian Rope"})

  --Elemental Magic Casting time - set
  pre.Elemental = {head="Goetia Petasos +2",neck="Stoicheion Medal",feet="Spaekona's Sabots"}
  
  --Ancient Magic II Casting time - sets
  pre['Quake II'] = {hands="Sorcerer's Gloves +2"} 
  
  pre['Flood II'] = {hands="Sorcerer's Gloves +2"} 
  
  pre['Tornado II'] = {hands="Sorcerer's Gloves +2"} 
  
  pre['Flare II'] = {hands="Sorcerer's Gloves +2"} 
  
  pre['Freeze II'] = {hands="Sorcerer's Gloves +2"} 
  
  pre['Burst II'] = {hands="Sorcerer's Gloves +2"} 

  --Affinity: Casting time - sets
  pre.Earth = {main="Vishrava I"} 
  
  pre.Fire = {main="Atar I"} 
  
  pre.Water = {main="Haoma I"} 
  
  pre.Wind = {main="Vayuvata I"} 
  
  pre.Ice = {main="Vourukasha I"} 
  
  pre.Thunder = {main="Apamajas I"} 
  
  pre.Light = {main="Arka I"} 
  
  pre.Dark = {main="Xsaeta I"} 
	
  --Midcast sets
  mid.Darkmagic = {} --add Dark Magic gear

  mid.MND_Enfeeb = {main="Atinian Staff",sub="Achaq Grip",
	ammo="Memoria Sachet",head="Wayfarer circlet",
	ear1="Gifted Earring",ear2="Loquacious Earring",
	body="Hagondes Coat",hands="Otomi Gloves",
	ring1="Prolix Ring",ring2="Sirona's Ring",
	back="Bane Cape",waist="Cetl Belt",
	legs="Wayfarer Slops",feet="Spaekona's Sabots"} 

  mid.INT_Enfeeb = set_combine(mid.MND_Enfeeb, {}) 

  mid.Cure = {main="Arka IV",sub="Achaq Grip",
	head="Buremte Hat",ear1="Gifted Earring",
	ear2="Loquacious Earring",hands="Bokwus Gloves",
	ring2="Sirona's Ring",legs="Wayfarer Slops"} 
	
  mid.Stoneskin = {} --add Stoneskin gear
  
  mid.ProShell = {ring2="Sheltered Ring"}
  
  mid.Recast = {} --add recast gear

  --Weather and or day sets
  mid.Fire = {waist='Karin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
	
  mid.Earth = {waist='Dorin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
	
  mid.Water = {waist='Suirin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
	
  mid.Wind = {waist='Furin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
	
  mid.Ice = {waist='Hyorin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
	
  mid.Thunder = {waist='Rairin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
	
  mid.Light = {waist='Korin Obi',back='Twilight Cape'} 
	
  mid.Dark = {waist='Anrin Obi',back='Twilight Cape'} 
  
  mid.Stun = {main="Atinian Staff",sub="Zuuxowu Grip",
	ammo="Memoria Sachet",head="Haruspex Hat",
	ear1="Loquacious Earring",ring1="Prolix Ring",
    neck="Quanpur Necklace",body="Hagondes Coat",
	hands="Otomi Gloves",back="Swith Cape",
	waist="Witful Belt",legs="Wayfarer Slops",
	feet="Spaekona's Sabots"} 
  
  --Ancient Magic II values
  mid.Ancient['Quake II'] = {} 
  
  mid.Ancient['Flood II'] = {} 
  
  mid.Ancient['Tornado II'] = {} 
  
  mid.Ancient['Flare II'] = {} 
  
  mid.Ancient['Freeze II'] = {} 
  
  mid.Ancient['Burst II'] = {} 
  
  --High Tier Nuke values
  mid.Comet = {}
  
  mid.Stoneja = {} 
  mid['Stone V'] = {} 
  mid['Stone IV'] = {} 
  mid['Stone III'] = {} 
  mid['Stonega III'] = {} 
  
  mid.Waterja = {} 
  mid['Water V'] = {} 
  mid['Water IV'] = {} 
  mid['Water III'] = {} 
  mid['Waterga III'] = {}
  
  mid.Aeroja = {} 
  mid['Aero V'] = {} 
  mid['Aero IV'] = {} 
  mid['Aero III'] = {} 
  mid['Aeroga III'] = {}
  
  mid.Firaja = {} 
  mid['Fire V'] = {} 
  mid['Fire IV'] = {} 
  mid['Fire III'] = {} 
  mid['Firaga III'] = {}
  
  mid.Blizzaja = {} 
  mid['Blizzard V'] = {} 
  mid['Blizzard IV'] = {} 
  mid['Blizzard III'] = {} 
  mid['Blizzaga III'] = {} 
  
  mid.Thundaja = {} 
  mid['Thunder V'] = {} 
  mid['Thunder IV'] = {} 
  mid['Thunder III'] = {} 
  mid['Thundaga III'] = {} 
  
  --Low Tier Nuke set
  Low_Tier_Nuke = {main="Atinian Staff",sub="Zuuxowu Grip",
	ammo="Memoria Sachet",head="Buremte Hat",
    neck="Quanpur Necklace",ear1="Friomisi Earring",
	ear2="Hecate's Earring",body="Bokwus Robe",
	hands="Otomi Gloves",ring1="Demon's Ring",
	ring2="Demon's Ring",back="Toro Cape",
	waist="Othila Sash",legs="Hagondes Pants",
	feet="Spaekona's Sabots"} 
	
  High_Tier_Nuke = set_combine(Low_Tier_Nuke, {body="Goetia Coat +2"}) 
  
  Ancient_Magic_Nuke = set_combine(Low_Tier_Nuke, {head="Sorcerer's Petasos +2",body="Goetia Coat +2",
    feet="Sorcerer's Sabots +2"}) 
  
  Magic_Accuracy_Nuke = set_combine(Low_Tier_Nuke, {}) 
  
  Dark_Nuke = set_combine(Low_Tier_Nuke, {}) 
  
  --Refresh set
  Refresh = {main="Terra's Staff",sub="Oneiros Grip",
	ammo="Shadow Sachet",head="Wayfarer Circlet",
	neck="Wiglen Gorget",ear1="Black Earring",
	ear2="Darkness Earring",body="Wayfarer Robe",
	hands="Wayfarer Cuffs",ring1="Paguroidea Ring",
	ring2="Sheltered Ring",back="Cheviot Cape",
    waist="Slipor Sash",legs="Wayfarer slops",
	feet="Wayfarer Clogs"} 

  --Regen and Refresh set
  REG = set_combine(Refresh, {neck="Wiglen Gorget",ring1="Paguroidea Ring",ring2="Sheltered Ring"}) 

  Physical_Damage_Taken = {} --add physical damage taken - gear

  Magic_Damage_Taken = {} --add magic damage taken - gear

  Breath_Damage_Taken = {} --add breath damage taken - gear

  Damage_Taken = {} --add damage taken - gear

  Attack = {main="Atinian Staff"} 

  Accuracy = {} --add Accuracy gear

  Aftermath = set_combine(Attack, {}) --add Aftermath gear

  Engaged_Mode = Attack 

  Idle_Mode = REG 

  Nuke_Mode = Low_Tier_Nuke 
  
  Auto_Stun_Mode = false 
  
  WEAK = {} 
  
  windower.register_event('action', 
    function(a) 
     local m = windower.ffxi.get_mob_by_target('bt') 
      if Auto_Stun_Mode ~= false then 
	    if a.target_count ~= 0 then 
          if a.targets[1].action_count ~= 0 then 
            if a.targets[1].actions[1].message ~= 0 then 
              if (m and m.is_npc and m.id == a.actor_id) and Auto_Stun_Mode:contains(a.category) then 
                windower.send_command('input /ma Stun <bt>') 
			  end 
		    end 
		  end 
	    end 
	  end 
    end) 
end 

function precast(spell) 
  if spell.skill == 'ElementalMagic' then 
    if pre[spell.english] then 
	  equip(pre.Cast, pre.Elemental, pre[spell.english], pre[spell.element]) 
	else 
    equip(pre.Cast, pre.Elemental, pre[spell.element]) 
	end 
  elseif spell.type == 'EnhancingMagic' then 
    equip(pre.Enhancing, pre[spell.element]) 
  elseif spell.english:startswith('Cur') then 
    equip(pre.Cure, pre[spell.element]) 
  elseif S{'WeaponSkill', 'JobAbility'}:contains(spell.type) then 
    equip(pre[spell.english]) 
  else 
	equip(pre.Cast, pre[spell.element]) 
  end 
end 

function midcast(spell) 
  if spell.skill == 'ElementalMagic' then 
    if not S{mid, mid.Ancient}:contains(spell.english) then 
      Nuke_Mode = Low_Tier_Nuke 
	end 
	  equip(Nuke_Mode) 
        if mid[spell.english] then 
	      Nuke_Mode = High_Tier_Nuke 
	    end 
	      equip(Nuke_Mode, pre[spell.element])
		    if mid.Ancient[spell.english] then 
	          Nuke_Mode = Ancient_Magic_Nuke 
	        end 
			  equip(Nuke_Mode, pre[spell.element]) 
                if S{world.day_element, world.weather_element}:contains(spell.element) then 
                  equip(mid[spell.element]) 
                end 
  elseif spell.skill == 'DarkMagic' then 
    if S{High_Tier_Nuke, Low_Tier_Nuke}:contains(Nuke_Mode) then 
	  Nuke_Mode = Dark_Nuke 
	end
      equip(Nuke_Mode)  
        if S{world.day_element, world.weather_element}:contains(spell.element) then 
          equip(mid[spell.element]) 
        end 
  elseif spell.english:startswith('Cur') then 
    equip(mid.Cure) 
       if S{world.day_element, world.weather_element}:contains(spell.element) then  
        equip(mid[spell.element]) 
      end 	
  elseif spell.skill == 'EnfeeblingMagic' and spell.english == 'Blind' then 
    equip(mid.INT_Enfeeb) 
  elseif spell.skill == 'EnfeeblingMagic' and spell.english ~= 'Blind' then 
    equip(mid.MND_Enfeeb) 
  elseif spell.english:startswith('Shell') or 
    spell.english:startswith('Pro') then 
    equip(mid.ProShell) 
  elseif spell.english == 'Blink' and buffactive.blink then 
    send_command('cancel 36') 
  elseif spell.english == 'Stoneskin' and buffactive.stoneskin then 
    send_command('cancel 37') 
    equip(mid[spell.english]) 
  elseif spell.english == 'Sneak' and spell.target.name == player.name and buffactive.sneak then 
    send_command('cancel 71') 
  end
end 

function aftercast(spell) 
  if player.status == 'Engaged' then 
    equip(Engaged_Mode) 
  else 
    equip(Idle_Mode) 
  end 
end 

function status_change(new,old) 
  if new == 'Engaged' then 
    equip(Engaged_Mode) 
  elseif new == 'Resting' then 
    equip(Idle_Mode) 
  elseif new == 'Idle' then 
    equip(Idle_Mode) 
  end 
end 

function self_command(command) 
  if command == 'Auto_Stun_Mode' then 
    if Auto_Stun_Mode == false then 
	  Auto_Stun_Mode = S{7} 
	  add_to_chat(200, 'Gearswap: Auto Stun now TP') 
	elseif Auto_Stun_Mode == S{7} then 
	  Auto_Stun_Mode = S{8} 
	  add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting') 
	elseif Auto_Stun_Mode == S{8} then 
	  Auto_Stun_Mode = S{7,8} 
	  add_to_chat(200, 'Gearswap: Auto Stun now All') 
	elseif Auto_Stun_Mode == S{7,8} then 
	  Auto_Stun_Mode = false 
	  add_to_chat(200, 'Gearswap: Auto Stun now Disabled') 
	end 
	
	elseif command == 'Nuke_Mode' then 
	  if Nuke_Mode ~= Magic_Accuracy_Nuke then  
	    Nuke_Mode = Magic_Accuracy_Nuke 
	    add_to_chat(200, 'Gearswap: Nuke Mode now Magic Accuracy') 
	  elseif Nuke_Mode == Magic_Accuracy_Nuke then 
	    Nuke_Mode = Low_Tier_Nuke 
		add_to_chat(200, 'Gearswap: Nuke Mode now Normal') 
	  end
    end 
end
  
function file_unload() 
  send_command('unbind f9') 
  send_command('unbind f10') 
end 
