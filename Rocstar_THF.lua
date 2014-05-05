function get_sets() 

  pre = {} 
  
  --[[ 
  add_to_chat(200, 'Gearswap: Th Tag with Steps/Flourish (ALT F8)') 
  add_to_chat(200, 'Gearswap: WS Belt/Gorget Disabled (ALT F9)') 
  add_to_chat(200, 'Gearswap: Auto Stun Disabled (ALT F10)') 
  ]]--
  
  send_command('@input /macro book 6;wait .1;input /macro set 1') 

--Key Binds
  send_command('bind !f8 gs c TH') 
  send_command('bind !f9 gs c WS') 
  send_command('bind !f10 gs c auto stun') 
  
--Job Ability
  pre.Mug = {head="Assassin's Bonnet +2"} 
  pre['Perfect Dodge'] = {hands="Plunderer's Armlets"} 
  pre.Feint = {legs="Assassin's Culottes +2"} 
  pre["Assassin's Charge"] = {feet="Assassin's Poulaines +2"} 
  pre.Conspirator = {body="Raider's Vest +2"} 
  pre.Collaborator = {head="Raider's Bonnet +2"} 
  pre.Accomplice = set_combine(pre.Collaborator) 
  pre.Despoil = {legs="Raider's Culottes +2",feet="Raider's Poulaines +2"} 
  pre.Hide = {body="Pillager's Vest +1"} 
  pre.Flee = {feet="Pillager's Poulaines"} 
  pre['Curing Waltz'] = {head="Uk'uxkaj Cap",body="Iuitl Vest",
    hands="Buremte Gloves",back="Iximulew Cape",
    waist="Chuq'aba Belt",legs="Kaabnax Trousers",
    feet="Iuitl Gaiters"} 
  pre['Curing Waltz II'] = set_combine(pre['Curing Waltz']) 
  pre['Curing Waltz III'] = set_combine(pre['Curing Waltz']) 
  pre.Steal = {head="Assassin's Bonnet +2",hands="Pillager's Armlets +1",
    legs="Pillager's Culottes +1",feet="Pillager's Poulaines +1"} 
  	
-- Dagger Weapon Skills
  pre.Exenterator = {neck="Breeze Gorget",waist="Breeze Belt"} 

  pre["Rudra's Storm"] = {neck="Shadow Gorget",waist="Shadow Belt"} 

  pre.Evisceration = {neck="Shadow Gorget",waist="Shadow Belt"} 

  pre['Mandalic Stab'] = {neck="Shadow Gorget",waist="Shadow Belt"} 

  pre['Shark Bite'] = {neck="Breeze Gorget",waist="Breeze Belt"} 
  
  pre['Aeolian Edge'] = {neck="Breeze Gorget",waist="Breeze Belt"} 

  pre['Dancing Edge'] = {neck="Breeze Gorget",waist="Breeze Belt"} 

  pre['Mercy Stroke'] = {neck="Shadow Gorget",waist="Shadow Belt"} 
  
-- Variables 
  DD = {main="Izhiikoh",sub="Sandung",
    range="Raider's Bmrng.",head="Uk'uxkaj Cap",
    neck="Asperity Necklace",ear1="Bladeborn Earring",
    ear2="Steelflash Earring",body="Manibozho Jerkin",
    hands="Manibozho Gloves",ring1="Epona's Ring",
    ring2="Rajas Ring",back="Atheling Mantle",
    waist="Cetl Belt",legs="Manibozho Brais",
    feet="Manibozho Boots"} 

  ACC = {head="Manibozho Beret",neck="Love Torque",
    body="Manibozho Jerkin",hands="Buremte Gloves",
	back="Canny Cape",waist="Dynamic Belt",
	legs="Manibozho Brais",feet="Manibozho Boots"}
 
  REG = {neck="Wiglen Gorget",ring1="Paguroidea Ring",
    ring2="Sheltered Ring",back="Iximulew Cape",
	feet="Pillager's Poulaines"} 

  PDT = {head="Iuitl Headgear",neck="Twilight Torque",
    ear1="Dudgeon Earring",ear2="Heartseeker Earring",
    body="Iuitl Vest",hands="Iuitl Wristbands",
	ring1="Dark Ring",ring2="Defending Ring",
    back="Mollusca Mantle",waist="Flume Belt",
	legs="Iuitl Tights",feet="Iuitl Gaiters"} 

  MDT = {head="Ejekamal Mask",neck="Twilight Torque",
    body="Iuitl Vest",hands="Buremte Gloves",
    back="Mollusca Mantle",legs="Kaabnax Trousers",
    feet="Iuitl Gaiters"} 

  DT = set_combine(DD, {neck="Twilight Torque",ring1="Defending Ring",
    ring2="Dark Ring",back="Mollusca Mantle",
    waist="Flume Belt"}) 
	
  step = set_combine(ACC, {hands="Plunderer's Armlets",feet="Raider's Poulaines +2"}) 
 	
  full = set_combine(DD, {main="Sandung",sub="Thief's Knife",
    hands="Plunderer's Armlets",feet="Raider's Poulaines +2"}) 
	
  WS = {head="Uk'uxkaj Cap",
    neck="Asperity Necklace",ear1="Bladeborn Earring",
    ear2="Steelflash Earring",body="Manibozho Jerkin",
    hands="Manibozho Gloves",ring1="Epona's Ring",
    ring2="Rajas Ring",back="Atheling Mantle",
    waist="Cetl Belt",legs="Manibozho Brais",
    feet="Manibozho Boots"} 
  
  SA = {head="Uk'uxkaj Cap",hands="Raider's Armlets +2",
    feet="Iuitl Gaiters"}
	
  TA = {hands="Pillager's Armlets +1",back="Canny Cape",
    legs="Kaabnax Trousers",feet="Iuitl Gaiters"}
	
  SATA = set_combine(TA, {}) 
  
  I = REG 
    
  E = DD 
  
  TH = step 
  
  aftercast_engaged = E
  
  SA_TA_WS = WS 
  
  use_belts = false 
  
  Auto_Stun = false 
  
end

function file_unload() 
  send_command('unbind !f8')
  send_command('unbind !f9')
  send_command('unbind !f10')  
end 

function precast(spell) 
  if spell.type == "JobAbility" then 
    if pre[spell.english] then 
      equip(pre[spell.english]) 
	end
  elseif spell.type == "WeaponSkill" then 
    if buffactive[S{'Trick Attack','Sneak Attack'}] then 
      if use_belts == true then 
	    equip(SA_TA_WS, pre[spell.english]) 
	  else
        equip(SA_TA_WS) 
	  end 
    else 
      equip(SA_TA_WS) 
	end 
  elseif spell.english == 'Spectral Jig' and buffactive.sneak then 
    send_command('cancel 71') 
  elseif windower.wc_match(spell.type, 'Step|Flourish1') then 
    if TH == step then 
      equip(TH) 
	else 
	  equip(ACC) 
	end
  end 
end 

function aftercast(spell) 
  if player.status == 'Engaged' then 
    equip(aftercast_engaged) 
  else 
    equip(I) 
  end 
end 

function status_change(new,old) 
  if new == 'Engaged' then 
    equip(E) 
  else 
    equip(I) 
  end 
end 

function buff_change(buff, gain) 

--[[ Feint ]]-- 
  if buff == 'Feint' then 
    if not gain then 
	  aftercast_engaged = E
        if player.status == 'Engaged' then 
          equip(E) 
	    else 
	      equip(I) 
	    end 
      else 
	    aftercast_engaged = pre.Feint
        equip(pre.Feint) 
	  end 
	
--[[ Sneak Attack ]]-- 	
  elseif buff == 'Sneak Attack' then 
    if gain then 
	  if buffactive['Trick Attack'] then 
		SA_TA_WS = SATA 
	    aftercast_engaged = SATA 
        equip(SA_TA_WS) 
	  else 
		SA_TA_WS = SA 
	    aftercast_engaged = SA
		equip(SA_TA_WS) 
	  end
	elseif not gain then 
	  aftercast_engaged = E
	  SA_TA_WS = WS
        if player.status == 'Engaged' then 
          equip(E) 
	    else 
	      equip(I) 
	    end 
	end 
	
--[[ Trick Attack ]]--	
  elseif buff == 'Trick Attack' then 
    if gain then 
	  if buffactive['Sneak Attack'] then 
		SA_TA_WS = SATA 
	    aftercast_engaged = SATA
        equip(SA_TA_WS) 
	  else 
		SA_TA_WS = TA 
	    aftercast_engaged = TA
		equip(SA_TA_WS) 
	  end
	elseif not gain then 
      aftercast_engaged = E
	  SA_TA_WS = WS
	    if player.status == 'Engaged' then 
          equip(E) 
	    else 
	      equip(I) 
	    end 
	end 
	
  end
end 

function self_command(command) 
  if command == 'auto stun' then 
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
	
  elseif command == 'TH' then 
    if S{false, full}:contains(TH) then 
      TH = step
      aftercast_engaged = DD
	  E = DD
	  equip(E) 
      add_to_chat(200, 'Gearswap: engaged now DD, TH Tag with Steps/Flourish') 
    elseif TH == step then 
      TH = full
      aftercast_engaged = full
	  E = full
	  equip(E) 
	  add_to_chat(200, 'Gearswap: engaged now Full Time TH') 
	end 
	
  elseif command == 'WS' then 
    if use_belts == false then 
      use_belts = true
      add_to_chat(200, 'Gearswap: Using WS Belt and Gorget') 
    elseif use_belts == true then 
      use_belts = false
      add_to_chat(200, 'Gearswap: Disabled WS Belt and Gorget') 
	end 
	
  elseif command == 'PDT' then 
    TH = false
    aftercast_engaged = PDT
    E = PDT 
	equip(E) 
    add_to_chat(200, 'Gearswap: engaged now PDT') 
	
  elseif command == 'MDT' then 
    TH = false
    aftercast_engaged = MDT
    E = MDT 
	equip(E) 
    add_to_chat(200, 'Gearswap: engaged now MDT') 
	
  end 
end 

windower.register_event('action', function(Action_Stun) 
  if Auto_Stun ~= false then 
    local mob = windower.ffxi.get_mob_by_target('t')
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
