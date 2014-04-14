function get_sets() pre = {} 

  add_to_chat(200, 'Gearswap: Auto Stun Disabled (ALT F9)') 
  add_to_chat(200, 'Gearswap: TH Tag with Steps and Violent Flourish (F9)') 
  send_command('@input /macro book 6;wait .1;input /macro set 1') 

--Key Binds
  send_command('bind f9 gs c TH_mode') 
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
    range="Raider's Boomerang",head="Manibozho Beret",
    neck="Asperity Necklace",ear1="Bladeborn Earring",
    ear2="Steelflash Earring",body="Manibozho Jerkin",
    hands="Buremte Gloves",ring1="Rajas Ring",
	ring2="Epona's Ring",back="Atheling Mantle",
    waist="Cetl Belt",legs="Manibozho Brais",
    feet="Manibozho Boots"} 

  ACC = {head="Manibozho Beret",neck="Love Torque",
    body="Manibozho Jerkin",hands="Buremte Gloves",
	back="Canny Cape",waist="Dynamic Belt",
	legs="Manibozho Brais",feet="Manibozho Boots"} 
 
  REG = {neck="Wiglen Gorget",ring1="Paguroidea Ring",
    ring2="Sheltered Ring",back="Iximulew Cape"} 

  Extra_Regen = {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",
    ring1="Paguroidea Ring",ring2="Sheltered Ring",
	back="Iximulew Cape"} 

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
	
  TH_tag ={hands="Plunderer's Armlets",feet="Raider's Poulaines +2"} 
 	
  TH_full = set_combine(DD, {main="Sandung",sub="Thief's Knife",
    hands="Plunderer's Armlets",waist="Chaac Belt",feet="Raider's Poulaines +2"}) 

  SA = {head="Uk'uxkaj Cap",hands="Raider's Armlets +2",
    feet="Iuitl Gaiters"} 
	
  TA = {head="Lithelimb Cap",hands="Pillager's Armlets +1",
    back="Canny Cape",legs="Kaabnax Trousers",
    feet="Iuitl Gaiters"}
	
  SATA = set_combine(TA, {}) 
  
  Weaponskill = DD 
    
  Engaged = DD 

  Idle = REG 
  
  TH_mode = TH_tag 
  
  Auto_Stun = false 
  
end

function file_unload() 
  send_command('unbind f9')
  send_command('unbind !f9') 
end 

function precast(spell) 
  if pre[spell.english] then 
    if spell.type == "WeaponSkill" then 
      equip(Weaponskill, pre[spell.english]) 
	else 
	  equip(pre[spell.english]) 
	end 
  elseif S{'Step','Flourish1'}:contains(spell.type) then 
    if TH_mode == TH_tag then 
      equip(TH_tag) 
    else 
	  equip(ACC) 
	end
  elseif spell.english == 'Spectral Jig' and buffactive.sneak then 
    send_command('cancel 71') 
  end 
end 

function aftercast(spell) 
  if player.status == 'Engaged' then 
    equip(Engaged) 
  else 
    equip(Idle) 
  end 
end 

function status_change(new,old) 
  if new == 'Engaged' then 
    equip(Engaged) 
  else 
    equip(Idle) 
  end 
end 

function buff_change(buff, gain) 
local b = player.status
  if buff == 'Feint' and gain then 
    equip(pre.Feint) 
  elseif buff == 'Sneak Attack' and gain then 
    equip(SA) 
	Weaponskill = SA 
  elseif buff == 'Trick Attack' and gain then 
    equip(TA) 
	Weaponskill = TA 
  elseif buff == 'Trick Attack' and gain and buffactive['Sneak attack'] then 
    equip(SATA) 
	Weaponskill = SATA 
  elseif buff == 'Sneak Attack' and gain and buffactive['Trick Attack'] then 
    equip(SATA) 
	Weaponskill = SATA
  elseif buff == 'Feint' and not gain then 
    if b == 'Engaged' then 
      equip(Engaged) 
	else 
	  equip(Idle)
	end
  elseif buff == 'Sneak Attack' and not gain then 
    Weaponskill = DD 
    if b == 'Engaged' then 
      equip(Engaged) 
	else 
	  equip(Idle)
	end
  elseif buff == 'Trick Attack' and not gain then 
    Weaponskill = DD 
    if b == 'Engaged' then 
      equip(Engaged) 
	else 
	  equip(Idle)
	end
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
  elseif command == 'TH_mode' then 
    if S{false, nil}:contains(TH_mode) then 
      TH_mode = TH_tag
      add_to_chat(200, 'Gearswap: TH Tag with Steps and Violent Flourish') 
    elseif TH_mode == TH_tag then 
      TH_mode = full
      Engaged = TH_full 
      add_to_chat(200, 'Gearswap: TH now Full Time') 
    elseif TH_mode == full then 
      TH_mode = false
      Engaged = DD 
      add_to_chat(200, 'Gearswap: TH now Disabled') 
    end 
  end 
end 

windower.register_event('hpp change', function(new, old) 
  if new <= 96 then 
    Idle = Extra_Regen 
  else 
    Idle = REG 
  end 
end) 

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
