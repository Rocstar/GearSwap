function get_sets() 
  send_command('bind !F1 gs c w') 
  
  send_command('bind !F2 gs c e') 
  
  send_command('bind !F3 gs c i') 
  
  send_command('bind !F4 gs c s') 
  
  send_command('input /macro book 7;wait .1;input /macro set 1') 
 
  p = {} 
  
  p.waltz = {head="Otronif Mask",body="Otronif Harness",
    hands="Otronif Gloves",ring1="Defending Ring",ring2="Dark Ring",
	back="Iximulew Cape",waist="Chuq'aba Belt",legs="Kaabnax Trousers",
	feet="Otronif Boots"}

  p['Curing Waltz II'] = p.waltz 

  p['Curing Waltz III'] = p.waltz 

  p.Chakra = set_combine(p.waltz, {body="Anchorite's Cyclas +1",hands="Hesychast's Gloves +1"}) 
  
  p['Hundred Fists'] = {legs="Melee hose +2"} 

  p['Formless Strikes'] = {body="Melee Cyclas +2"} 

  p['Chi Blast'] = {body="Melee crown +2"} 

  p.Footwork = {feet="Tantra Gaiters +2"} 

  p.Counterstance = {feet="Melee Gaiters +2"} 

  p.Mantra = {feet="Melee Gaiters +2"} 

  p.light_ws = {neck="Light Gorget",waist="Light Belt"}
  
  p['Shijin Spiral'] = p.light_ws
	
  p['Victory Smite'] = p.light_ws 

  p['Final Heaven'] = p.light_ws 

  p["Ascetic's Fury"] = p.light_ws
  
  p.Combo = {}

  Attack = {ammo="Honed Tathlum",head="Lithelimb Cap",
    neck="Asperity Necklace",ear1="Bladeborn Earring",
    ear2="Steelflash Earring",body="Manibozho Jerkin",
    hands="Manibozho Gloves",ring1="Epona's Ring",
    ring2="Rajas Ring",back="Atheling Mantle",
    waist="Cetl Belt",legs="Manibozho Brais",
    feet="Manibozho Boots"} 

  ACC = {ammo="Honed Tathlum",
    head="Manibozho Beret",neck="Asperity Necklace",
    ear1="Bladeborn Earring",ear2="Steelflash Earring",
    body="Manibozho Jerkin",hands="Manibozho Gloves",
    ring1="Epona's Ring",ring2="Rajas Ring",
    back="Anchoret's Mantle",waist="Cetl Belt",
    legs="Manibozho Brais",feet="Manibozho Boots"} 
  
  Critical_Hit_Damage = {head="Espial Cap",
    ear1="Bladeborn Earring",ear2="Steelflash Earring",
    body="Espial Gambison",hands="Espial Bracers",
    ring1="Epona's Ring",ring2="Rajas Ring",
    back="Atheling Mantle",waist="Cetl Belt",
    legs="Espial Hose",feet="Espial Socks"} 
  
  DD = {main="Maochinoli",
    ammo="Honed Tathlum",head="Lithelimb Cap",
    neck="Wiglen Gorget",ear1="Bladeborn Earring",
    ear2="Steelflash Earring",body="Manibozho Jerkin",
    hands="Otronif Gloves",ring1="Epona's Ring",
    ring2="Cho'j Band",back="Atheling Mantle",
    waist="Cetl Belt",legs="Manibozho Brais",
    feet="Manibozho Boots"} 

  MDT = {head="Ejekamal Mask",
    neck="Twilight Torque",body="Otronif Harness",
    hands="Otronif Gloves",ring1="Defending Ring",
    ring2="Dark Ring",back="Mollusca Mantle",
    legs="Kaabnax Trousers",feet="Otronif Boots"} 

  PDT = {main="Maochinoli",
    head="Otronif Mask",neck="Wiglen Gorget",
    body="Otronif Harness",hands="Otronif Gloves",
    ring1="Defending Ring",ring2="Dark Ring",
    back="Iximulew Cape",waist="Black Belt",
    legs="Otronif Brais",feet="Otronif Boots"} 

  DT = {main="Maochinoli",
    head="Otronif Mask",neck="Twilight Torque",
    body="Otronif Harness",hands="Otronif Gloves",
    ring1="Defending Ring",ring2="Dark Ring",
    back="Mollusca Mantle",waist="Black Belt",
    legs="Otronif Brais",feet="Otronif Boots"} 

  max_reg = set_combine(E, {head="Ocelomeh Headpiece +1",
    neck="Wiglen Gorget",body="Mel. Cyclas +2",
    ring1="Paguroidea Ring",ring2="Sheltered Ring"}) 
	
  normal_reg = set_combine(E, {neck="Wiglen Gorget",
    ring1="Paguroidea Ring",ring2="Sheltered Ring"}) 

  W = Attack -- Weaponskill set to High Attack. //gs c w

  E = DD -- Engaged set to DD. //gs c e pdt, //gs c e dd (ect...)
  
  I = normal_reg -- Idle set to low Regen. increases with less hp after status change (80%)
  
  s = false -- //gs c s (auto stun disabled)
  
  Belt_Gorget = false --Disabled WS Belt Gorget. to toggle //gs c b 
  
  Sheltered_Ring = false --Disabled Sheltered Ring while Engaged with no Pro/Shell. to toggle //gs c r 
  
  pro = buffactive['Protect']
  
  shell = buffactive['Shell']
  
end 

function precast(spell) 
  if spell.type == 'WeaponSkill' then 
    if p[spell.english] then 
      if Belt_Gorget ~= false then 
        equip(W, p[spell.english]) 
      else 
        equip(W) 
      end 
    end
  elseif spell.type == "JobAbility" then 
    if p[spell.english] then 
      equip(p[spell.english]) 
    end	  
  elseif spell.english == 'Spectral Jig' and buffactive.sneak then 
    send_command('cancel 71') 
  elseif windower.wc_match(spell.type, 'Step|Flourish1') then 
    equip(ACC) 
  end 
end 

function aftercast(spell) 
  if player.status == 'Engaged' then 
    if Sheltered_Ring ~= false then 
      if pro and shell then 
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
    if Sheltered_Ring ~= false then 
      if pro and shell then 
        equip(E)
      else
        equip(E,({ring2="Sheltered Ring"})) 
      end 
    else 
      equip(E)
    end
  elseif new == 'Idle' then 
    if player.hpp <= 80 then
      I = max_reg 
    else
      I = normal_reg 
    end 
    equip(I) 
  end 
end 

windower.register_event('action', function(_) 
  if s ~= false then 
    local m = windower.ffxi.get_mob_by_target('t')
    if _.target_count ~= 0 then 
      if _.targets[1].action_count ~= 0 then 
        if _.targets[1].actions[1].message ~= 0 then 
          if (m and m.is_npc and m.id == _.actor_id) and 
            s:contains(_.category) then 
            windower.send_command('input /ja "Violent Flourish" <t>') 
          end 
        end 
      end 
    end 
  end 
end) 

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
      W = ACC
      add_to_chat(200, 'Gearswap: Weapon Skill now Accuracy') 
      equip(W)
    elseif W == ACC then 
      W = Attack
      add_to_chat(200, 'Gearswap: Weapon Skill now Damage Dealer') 
      equip(W)
    elseif W == Attack then 
      W = Critical_Hit_Damage
      add_to_chat(200, 'Gearswap: Weapon Skill now Crit. Damage') 
      equip(W) 
    end 
	
--[[ Sheltered Ring while Engaged ]]--	
  elseif command == 'r' then 
    if Sheltered_Ring == false then 
      Sheltered_Ring = true
      add_to_chat(200, 'Gearswap: Using Sheltered Ring while Engaged if no Pro + Shell') 
    elseif Sheltered_Ring == true then 
      Sheltered_Ring = false
      add_to_chat(200, 'Gearswap: Disabled Sheltered Ring while Engaged if no Pro + Shell') 
    end 
	
--[[ Weaponskill Belts Gorget ]]--	
  elseif command == 'b' then 
    if Belt_Gorget == false then 
      Belt_Gorget = true
      add_to_chat(200, 'Gearswap: Using WS Belt and Gorget') 
    elseif Belt_Gorget == true then 
      Belt_Gorget = false
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
  elseif command == 's' then 
    if s == false then 
      s = S{7,8} 
      add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting') 
    elseif s == S{7,8} then 
      s = S{7} 
      add_to_chat(200, 'Gearswap: Auto Stun now TP') 
    elseif s == S{7} then 
      s = S{8} 
      add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting') 
    elseif s == S{8} then 
      s = false 
      add_to_chat(200, 'Gearswap: Auto Stun now Disabled') 
    end 
	
--[[ Typed commands //gs c e pdt, //gs c e dd (ect...) ]]-- 	

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

function file_unload() 
  send_command('unbind !F1') 
  
  send_command('unbind !F2') 
  
  send_command('unbind !F3') 
  
  send_command('unbind !F4') 
end 
