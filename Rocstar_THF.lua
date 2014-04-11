function get_sets() JA = {} WS = {} WS.SA = {} WS.TA = {} WS.SATA = {} Disabled = {} Full_Time = {} 

  add_to_chat(200, 'Gearswap: Auto Stun Disabled (ALT F9) TH Mode Tag (F9)') 

  send_command('@input /macro book 4;wait .1;input /macro set 1') 

--Key Binds
  send_command('bind f9 gs c TH_Mode') 
  send_command('bind !f9 gs c Auto_Stun') 
  
--Job Ability
  JA.Mug = {head="Assassin's Bonnet +2"} 
  JA['Perfect Dodge'] = {hands="Plunderer's Armlets"} 
  JA.Feint = {legs="Assassin's Culottes +2"} 
  JA["Assassin's Charge"] = {feet="Assassin's Poulaines +2"} 
  JA.Conspirator = {body="Raider's Vest +2"} 
  JA['Sneak Attack'] = {hands="Raider's Armlets +2"} 
  JA.Collaborator = {head="Raider's Bonnet +2"} 
  JA.Accomplice = set_combine(JA.Collaborator) 
  JA.Despoil = {legs="Raider's Culottes +2",feet="Raider's Poulaines +2"} 
  JA.Hide = {body="Pillager's Vest +1"} 
  JA['Trick Attack'] = {hands="Pillager's Armlets +1"} 
  JA.Flee = {feet="Pillager's Poulaines +1"} 
  JA['Curing Waltz III'] = JA['Curing Waltz'] 
  JA['Curing Waltz II'] = JA['Curing Waltz'] 
  JA['Curing Waltz'] = {head="Uk'uxkaj Cap",body="Iuitl Vest",
    hands="Buremte Gloves",back="Iximulew Cape",
	waist="Chuq'aba Belt",legs="Kaabnax Trousers",
	feet="Iuitl Gaiters"} 
  JA.Steal = {head="Assassin's Bonnet +2",hands="Pillager's Armlets +1",
    legs="Pillager's Culottes +1",feet="Pillager's Poulaines +1"} 
	
--Weapon Skills
  WS.Exenterator = {head="Uk'uxkaj Cap",legs="Quiahuiz Leggings",feet="Assassin's Poulaines +2"} 
  WS.SA.Exenterator = set_combine(WS.Exenterator,{hands="Raider's Armlets +2"}) 
  WS.TA.Exenterator = set_combine(WS.Exenterator,{hands="Iuitl Wristbands"}) 
  WS.SATA.Exenterator = WS.TA.Exenterator 

  WS["Rudra's Storm"] = {feet="Assassin's Poulaines +2"} 
  WS.SA["Rudra's Storm"] = set_combine(WS["Rudra's Storm"],{hands="Raider's Armlets +2"}) 
  WS.TA["Rudra's Storm"] = set_combine(WS["Rudra's Storm"],{hands="Pillager's Armlets +1"}) 
  WS.SATA["Rudra's Storm"] = WS.TA["Rudra's Storm"] 

  WS.Evisceration = {feet="Assassin's Poulaines +2"} 
  WS.SA.Evisceration = set_combine(WS.Evisceration,{hands="Raider's Armlets +2"}) 
  WS.TA.Evisceration = set_combine(WS.Evisceration,{hands="Pillager's Armlets +1"}) 
  WS.SATA.Evisceration = WS.TA.Evisceration 

  WS['Mandalic Stab'] = {feet="Assassin's Poulaines +2"} 
  WS.SA['Mandalic Stab'] = set_combine(WS['Mandalic Stab'],{hands="Raider's Armlets +2"}) 
  WS.TA['Mandalic Stab'] = set_combine(WS['Mandalic Stab'],{hands="Pillager's Armlets +1"}) 
  WS.SATA['Mandalic Stab'] = WS.TA['Mandalic Stab'] 

  WS['Shark Bite'] = {feet="Assassin's Poulaines +2"} 
  WS.SA['Shark Bite'] = set_combine(WS['Shark Bite'],{hands="Raider's Armlets +2"}) 
  WS.TA['Shark Bite'] = set_combine(WS['Shark Bite'],{hands="Pillager's Armlets +1"}) 
  WS.SATA['Shark Bite'] = WS.TA['Shark Bite'] 

  WS['Aeolian Edge'] = {feet="Assassin's Poulaines +2"} 
  WS.SA['Aeolian Edge'] = set_combine(WS['Aeolian Edge'],{hands="Raider's Armlets +2"}) 
  WS.TA['Aeolian Edge'] = set_combine(WS['Aeolian Edge'],{hands="Pillager's Armlets +1"}) 
  WS.SATA['Aeolian Edge'] = WS.TA['Aeolian Edge'] 

  WS['Dancing Edge'] = {feet="Assassin's Poulaines +2"} 
  WS.SA['Dancing Edge'] = set_combine(WS['Dancing Edge'],{hands="Raider's Armlets +2"}) 
  WS.TA['Dancing Edge'] = set_combine(WS['Dancing Edge'],{hands="Pillager's Armlets +1"}) 
  WS.SATA['Dancing Edge'] = WS.TA['Dancing Edge'] 

  WS['Mercy Stroke'] = {feet="Assassin's Poulaines +2"} 
  WS.SA['Mercy Stroke'] = set_combine(WS['Mercy Stroke'],{hands="Raider's Armlets +2"}) 
  WS.TA['Mercy Stroke'] = set_combine(WS['Mercy Stroke'],{hands="Pillager's Armlets +1"}) 
  WS.SATA['Mercy Stroke'] = WS.TA['Mercy Stroke'] 
  
-- Variables for Engaged Idle TH and Auto Stun Modes
  DD = {main="Sandung",sub="Eminent Dagger",
    range="Raider's Boomerang",head="Uk'uxkaj Cap",
	neck="Love Torque",ear1="Bladeborn Earring",
	ear2="Steelflash Earring",body="Manibozho Jerkin",
	hands="Buremte Gloves",ring1="Epona's Ring",
	ring2="Cho'j Band",back="Atheling Mantle",
	waist="Cetl Belt",legs="Manibozho Brais",
	feet="Manibozho Boots"} 

  ACC = {head="Manibozho Beret",neck="Love Torque",
    body="Manibozho Jerkin",hands="Buremte Gloves",
	waist="Dynamic Belt",legs="Manibozho Brais",
	feet="Manibozho Boots"} 

  TH = set_combine(DD, {main="Eminent Dagger",hands="Plunderer's Armlets",
    feet="Raider's Poulaines +2"}) 

  REG = {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",
    hands="Plunderer's Armlets",ring1="Paguroidea Ring",
	ring2="Sheltered Ring",feet="Skadi's Jambeaux"} 

  PDT = {head="Ejekamal Mask",neck="Wiglen Gorget",
    body="Iuitl Vest",hands="Buremte Gloves",
	back="Mollusca Mantle",legs="Kaabnax Trousers",
	feet="Iuitl Gaiters"} 

  MDT = {head="Ejekamal Mask",neck="Twilight Torque",
    body="Iuitl Vest",hands="Buremte Gloves",
	back="Mollusca Mantle",legs="Kaabnax Trousers",
	feet="Iuitl Gaiters"} 

  DT = {neck="Twilight Torque",ring1="Defending Ring",
    ring2="Dark Ring",back="Mollusca Mantle",
	waist="Black Belt",legs="Otronif Brais",
	feet="Otronif Boots"} 
	
  E = DD 

  I = REG 

  Auto_Stun = false 

  TH_Mode = false 

--Auto Stun Mob Actions
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
end

function file_unload() 
  send_command('unbind f9')
  send_command('unbind !f9') 
end 

function precast(spell) 
  if JA[spell.english] then 
    equip(JA[spell.english]) 
  elseif spell.type == 'Step'or spell.type == 'Flourish1' then 
    equip(ACC) 
  elseif spell.type == 'WeaponSkill' then 
    if WS[spell.english] then 
	  equip(WS[spell.english]) 
	end
  elseif buffactive['sneak attack'] and buffactive['trick attack'] and WS.SATA[spell.english] then 
    equip(WS.SATA[spell.english]) 
  elseif buffactive['sneak attack'] and WS.SA[spell.english] then 
    equip(WS.SA[spell.english]) 
  elseif buffactive['trick attack'] and WS.TA[spell.english] then 
    equip(WS.TA[spell.english]) 
  elseif spell.english == 'Spectral Jig' and buffactive.sneak then 
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
    if TH_Mode ~= Full_Time and TH_Mode ~= Disabled then 
      TH_Mode = tag 
      equip(TH) 
      windower.register_event('tp change', function(new, old) 
       if new and TH_Mode == tag then 
          equip(E) 
          TH_Mode = false 
        end 
	  end) 
    else 
      equip(E) 
    end
  else
    equip(I) 
  end
end 

function buff_change(buff, gain)
  if buff == 'Feint' and gain then 
	equip(JA.Feint) 
  elseif buff == 'Sneak Attack' and gain then 
    equip(JA['Sneak Attack'])
  else 
    equip(E) 
  end 
end 

function self_command(command) 
  if command == 'Auto_Stun' then 
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
  elseif command == 'TH_Mode' then 
    if TH_Mode == false or TH_Mode == Disabled  then 
	  TH_Mode = tag 
	  add_to_chat(200, 'Gearswap: TH now Tag') 
	elseif TH_Mode == tag then 
	  TH_Mode = Full_Time 
	  E = TH 
	  add_to_chat(200, 'Gearswap: TH now Full Time') 
	elseif TH_Mode == Full_Time then 
	  TH_Mode = Disabled 
	  E = DD 
	  add_to_chat(200, 'Gearswap: TH now Disabled') 
	end 
  end 
end 
