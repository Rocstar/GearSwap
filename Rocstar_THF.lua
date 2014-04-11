function get_sets() full_time = {} none = {} pre = {} pre.SA = {} pre.TA = {} pre.SATA = {} 

  add_to_chat(200, 'Gearswap: Auto Stun Disabled (ALT F9) TH Mode Tag (F9)') 

  send_command('@input /macro book 4;wait .1;input /macro set 1') 

--Key Binds
  send_command('bind f9 gs c TH_Mode') 
  send_command('bind !f9 gs c Auto_Stun') 
  
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
  pre.Flee = {feet="Pillager's Poulaines +1"} 
  pre['Curing Waltz III'] = pre['Curing Waltz'] 
  pre['Curing Waltz II'] = pre['Curing Waltz'] 
  pre['Curing Waltz'] = {head="Uk'uxkaj Cap",body="Iuitl Vest",
    hands="Buremte Gloves",back="Iximulew Cape",
    waist="Chuq'aba Belt",legs="Kaabnax Trousers",
    feet="Iuitl Gaiters"} 
  pre.Steal = {head="Assassin's Bonnet +2",hands="Pillager's Armlets +1",
    legs="Pillager's Culottes +1",feet="Pillager's Poulaines +1"} 
  pre['Sneak Attack'] = {hands="Raider's Armlets +2"} 
  pre['Trick Attack'] = {hands="Pillager's Armlets +1"} 
  	
--Weapon Skills
  pre.Exenterator = {head="Uk'uxkaj Cap",legs="Quiahuiz Leggings",feet="Assassin's Poulaines +2"} 
  pre.SA.Exenterator = set_combine(pre.Exenterator, {hands="Raider's Armlets +2"}) 
  pre.TA.Exenterator = set_combine(pre.Exenterator, {hands="Iuitl Wristbands"}) 
  pre.SATA.Exenterator = pre.TA.Exenterator 

  pre["Rudra's Storm"] = {feet="Assassin's Poulaines +2"} 
  pre.SA["Rudra's Storm"] = set_combine(pre["Rudra's Storm"], {hands="Raider's Armlets +2"}) 
  pre.TA["Rudra's Storm"] = set_combine(pre["Rudra's Storm"], {hands="Pillager's Armlets +1"}) 
  pre.SATA["Rudra's Storm"] = pre.TA["Rudra's Storm"] 

  pre.Evisceration = {feet="Assassin's Poulaines +2"} 
  pre.SA.Evisceration = set_combine(pre.Evisceration, {hands="Raider's Armlets +2"}) 
  pre.TA.Evisceration = set_combine(pre.Evisceration, {hands="Pillager's Armlets +1"}) 
  pre.SATA.Evisceration = pre.TA.Evisceration 

  pre['Mandalic Stab'] = {feet="Assassin's Poulaines +2"} 
  pre.SA['Mandalic Stab'] = set_combine(pre['Mandalic Stab'], {hands="Raider's Armlets +2"}) 
  pre.TA['Mandalic Stab'] = set_combine(pre['Mandalic Stab'], {hands="Pillager's Armlets +1"}) 
  pre.SATA['Mandalic Stab'] = pre.TA['Mandalic Stab'] 

  pre['Shark Bite'] = {feet="Assassin's Poulaines +2"} 
  pre.SA['Shark Bite'] = set_combine(pre['Shark Bite'], {hands="Raider's Armlets +2"}) 
  pre.TA['Shark Bite'] = set_combine(pre['Shark Bite'], {hands="Pillager's Armlets +1"}) 
  pre.SATA['Shark Bite'] = pre.TA['Shark Bite'] 

  pre['Aeolian Edge'] = {feet="Assassin's Poulaines +2"} 
  pre.SA['Aeolian Edge'] = set_combine(pre['Aeolian Edge'], {hands="Raider's Armlets +2"}) 
  pre.TA['Aeolian Edge'] = set_combine(pre['Aeolian Edge'], {hands="Pillager's Armlets +1"}) 
  pre.SATA['Aeolian Edge'] = pre.TA['Aeolian Edge'] 

  pre['Dancing Edge'] = {feet="Assassin's Poulaines +2"} 
  pre.SA['Dancing Edge'] = set_combine(pre['Dancing Edge'], {hands="Raider's Armlets +2"}) 
  pre.TA['Dancing Edge'] = set_combine(pre['Dancing Edge'], {hands="Pillager's Armlets +1"}) 
  pre.SATA['Dancing Edge'] = pre.TA['Dancing Edge'] 

  pre['Mercy Stroke'] = {feet="Assassin's Poulaines +2"} 
  pre.SA['Mercy Stroke'] = set_combine(pre['Mercy Stroke'], {hands="Raider's Armlets +2"}) 
  pre.TA['Mercy Stroke'] = set_combine(pre['Mercy Stroke'], {hands="Pillager's Armlets +1"}) 
  pre.SATA['Mercy Stroke'] = pre.TA['Mercy Stroke'] 
  
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

  TH8 = set_combine(DD, {hands="Plunderer's Armlets",waist="Chaac Belt",
    feet="Raider's Poulaines +2"}) 
 	
  TH10 = set_combine(DD, {main="Sandung",sub="Thief's Knife",
    hands="Plunderer's Armlets",waist="Chaac Belt",feet="Raider's Poulaines +2"}) 
	
  E = DD 

  I = REG 

  Auto_Stun = false 

  TH_mode = false 

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
  if spell.type ~= 'WeaponSkill' and pre[spell.english] then 
    equip(pre[spell.english]) 
  elseif buffactive['sneak attack'] and pre.SA[spell.english] then 
    equip(pre.SA[spell.english]) 
  elseif buffactive['trick attack'] and pre.TA[spell.english] then 
    equip(pre.TA[spell.english]) 
  elseif buffactive['sneak attack'] and buffactive['trick attack'] and pre.SATA[spell.english] then 
    equip(pre.SATA[spell.english]) 
  elseif spell.type == 'WeaponSkill' and pre[spell.english] then 
    equip(pre[spell.english]) 
  elseif spell.english == 'Spectral Jig' and buffactive.sneak then 
    send_command('cancel 71') 
  elseif spell.type == 'Step'or spell.type == 'Flourish1' then 
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
    if TH_mode ~= full_time and TH_mode ~= none then 
      TH_mode = tag 
      equip(TH8) 
        windower.register_event('tp change', function(new, old) 
          if new and TH_mode == tag then 
            equip(E) 
            TH_mode = false 
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
    equip(pre.Feint) 
  elseif buff == 'Sneak Attack' and gain then 
    equip(pre['Sneak Attack']) 
  elseif buff == 'Trick Attack' and gain then 
    equip(pre['Trick Attack']) 
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
    if TH_mode == false or TH_mode == none  then 
      TH_mode = tag 
      add_to_chat(200, 'Gearswap: TH now Tag') 
    elseif TH_mode == tag then 
      TH_mode = full_time 
      E = TH10 
      add_to_chat(200, 'Gearswap: TH now Full Time') 
    elseif TH_mode == full_time then 
      TH_mode = none 
      E = DD 
      add_to_chat(200, 'Gearswap: TH now Disabled') 
    end 
  end 
end 
