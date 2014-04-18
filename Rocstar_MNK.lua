
--Called when job change / load / reload file
function get_sets() pre = {} mid = {} 

--Key Binds
  send_command('bind !F1 gs c W') 
  send_command('bind !F2 gs c E') 
  send_command('bind !F3 gs c I') 
  send_command('bind !F4 gs c Auto_Stun') 
  send_command('bind !F5 gs c Auto_Swaps') 
  
--Macro Book set  
  send_command('input /macro book 2;wait .1;input /macro set 1') 

--Add to chat  
  add_to_chat(200, 'Gearswap: Weapon Skill DD ALT F1)') 
  add_to_chat(200, 'Gearswap: Auto Stun Disabled ALT F4 ') 
  add_to_chat(200, 'Gearswap: Auto Swaps Disabled ALT F5') 
  
--Job Ability sets
  pre['Hundred Fists'] = {legs="Melee hose +2"} 

  pre['Formless Strikes'] = {body="Melee Cyclas +2"} 

  pre['Chi Blast'] = {body="Melee crown +2"} 

  pre.Footwork = {feet="Tantra Gaiters +2"} 

  pre.Counterstance = {feet="Melee Gaiters +2"} 

  pre.Mantra = {feet="Melee Gaiters +2"} 

  pre['Curing Waltz III'] = {head="Uk'uxkaj Cap",
    body="Otronif Harness",hands="Otronif Gloves",
    ring1="Defending Ring",ring2="Dark Ring",
	back="Iximulew Cape",waist="Chuq'aba Belt",
    legs="Kaabnax Trousers",feet="Otronif Boots"} 

  pre['Curing Waltz II'] = set_combine(pre['Curing Waltz III']) 

  pre['Curing Waltz'] = set_combine(pre['Curing Waltz III']) 

  pre.Chakra = set_combine(pre['Curing Waltz III'], 
    {body="Anchorite's Cyclas +1",hands="Hesychast's Gloves +1"}) 

--Spellcasting set
  pre.cast = {head="Haruspex Hat",neck="Orunmila's Torque",
    ear2="Loquacious Earring",hands="Thaumas Gloves"} 
	
--Weapon Skill sets
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

  High_Attack = {ammo="Hagneia Stone",
    head="Uk'uxkaj Cap",neck="Asperity Necklace",
    ear1="Bladeborn Earring",ear2="Steelflash Earring",
	body="Manibozho Jerkin",hands="Manibozho Gloves",
    ring1="Epona's Ring",ring2="Rajas Ring",
	back="Atheling Mantle",waist="Cetl Belt",
    legs="Quiahuiz Leggings",feet="Manibozho Boots"} 

  High_ACC = {ammo="Honed Tathlum",
    head="Manibozho Beret",neck="Asperity Necklace",
    ear1="Bladeborn Earring",ear2="Steelflash Earring",
	body="Manibozho Jerkin",hands="Manibozho Gloves",
    ring1="Epona's Ring",ring2="Rajas Ring",
	back="Anchoret's Mantle",waist="Cetl Belt",
    legs="Manibozho Brais",feet="Manibozho Boots"} 
	
--Engaged / Idle sets
	
  Impetus_Up = set_combine(DD, {body="Tantra Cyclas +2"}) 
  
  Aftermath = set_combine(DD, {}) -- add Aftermath gear
  
  DD = {main="Oatixur",
    ammo="Honed Tathlum",head="Uk'uxkaj Cap",
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
    head="Otronif Mask",neck="Twilight Torque",
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

  max_REG = {head="Ocelomeh Headpiece +1",
    neck="Wiglen Gorget",body="Mel. Cyclas +2",
    ring1="Paguroidea Ring",ring2="Sheltered Ring"} 
	
  REG = {neck="Wiglen Gorget",body="Mel. Cyclas +2",
    ring1="Paguroidea Ring",ring2="Sheltered Ring"}

--Weapon Skill Variable
  W = High_Attack

--Engaged Variable
  E = DD

--Idle Variable
  I = PDT

--Auto Stun Variable
  Auto_Stun = false

--Auto Swaps Variable
  Auto_Swaps = true 

--Auto HP % swaps
  windower.register_event('hpp change', function(new_hpp, old_hpp) 
  --add_to_chat(200, '--HP '..new_hpp..' %--') 
	if new then 
      if player.status == 'Engaged' then 
	    if hpp < 75 then 
		  E = PDT 
		  equip(E) 
		else 
		  E = DD 
		  equip(E) 
		end
	  end 
	end 
  end)

--Auto Stun
  windower.register_event('action', function(Action_Stun) 
    if Auto_Stun ~= false then 
     local mob=windower.ffxi.get_mob_by_target('t')
      if Action_Stun.target_count ~= 0 then 
        if Action_Stun.targets[1].action_count ~= 0 then 
          if Action_Stun.targets[1].actions[1].message ~= 0 then 
            if (mob and mob.is_npc and mob.id == Action_Stun.actor_id) and 
		      Auto_Stun:contains(Action_Stun.category) then 
		      windower.send_command('input /ja "Violent Flourish" <t>') 
            end 
          end 
        end 
      end 
    end 
  end) 

--Auto Swaps
  windower.register_event('action', function(Action_Swap) 
    local mob=windower.ffxi.get_mob_by_target('t') 
    if Auto_Swaps ~= false then 
      if Action_Swap.target_count ~= 0 then 
        if Action_Swap.targets[1].action_count ~= 0 then 
          if Action_Swap.targets[1].actions[1].message ~= 0 then 
            if (mob and mob.is_npc and mob.id == Action_Swap.actor_id) and 
              S{7}:contains(Action_Swap.category) then 
	    	  equip(DT) 
		    end 
          end 
	    end 
      end 
    elseif Action_Swap.target_count ~= 0 then 
      if Action_Swap.targets[1].action_count ~= 0 then 
        if Action_Swap.targets[1].actions[1].message ~= 0 then 
          if (mob and mob.is_npc and mob.id == Action_Swap.actor_id) and 
            S{11}:contains(Action_Swap.category) then 
            equip(E) 
		  end 
	    end 
	  end 
    elseif Action_Swap.target_count ~= 0 then 
      if Action_Swap.targets[1].action_count ~= 0 then 
        if Action_Swap.targets[1].actions[1].message ~= 0 then 
          if (mob and mob.is_npc and mob.id == Action_Swap.actor_id) and 
            S{8}:contains(Action_Swap.category) then 
            equip(MDT) 
		  end 
	    end 
	  end 
    elseif Action_Swap.target_count ~= 0 then 
      if Action_Swap.targets[1].action_count ~= 0 then 
        if Action_Swap.targets[1].actions[1].message ~= 0 then 
          if (mob and mob.is_npc and mob.id == Action_Swap.actor_id) and 
            S{4}:contains(Action_Swap.category) then 
            equip(E) 
          end 
        end 
      end
    end 
  end)
end 

--Called when job change / unload / reload file
function file_unload() 
  send_command('unbind !F1') 
  send_command('unbind !F2') 
  send_command('unbind !F3') 
  send_command('unbind !F4') 
  send_command('unbind !F5') 
end 

function precast(spell) 
  if spell.type == 'WeaponSkill' then  
    equip(W, pre[spell.english]) 
  elseif pre[spell.english] then 
	equip(pre[spell.english]) 
  elseif spell.english == 'Spectral Jig' and buffactive.sneak then 
    send_command('cancel 71') 
  elseif spell.type == 'Step' or spell.type == 'Flourish1' then 
    equip(ACC) 
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
  elseif new == 'Idle' then 
    if player.hpp <= 90 then
	  I = max_REG 
	else
	  I = REG 
	end 
    equip(I) 
  end 
end 

function buff_change(buff, gain)
  if buff == 'Impetus' then 
    if gain then 
      E = Impetus_Up 
	  equip(E) 
    else
      E = DD 
	  equip(E) 
	end
  elseif S{"aftermath: lv.3", "aftermath: lv.2", "aftermath: lv.1"}:contains(buff) then 
    if gain then 
	  E = Aftermath 
	  equip(E) 
	else 
	  E = DD 
	  equip(E)
	end
  end 
end 

function self_command(command) 
  if command == 'E'then 
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

  elseif command == 'W' then 
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

  elseif command == 'I' then 
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
 
  elseif command == 'Auto_Swaps' then 
    if Auto_Swaps == true then 
	  Auto_Swaps = false 
	  add_to_chat(200, 'Gearswap: Auto Swaps now Disabled')
    elseif Auto_Swaps == false then 
	  Auto_Swaps = true 
	  add_to_chat(200, 'Gearswap: Auto Swaps now Enabled') 
	end

  elseif command == 'Auto_Stun' then 
    if Auto_Stun == false then 
	  Auto_Stun = S{7,8} 
	  add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting')
    elseif Auto_Stun == S{7,8} then 
	  Auto_Stun = S{7} 
	  add_to_chat(200, 'Gearswap: Auto Stun now TP')
    elseif Auto_Stun == S{7} then 
	  Auto_Stun = S{8} 
	  add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting')
    elseif Auto_Stun == S{8} then 
	  Auto_Stun = false 
	  add_to_chat(200, 'Gearswap: Auto Stun now Disabled') 
	end 
  end 
end
