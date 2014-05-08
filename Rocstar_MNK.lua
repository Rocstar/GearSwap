function file_unload() 
  send_command('unbind !F1') 
  
  send_command('unbind !F2') 
  
  send_command('unbind !F3') 
  
  send_command('unbind !F4') 
end 

function get_sets() 
  send_command('bind !F1 gs c w') 
  
  send_command('bind !F2 gs c e') 
  
  send_command('bind !F3 gs c i') 
  
  send_command('bind !F4 gs c s') 
  
  send_command('input /macro book 2;wait .1;input /macro set 1') 
  
  add_to_chat(200, 'Gearswap: Loaded your MNK Lua file!') 
  
  add_to_chat(200, 'Gearswap: Engaged PDT. ALT F2, //gs c e pdt, //gs c e dd (ect..)') 
  
  add_to_chat(200, 'Gearswap: Auto Stun Disabled. ALT F4, //gs c s') 

  pre = {} 
  
  pre['Hundred Fists'] = {legs="Melee hose +2"} 

  pre['Formless Strikes'] = {body="Melee Cyclas +2"} 

  pre['Chi Blast'] = {body="Melee crown +2"} 

  pre.Footwork = {feet="Tantra Gaiters +2"} 

  pre.Counterstance = {feet="Melee Gaiters +2"} 

  pre.Mantra = {feet="Melee Gaiters +2"} 

  pre['Curing Waltz III'] = {head="Otronif Mask",
    body="Otronif Harness",hands="Otronif Gloves",
    ring1="Defending Ring",ring2="Dark Ring",
	back="Iximulew Cape",waist="Chuq'aba Belt",
    legs="Kaabnax Trousers",feet="Otronif Boots"} 

  pre['Curing Waltz II'] = set_combine(pre['Curing Waltz III']) 

  pre['Curing Waltz'] = set_combine(pre['Curing Waltz III']) 

  pre.Chakra = set_combine(pre['Curing Waltz III'], 
    {body="Anchorite's Cyclas +1",hands="Hesychast's Gloves +1"}) 

  pre.cast = {head="Haruspex Hat",neck="Orunmila's Torque",
    ear2="Loquacious Earring",hands="Thaumas Gloves"} 
	
  pre["Victory Smite"] = {neck="Light Gorget",waist="Light Belt"} 

  pre["Final Heaven"] = {neck="Light Gorget",waist="Light Belt"} 

  pre["Ascetic's Fury"] = {neck="Light Gorget",waist="Light Belt"} 

  pre["Shijin Spiral"] = {neck="Light Gorget",waist="Light Belt"} 
  
  Critical_Hit_Damage = {head="Espial Cap",
    ear1="Bladeborn Earring",ear2="Steelflash Earring",
	body="Espial Gambison",hands="Espial Bracers",
	ring1="Epona's Ring",ring2="Rajas Ring",
	back="Atheling Mantle",waist="Cetl Belt",
	legs="Espial Hose",feet="Espial Socks"} 

  High_Attack = {ammo="Honed Tathlum",head="Manibozho Beret",
	neck="Asperity Necklace",ear1="Bladeborn Earring",
	ear2="Steelflash Earring",body="Manibozho Jerkin",
	hands="Manibozho Gloves",ring1="Epona's Ring",
	ring2="Rajas Ring",back="Atheling Mantle",
	waist="Cetl Belt",legs="Manibozho Brais",
	feet="Manibozho Boots"} 

  High_ACC = {ammo="Honed Tathlum",
    head="Manibozho Beret",neck="Asperity Necklace",
    ear1="Bladeborn Earring",ear2="Steelflash Earring",
	body="Manibozho Jerkin",hands="Manibozho Gloves",
    ring1="Epona's Ring",ring2="Rajas Ring",
	back="Anchoret's Mantle",waist="Cetl Belt",
    legs="Manibozho Brais",feet="Manibozho Boots"} 
  
  DD = {main="Oatixur",
    ammo="Honed Tathlum",head="Manibozho Beret",
	neck="Asperity Necklace",ear1="Bladeborn Earring",
	ear2="Steelflash Earring",body="Manibozho Jerkin",
	hands="Manibozho Gloves",ring1="Epona's Ring",
	ring2="Rajas Ring",back="Atheling Mantle",
	waist="Cetl Belt",legs="Manibozho Brais",
	feet="Manibozho Boots"} 
	
  ACC = {head="Manibozho Beret",
    ammo="Honed Tathlum",body="Manibozho Jerkin",
	hands="Manibozho Gloves",ring1="Ulthalam's Ring",
	back="Anchoret's Mantle",legs="Manibozho Brais",
	feet="Manibozho Boots"} 

  MDT = {head="Ejekamal Mask",
    neck="Twilight Torque",body="Otronif Harness",
	hands="Otronif Gloves",ring1="Defending Ring",
    ring2="Dark Ring",back="Mollusca Mantle",
	legs="Kaabnax Trousers",feet="Otronif Boots"} 

  PDT = {main="Oatixur",
    head="Otronif Mask",neck="Wiglen Gorget",
    body="Otronif Harness",hands="Otronif Gloves",
	ring1="Defending Ring",ring2="Dark Ring",
    back="Iximulew Cape",waist="Black Belt",
	legs="Otronif Brais",feet="Otronif Boots"} 

  DT = {main="Oatixur",
    head="Otronif Mask",neck="Twilight Torque",
	body="Otronif Harness",hands="Otronif Gloves",
    ring1="Defending Ring",ring2="Dark Ring",
	back="Mollusca Mantle",waist="Black Belt",
	legs="Otronif Brais",feet="Otronif Boots"} 

  max_REG = set_combine(E, {head="Ocelomeh Headpiece +1",
    neck="Wiglen Gorget",body="Mel. Cyclas +2",
    ring1="Paguroidea Ring",ring2="Sheltered Ring"}) 
	
  REG = set_combine(E, {neck="Wiglen Gorget",
    ring1="Paguroidea Ring",ring2="Sheltered Ring"}) 

  W = High_Attack -- Weaponskill set to High Attack. //gs c w

  E = DD -- Engaged set to DD. //gs c e pdt, //gs c e dd (ect...)
  
  I = REG -- Idle set to low Regen. increases with less hp after status change threshold 80%
  
  A = false --Disabled Auto Action Stun. to toggle //gs c a 
  
  B = false --Disabled WS Belt Gorget. to toggle //gs c b 
  
  R = false --Disabled Sheltered Ring while Engaged with no Pro/Shell. to toggle //gs c r   
end 

windower.register_event('action', function(Action_Stun) 
  if A ~= false then 
   local mob=windower.ffxi.get_mob_by_target('t')
    if Action_Stun.target_count ~= 0 then 
      if Action_Stun.targets[1].action_count ~= 0 then 
        if Action_Stun.targets[1].actions[1].message ~= 0 then 
          if (mob and mob.is_npc and mob.id == Action_Stun.actor_id) and 
		    A:contains(Action_Stun.category) then 
		    windower.send_command('input /ja "Violent Flourish" <t>') 
          end 
        end 
      end 
    end 
  end 
end) 

function precast(spell) 
  if spell.type == 'WeaponSkill' then 
    if pre[spell.english] then 
	  if B == true then -- WS Belts/Gorget
        equip(W, pre[spell.english]) 
	  else 
	    equip(W) 
	  end 
	end
  elseif spell.type == "JobAbility" then 
    if pre[spell.english] then 
      equip(pre[spell.english]) 
    end	  
  elseif spell.english == 'Spectral Jig' and buffactive.sneak then 
    send_command('cancel 71') 
  elseif spell.type == 'Step' or spell.type == 'Flourish1' then 
    equip(ACC) 
  end 
end 

function aftercast(spell) 
  if player.status == 'Engaged' then 
    if R == true then -- sheltered ring while engaged
      if buffactive['Shell'] and buffactive['Protect'] then 
        equip(E)
	  else
	    equip(E,({ring2="Sheltered Ring"})) 
	  end 
	else 
	  equip(E)
	end
  else 
    equip(I) 
  end 
end

function status_change(new,old) 
  if new == 'Engaged' then 
    if R == true then -- sheltered ring while engaged
      if buffactive['Shell'] and buffactive['Protect'] then 
        equip(E)
	  else
	    equip(E,({ring2="Sheltered Ring"})) 
	  end 
	else 
	  equip(E)
	end
  elseif new == 'Idle' then 
    if player.hpp <= 80 then
	  I = max_REG 
	else
	  I = REG 
	end 
    equip(I) 
  end 
end 

function self_command(command) 
--[[ Toggled commands. or type //gs c e, //gs c i (ect...). ]]-- 
--[[ Engaged ]]-- 
  if command == 'e' then 
    if E == DD then 
	  E = PDT 
	  add_to_chat(200, 'Gearswap: Engaged now Physical Damage Taken -') 
	  equip(E)
    elseif E == PDT then 
      E = MDT 
	  add_to_chat(200, 'Gearswap: Engaged now Magic Damage Taken -') 
	  equip(E)
    elseif E == MDT then 
      E = DT 
	  add_to_chat(200, 'Gearswap: Engaged now Damage Taken -') 
	  equip(E)
    elseif E == DT then 
      E = ACC 
	  add_to_chat(200, 'Gearswap: Engaged now Accuracy') 
	  equip(E)
    elseif E == ACC then 
      E = DD 
	  add_to_chat(200, 'Gearswap: Engaged now Damage Dealer') 
	  equip(E) 
    end 
	
--[[ Weaponskill ]]-- 
  elseif command == 'w' then 
    if W == Critical_Hit_Damage then 
	  W = High_ACC
      add_to_chat(200, 'Gearswap: Weapon Skill now Accuracy') 
	  equip(W)
    elseif W == High_ACC then 
	  W = High_Attack
      add_to_chat(200, 'Gearswap: Weapon Skill now Damage Dealer') 
	  equip(W)
    elseif W == High_Attack then 
	  W = Critical_Hit_Damage
      add_to_chat(200, 'Gearswap: Weapon Skill now Crit. Damage') 
	  equip(W) 
	end 
	
--[[ Sheltered Ring while Engaged ]]--	
  elseif command == 'r' then 
    if R == false then 
      R = true
      add_to_chat(200, 'Gearswap: Using Sheltered Ring while Engaged if no Pro + Shell') 
    elseif R == true then 
      R = false
      add_to_chat(200, 'Gearswap: Disabled Sheltered Ring while Engaged if no Pro + Shell') 
    end 
	
--[[ Weaponskill Belts Gorget ]]--	
  elseif command == 'b' then 
    if B == false then 
      B = true
      add_to_chat(200, 'Gearswap: Using WS Belt and Gorget') 
    elseif B == true then 
      B = false
      add_to_chat(200, 'Gearswap: Disabled WS Belt and Gorget') 
    end 

--[[ Idle ]]-- 
  elseif command == 'i' then 
    if I == REG then 
	  I = PDT 
	  add_to_chat(200, 'Gearswap: Idle now Physical Damage Taken -') 
	  equip(I)
    elseif I == PDT then 
	  I = MDT 
	  add_to_chat(200, 'Gearswap: Idle now Magic Damage Taken -') 
	  equip(I)
    elseif I == MDT then 
	  I = DT 
	  add_to_chat(200, 'Gearswap: Idle now Damage Taken -') 
	  equip(I)
    elseif I == DT then 
	  I = REG 
	  add_to_chat(200, 'Gearswap: Idle now Regen') 
	  equip(I) 
	end

--[[ Auto Stun ]]-- 
  elseif command == 'a' then 
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
	
--[[ Typed commands //gs c e pdt, //gs c e dd (ect...) ]]-- 	
--[[ hpp_event ]]-- 	
  elseif command == 'hp' then 
    if hpp_event == true then 
	  hpp_event = false 
	  add_to_chat(200, 'Gearswap: hpp_event now Disabled')
	elseif hpp_event == false then 
	  hpp_event = true 
	  add_to_chat(200, 'Gearswap: hpp_event now enabled')
	end 

  elseif command == 'e dd' then 
    E = DD 
    equip(E) 
    add_to_chat(200, 'Gearswap: engaged now DD') 
  elseif command == 'e acc' then 
    E = ACC 
    equip(E) 
    add_to_chat(200, 'Gearswap: engaged now ACC') 
  elseif command == 'e pdt' then 
    E = PDT 
    equip(E) 
    add_to_chat(200, 'Gearswap: engaged now PDT') 
  elseif command == 'e mdt' then 
    E = mdt 
    equip(E) 
    add_to_chat(200, 'Gearswap: engaged now MDT') 
  elseif command == 'e dt' then 
    E = DT 
    equip(E) 
    add_to_chat(200, 'Gearswap: engaged now DT') 
	
  end 
end
