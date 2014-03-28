function get_sets()

  pre = {} 
  
  mid = {} 

  send_command('input /macro book 5;wait .1;input /macro set 9')
 
  send_command('bind !- gs c e') 
  
  send_command('bind != gs c i') 
  
  send_command('bind f10 gs c f10') 
  
  add_to_chat(200, 'Engaged DD ALT -, Idle Refresh ALT =, Auto Stun F10, //gs c help')

  pre['Elemental Seal'] = {
    main="Baqil Staff"}

  pre.Manafont = {
    body="Sorcerer's coat +2"}

  pre.Retribution = {
    ear1="Bladeborn Earring",ear2="Steelflash Earring"}

  pre['Spirit Taker'] = {
    ear1="Friomisi Earring",ear2="Hecate's Earring"}

  pre.Cast = {
    ammo="Impatiens",
	head="Haruspex Hat",
	ear1="Loquacious Earring",
	ring1="Prolix Ring",
    ring2="Veneficium Ring",
	back="Swith Cape",
	waist="Witful Belt",
	legs="Orvail Pants +1"}

  pre.Enhancing = set_combine(pre.Cast, {
    waist="Siegel Sash"})

  pre.Stoneskin = set_combine(pre.Cast, pre.Enhancing, {
    hands="Carapacho Cuffs"})

  pre.Elemental = set_combine(pre.Cast, {
    head="Goetia Petasos +2",
	feet="Spaekona's Sabots"})

  pre.Cure = set_combine(pre.Cast, {
    body="Heka's Kalasiris",
	back="Pahtli Cape",
	waist="Capricornian Rope"})

  pre.Earth = {main="Vishrava I"}
  pre.Fire = {main="Atar I"}
  pre.Water = {main="Haoma I"}
  pre.Wind = {main="Vayuvata I"}
  pre.Ice = {main="Vourukasha I"}
  pre.Thunder = {main="Apamajas I"}
  pre.Light = {main="Arka I"}
  pre.Dark = {main="Xsaeta I"}
	
  mid.Fire = {
    waist='Karin Obi',
	back='Twilight Cape',
	ring1='Zodiac Ring'} 
	
  mid.Earth = {
    waist='Dorin Obi',
	back='Nexus Cape',
	ring1='Zodiac Ring'} 
	
  mid.Water = {
    waist='Suirin Obi',
	back='Twilight Cape',
	ring1='Zodiac Ring'} 
	
  mid.Wind = {
    waist='Furin Obi',
	back='Nexus Cape',
	ring1='Zodiac Ring'} 
	
  mid.Ice = {
    waist='Hyorin Obi',
	back='Nexus Cape',
	ring1='Zodiac Ring'} 
	
  mid.Thunder = {
    waist='Rairin Obi',
	back='Nexus Cape',
	ring1='Zodiac Ring'} 
	
  mid.Light = {
    waist='Korin Obi',
	back='Nexus Cape'} 
	
  mid.Dark = {
    waist='Anrin Obi',
	back='Twilight Cape'} 

  mid.Nuke = {
    main="Atinian Staff",
	sub="Zuuxowu Grip",
	ammo="Witchstone",
	head="Buremte Hat",
    neck="Quanpur Necklace",
	ear1="Friomisi Earring",
	ear2="Hecate's Earring",
	body="Bokwus Robe",
	hands="Otomi Gloves",
    ring1="Demon's Ring",
	ring2="Demon's Ring",
	back="Toro Cape",
	waist="Othila Sash",
	legs="Hagondes Pants",
	feet="Spaekona's Sabots"} 
	
  mid.Stoneja = set_combine(mid.Nuke, pre.Earth) 
  mid['Stone V'] = set_combine(mid.Nuke, pre.Earth) 
  mid['Stone IV'] = set_combine(mid.Nuke, pre.Earth) 
  mid['Stone III'] = set_combine(mid.Nuke, pre.Earth) 
  mid['Stonega III'] = set_combine(mid.Nuke, pre.Earth) 
  
  mid.Waterja = set_combine(mid.Nuke, pre.Water) 
  mid['Water V'] = set_combine(mid.Nuke, pre.Water) 
  mid['Water IV'] = set_combine(mid.Nuke, pre.Water) 
  mid['Water III'] = set_combine(mid.Nuke, pre.Water) 
  mid['Waterga III'] = set_combine(mid.Nuke, pre.Water)
  
  mid.Aeroja = set_combine(mid.Nuke, pre.Aero) 
  mid['Aero V'] = set_combine(mid.Nuke, pre.Aero) 
  mid['Aero IV'] = set_combine(mid.Nuke, pre.Aero) 
  mid['Aero III'] = set_combine(mid.Nuke, pre.Aero) 
  mid['Aeroga III'] = set_combine(mid.Nuke, pre.Aero)
  
  mid.Firaja = set_combine(mid.Nuke, pre.Fire) 
  mid['Fire V'] = set_combine(mid.Nuke, pre.Fire) 
  mid['Fire IV'] = set_combine(mid.Nuke, pre.Fire) 
  mid['Fire III'] = set_combine(mid.Nuke, pre.Fire) 
  mid['Firaga III'] = set_combine(mid.Nuke, pre.Fire)
  
  mid.Blizzaja = set_combine(mid.Nuke, pre.Blizzard) 
  mid['Blizzard V'] = set_combine(mid.Nuke, pre.Blizzard) 
  mid['Blizzard IV'] = set_combine(mid.Nuke, pre.Blizzard) 
  mid['Blizzard III'] = set_combine(mid.Nuke, pre.Blizzard) 
  mid['Blizzaga III'] = set_combine(mid.Nuke, pre.Blizzard) 
  
  mid.Thundaja = set_combine(mid.Nuke, pre.Thunder) 
  mid['Thunder V'] = set_combine(mid.Nuke, pre.Thunder) 
  mid['Thunder IV'] = set_combine(mid.Nuke, pre.Thunder) 
  mid['Thunder III'] = set_combine(mid.Nuke, pre.Thunder) 
  mid['Thundaga III'] = set_combine(mid.Nuke, pre.Thunder) 
  
  mid.Dark = {} --add Dark Magic gear

  mid.MND_Enfeeb = {
    neck="Twilight Torque"} 

  mid.INT_Enfeeb = {
    neck="Twilight Torque"} 

  mid.Cure = {
    main="Arka IV",
	sub="Achaq Grip",
	head="Buremte Hat",
    hands="Bokwus Gloves",
	ring2="Sirona's Ring",
	legs="Wayfarer Slops"} 
	
  mid.Stoneskin = {} --add Stoneskin gear
  
  mid.ProShell = {ring2="Sheltered Ring"}
  
  mid.Recast = {} --add recast gear

  REF = {
    main="Terra's Staff",
	sub="Oneiros Grip",
	ammo="Shadow Sachet",
    head="Wayfarer Circlet",
	neck="Twilight Torque",
	ear1="Black Earring",
	ear2="Darkness Earring",
    body="Wayfarer Robe",
	hands="Wayfarer Cuffs",
	ring1="Dark Ring",
	ring2="Dark Ring",
	back="Cheviot Cape",
    waist="Slipor Sash",
	legs="Wayfarer Slops",
	feet="Wayfarer Clogs"} 

  REG={} --add Regen gear

  ACC={} --add Accuracy gear

  PDT={} --add physical damage taken - gear

  MDT={} --add magic damage taken - gear

  BDT={} --add breath damage taken - gear

  DT={} --add damage taken - gear

  DD = set_combine(mid.Nuke, {}) --add damage dealer gear

  AM = set_combine(DD, {body="Hagondes Coat"}) --add Aftermath gear

  E = DD

  I = REF

  A = false 
  
  windower.register_event('action', 
    function(a) 
     local m = windower.ffxi.get_mob_by_target('bt') 
      if A ~= false then 
	    if a.target_count ~= 0 then 
          if a.targets[1].action_count ~= 0 then 
            if a.targets[1].actions[1].message ~= 0 then 
              if (m and m.is_npc and m.id == a.actor_id) and A:contains(a.category) then 
                windower.send_command('input /ma Stun <bt>') 
			  end 
		    end 
		  end 
	    end 
	  end 
    end) 
end 

function precast(spell) 
  if spell.type == 'WeaponSkill' then  
    equip(pre[spell.english]) 
  elseif spell.type ~= 'WeaponSkill' and pre[spell.english] then 
	equip(pre[spell.english], pre[spell.element])
  elseif spell.skill == 'ElementalMagic' then 
    equip(pre.Elemental, pre[spell.element]) 
  elseif spell.type == 'EnhancingMagic' then 
    equip(pre.Enhancing, pre[spell.element]) 
  elseif spell.english:startswith('Cur') then 
    equip(pre.Cure, pre[spell.element]) 
  end 
end 

function midcast(spell)
  if spell.skill == 'ElementalMagic' and not mid[spell.english] then 
    equip(mid.Nuke) 
	  if spell.element == world.day_element or spell.element == world.weather_element then 
        equip(mid[spell.element]) 
      end 
  elseif spell.skill == 'ElementalMagic' and mid[spell.english] then 
    equip(mid[spell.english]) 
	  if spell.element == world.day_element or spell.element == world.weather_element then 
        equip(mid[spell.element]) 
      end 
  elseif spell.english:startswith('Cure') or spell.english:startswith('Curaga') then 
    equip(mid.Cure) 
	  if spell.element == world.day_element or spell.element == world.weather_element then 
        equip(mid[spell.element]) 
	  end
  elseif spell.skill == 'DarkMagic' then 
    equip(mid.Dark)	
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
    equip(E) 
  else 
    equip(I) 
  end 
end 

function status_change(new,old) 
  if new == 'Engaged' then 
    equip(E) 
  elseif new == 'Resting' then 
    equip(I) 
  elseif new == 'Idle' then 
    equip(I) 
  end 
end 

function buff_change(buff, gain) 
  if buff == 'Aftermath: Lv.1'and not gain 
  or buff == 'Aftermath: Lv.2'and not gain 
  or buff == 'Aftermath: Lv.3'and not gain then 
    E=DD 
      if player.status == 'Engaged' then 
        equip(E) 
	  end 
  elseif buff == 'Aftermath: Lv.1'and gain 
  or buff == 'Aftermath: Lv.2'and gain 
  or buff == 'Aftermath: Lv.3'and gain then 
    E=AM 
    equip(E) 
  end 
end 

function self_command(command) 
 local stat = player.status 
  if command=='help'then 
    add_to_chat(200, 'Gearswap: Engaged Modes:') 
    add_to_chat(200, '//gs c e ref, //gs c e reg, //gs c e acc, //gs c e pdt') 
    add_to_chat(200, '//gs c e mdt, //gs c e bdt, //gs c e dt, //gs c e dd') 
    add_to_chat(200, 'Gearswap: Idle Modes:') 
    add_to_chat(200, '//gs c i fish, //gs c i ref, //gs c i reg, //gs c i acc, ') 
    add_to_chat(200, '//gs c i pdt, //gs c i mdt, //gs c i bdt, //gs c i dt, //gs c i dd') 
    add_to_chat(200, 'Gearswap: Stun Modes:') 
    add_to_chat(200, '//gs c yes stun, //gs c no stun, //gs c tp stun, //gs c ma stun') 
  elseif command == 'weather' then 
    print(world.weather_element) 
  elseif command == 'day' then 
    print(world.day)
  elseif command == 'e reg' then 
    E = REG 
	add_to_chat(200, 'Gearswap: Engaged now Regen') 
      if stat == 'Engaged' then 
	    equip(E) 
	  end 
  elseif command == 'e acc' then 
    E = ACC 
	add_to_chat(200, 'Gearswap: Engaged now Accuracy') 
	  if stat == 'Engaged' then 
	    equip(E) 
	  end 
  elseif command == 'e pdt' then 
    E = PDT 
	add_to_chat(200, 'Gearswap: Engaged now PDT -') 
	  if stat == 'Engaged' then 
	    equip(E) 
	  end 
  elseif command == 'e mdt' then 
    E = MDT 
    add_to_chat(200, 'Gearswap: Engaged now MDT -') 
      if stat == 'Engaged' then 
	    equip(E)
	  end 
  elseif command == 'e bdt' then 
    E = BDT 
	add_to_chat(200, 'Gearswap: Engaged now BDT -') 
	  if stat == 'Engaged' then 
	    equip(E) 
	  end 
  elseif command == 'e dt' then 
    E = DT 
	add_to_chat(200, 'Gearswap: Engaged now DT -') 
	  if stat == 'Engaged' then 
	    equip(E) 
	  end 
  elseif command == 'e dd' then 
    E = DD 
	add_to_chat(200, 'Gearswap: Engaged now DD') 
	  if stat == 'Engaged' then 
	    equip(E) 
	  end 
  elseif command == 'i fish'then 
    I = FISH 
	add_to_chat(200, 'Gearswap: Idle now Fishing') 
	  if stat ~= 'Engaged' then 
	    equip(I) 
	  end 
  elseif command == 'i reg' then 
    I = REG 
	add_to_chat(200, 'Gearswap: Idle now Regen') 
	  if stat ~= 'Engaged' then 
	    equip(I) 
	  end 
  elseif command == 'i acc' then 
    I = ACC 
    add_to_chat(200, 'Gearswap: Idle now Accuracy') 
	  if stat ~= 'Engaged' then 
	    equip(I) 
	  end 
  elseif command == 'i pdt' then 
    I = PDT 
	add_to_chat(200, 'Gearswap: Idle now PDT -') 
	  if stat ~= 'Engaged' then 
	    equip(I) 
	  end 
  elseif command == 'i mdt' then 
    I = MDT 
	add_to_chat(200, 'Gearswap: Idle now MDT -') 
	  if stat ~= 'Engaged' then 
	    equip(I) 
	  end 
  elseif command == 'i bdt' then 
    I = BDT 
	add_to_chat(200, 'Gearswap: Idle now BDT -') 
	  if stat ~= 'Engaged' then 
	    equip(I) 
	  end 
  elseif command == 'i dt' then 
    I = DT 
	add_to_chat(200, 'Gearswap: Idle now DT -') 
	  if stat ~= 'Engaged' then 
	    equip(I) 
	  end 
  elseif command == 'i dd' then 
    I = DD 
	add_to_chat(200, 'Gearswap: Idle now DD') 
	  if stat ~= 'Engaged' then 
	    equip(I) 
	  end 
  elseif command == 'tp stun' then 
    A=S{7} 
	add_to_chat(200, 'Gearswap: Auto Stun now TP') 
  elseif command == 'ma stun' then 
    A=S{8} 
	add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting') 
  elseif command == 'yes stun' then 
    A=S{7,8} 
	add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting') 
  elseif command == 'no stun' then 
    A=false 
	add_to_chat(200, 'Gearswap: Auto Stun now Disabled') 
  elseif command == 'e' then 
    if E == DD then 
	  E = ACC 
	  add_to_chat(200, 'Gearswap: Engaged now Accuracy') 
	    if stat == 'Engaged' then 
		  equip(E) 
		end 
    elseif E == ACC then 
	  E = REG 
	  add_to_chat(200, 'Gearswap: Engaged now Regen') 
	    if stat == 'Engaged' then 
		  equip(E) 
		end 
	elseif E == REG then 
	  E = PDT 
	  add_to_chat(200, 'Gearswap: Engaged now PDT -') 
	    if stat == 'Engaged' then 
		  equip(E) 
		end 
	elseif E == PDT then 
	  E = MDT 
	  add_to_chat(200, 'Gearswap: Engaged now MDT -') 
	    if stat == 'Engaged' then 
		  equip(E) 
		end 
	elseif E == MDT then 
	  E = BDT 
	  add_to_chat(200, 'Gearswap: Engaged now BDT -') 
	    if stat == 'Engaged' then 
		  equip(E) 
		end 
	elseif E == BDT then 
	  E = DT 
	  add_to_chat(200, 'Gearswap: Engaged now DT -') 
	    if stat == 'Engaged' then 
		  equip(E) 
		end 
	elseif E == DT then 
	  E = DD 
	  add_to_chat(200, 'Gearswap: Engaged now DD') 
	    if stat == 'Engaged' then 
		  equip(E) 
		end 
	end 
  elseif command=='i'then
    if I == DD then 
	  I = ACC 
	  add_to_chat(200, 'Gearswap: Idle now Accuracy') 
	    if stat ~= 'Engaged' then 
		  equip(I) 
		end 
	elseif I == ACC then 
	  I = REG 
	  add_to_chat(200, 'Gearswap: Idle now Regen') 
	    if stat ~= 'Engaged' then 
		  equip(I) 
		end 
	elseif I == REG then 
	  I = PDT 
	  add_to_chat(200, 'Gearswap: Idle now PDT -') 
	    if stat ~= 'Engaged' then 
		  equip(I) 
		end 
	elseif I == PDT then 
	  I = MDT 
	  add_to_chat(200, 'Gearswap: Idle now MDT -') 
	    if stat ~= 'Engaged' then 
		  equip(I) 
		end 
	elseif I == MDT then 
	  I = BDT 
	  add_to_chat(200, 'Gearswap: Idle now BDT -') 
	    if stat ~= 'Engaged' then 
		  equip(I) 
		end 
	elseif I == BDT then 
	  I = DT 
	  add_to_chat(200, 'Gearswap: Idle now DT -') 
	    if stat ~= 'Engaged' then 
		  equip(I) 
		end 
	elseif I == DT then 
	  I = DD 
	  add_to_chat(200, 'Gearswap: Idle now DD') 
	    if stat ~= 'Engaged' then 
		  equip(I) 
		end 
	end 
    elseif command == 'f10' then 
      if A == false then 
	    A = S{7,8} 
		add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting') 
    elseif A == S{7,8} then 
	  A = S{7} 
	  add_to_chat(200, 'Gearswap: Auto Stun now TP') 
    elseif A == S{7} then 
	  A = S{8} 
	  add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting') 
    elseif A == S{8} then 
	  A = false 
	  add_to_chat(200, 'Gearswap: Auto Stun now Disabled') 
	end 
  end 
end 

function file_unload() 
  send_command('unbind !-') 
  send_command('unbind !=') 
  send_command('unbind f10') 
end 
