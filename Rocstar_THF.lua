function get_sets()   
  --[[ 
  add_to_chat(200, 'Gearswap: Th Tag with Steps/Flourish (ALT F8)') 
  add_to_chat(200, 'Gearswap: WS Belt/Gorget Disabled (ALT F9)') 
  add_to_chat(200, 'Gearswap: Auto Stun Disabled (ALT F10)') ]]
  
  send_command('@input /macro book 4;wait .1;input /macro set 1') 

--Key Binds
  send_command('bind !f8 gs c th') 
  send_command('bind !f9 gs c b') 
  send_command('bind !f10 gs c a') 
  
  p = {} 
  
--Job Ability
  p.Mug = {head="Assassin's Bonnet +2"} 
  
  p['Perfect Dodge'] = {hands="Plunderer's Armlets"} 
  
  p.Feint = {legs="Assassin's Culottes +2"} 
  
  p["Assassin's Charge"] = {feet="Assassin's Poulaines +2"} 
  
  p.Conspirator = {body="Raider's Vest +2"} 
  
  p.Collaborator = {head="Raider's Bonnet +2"} 
  
  p.Accomplice = set_combine(p.Collaborator) 
  
  p.Despoil = {legs="Raider's Culottes +2",feet="Raider's Poulaines +2"} 
  
  p.Hide = {body="Pillager's Vest +1"} 
  
  p.Flee = {feet="Pillager's Poulaines"} 
  
  p['Curing Waltz'] = {head="Lithelimb Cap",body="Iuitl Vest",
    hands="Buremte Gloves",back="Iximulew Cape",
    waist="Chuq'aba Belt",legs="Kaabnax Trousers",
    feet="Iuitl Gaiters"} 
	
  p['Curing Waltz II'] = set_combine(p['Curing Waltz']) 
  
  p['Curing Waltz III'] = set_combine(p['Curing Waltz']) 
  
  p.Steal = {head="Assassin's Bonnet +2",hands="Pillager's Armlets +1",
    legs="Pillager's Culottes +1",feet="Pillager's Poulaines +1"} 
  	
-- Dagger Weapon Skills
  p.Exenterator = {neck="Breeze Gorget",waist="Breeze Belt"} 

  p["Rudra's Storm"] = {neck="Shadow Gorget",waist="Shadow Belt"} 

  p.Evisceration = {neck="Shadow Gorget",waist="Shadow Belt"} 

  p['Mandalic Stab'] = {neck="Shadow Gorget",waist="Shadow Belt"} 

  p['Shark Bite'] = {neck="Breeze Gorget",waist="Breeze Belt"} 
  
  p['Aeolian Edge'] = {neck="Breeze Gorget",waist="Breeze Belt"} 

  p['Dancing Edge'] = {neck="Breeze Gorget",waist="Breeze Belt"} 

  p['Mercy Stroke'] = {neck="Shadow Gorget",waist="Shadow Belt"} 
  
-- Variable sets 
  DD = {main="Sandung",sub="Eminent Dagger",
    range="Raider's Boomerang",head="Lithelimb Cap",
    neck="Love Torque",ear1="Bladeborn Earring",
    ear2="Steelflash Earring",body="Homam Corazza",
    hands="Buremte Gloves",ring1="Epona's Ring",
    ring2="Cho'j Band",back="Atheling Mantle",
    waist="Cetl Belt",legs="Manibozho Brais",
    feet="Manibozho Boots"} -- damage dealer set
	
  A = {head="Manibozho Beret",neck="Love Torque",
    body="Manibozho Jerkin",hands="Buremte Gloves",
    back="Canny Cape",waist="Dynamic Belt",
    legs="Manibozho Brais",
	feet="Manibozho Boots"} -- accuracy set
 
  R = set_combine(E, {neck="Wiglen Gorget",ring1="Paguroidea Ring",
    ring2="Sheltered Ring",
	back="Iximulew Cape"}) -- low regen set
	
  REG = set_combine(E, {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",
    ring1="Paguroidea Ring",ring2="Sheltered Ring",
	back="Iximulew Cape"}) -- max regen set

  PDT = {head="Iuitl Headgear",neck="Twilight Torque",
    ear1="Dudgeon Earring",ear2="Heartseeker Earring",
    body="Iuitl Vest",hands="Iuitl Wristbands",
    ring1="Dark Ring",ring2="Defending Ring",
    back="Mollusca Mantle",waist="Flume Belt",
    legs="Iuitl Tights",
	feet="Iuitl Gaiters"} -- physical damage taken - set

  MDT = {head="Ejekamal Mask",neck="Twilight Torque",
    body="Iuitl Vest",hands="Buremte Gloves",
    back="Mollusca Mantle",legs="Kaabnax Trousers",
    feet="Iuitl Gaiters"} -- magic damage taken - set

  DT = set_combine(DD, {neck="Twilight Torque",ring1="Defending Ring",
    ring2="Dark Ring",back="Mollusca Mantle",
    waist="Flume Belt"}) -- damage taken - set
	
  step = set_combine(A, {hands="Plunderer's Armlets",
    feet="Raider's Poulaines +2"}) -- //gs c th (treasure hunter tag set)
 	
  full = set_combine(E, {main="Sandung",sub="Thief's Knife",
    hands="Plunderer's Armlets",
	feet="Raider's Poulaines +2"}) -- treasure hunter full time set
	
  WS = {head="Uk'uxkaj Cap",
    neck="Asperity Necklace",ear1="Bladeborn Earring",
    ear2="Steelflash Earring",body="Manibozho Jerkin",
    hands="Manibozho Gloves",ring1="Epona's Ring",
    ring2="Rajas Ring",back="Atheling Mantle",
    waist="Cetl Belt",legs="Manibozho Brais",
    feet="Manibozho Boots"} -- default weapon skill set
  
  SA = {head="Uk'uxkaj Cap",body="Pillager's Vest +1",
    hands="Raider's Armlets +2",
	feet="Iuitl Gaiters"} -- sneak attack set
	
  TA = {head="Lithelimb Cap",hands="Pillager's Armlets +1",
    back="Canny Cape",legs="Kaabnax Trousers",
    feet="Iuitl Gaiters"} -- trick attack set
	
  SATA = set_combine(TA, {}) -- sneak attack and trick attack set
  
  TH = step -- treasure hunter = tag with step and flourish
  
  I = R -- idle = regen
    
  E = DD -- engaged = damage dealer
  
  W = WS -- weapon skill = normal 
  
  a = E -- aftercast engaged = engaged
  
  s = false -- //gs c s (auto stun disabled)
    
  B = false -- //gs c b (use WS belts / Gorget disabled)
  
  M = true -- //gs c m -- (movement speed feet while idle enabled)
  
  Sa = buffactive['Sneak Attack'] 
  
  Ta = buffactive['Trick Attack'] 
  
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

function precast(spell) 
  if spell.type == "JobAbility" then 
    if p[spell.english] then 
      equip(p[spell.english]) 
    end
  elseif spell.type == "WeaponSkill" then 
    if B ~= false then
      equip(W, p[spell.english]) 
    else
      equip(W) 
    end
  elseif spell.english == 'Spectral Jig' and buffactive.sneak then 
    send_command('cancel 71') 
  elseif windower.wc_match(spell.type, 'Step|Flourish1') then 
    if TH == step then 
      equip(TH) 
    else 
      equip(A) 
    end
  end 
end 

function aftercast(spell) 
  if player.status == 'Engaged' then 
    equip(a) 
  else 
    equip(I) 
  end 
end 

function status_change(new,old) 
  if new == 'Engaged' then 
    equip(E) 
  elseif new == 'Idle' then 
    if player.hpp <= 75 then
      I = REG 
    else
      I = R
    end 
      if M ~= false then
	equip(I,({feet="Skadi's Jambeaux"})) 
      else 
        equip(I) 
      end
  end 
end 

 
function buff_change(buff, gain) 

--[[ Feint ]]-- 
  if buff == 'Feint' then 
    if not gain then 
      a = E
        if player.status == 'Engaged' then 
          equip(E) 
        else 
          equip(I) 
        end 
    else 
      a = p.Feint
      equip(a) 
    end 
	
--[[ Sneak Attack ]]-- 	
  elseif buff == 'Sneak Attack' then 
    if gain then 
      if Ta then 
        W = SATA 
        a = SATA 
        equip(W) 
      else 
        W = SA 
        a = SA
        equip(W) 
      end
    elseif not gain then 
      a = E
      W = WS
        if player.status == 'Engaged' then 
          equip(E) 
	else 
	  equip(I) 
	end 
    end 
	
--[[ Trick Attack ]]--	
  elseif buff == 'Trick Attack' then 
    if gain then 
      if Sa then 
        W = SATA 
        a = SATA
        equip(W) 
      else 
        W = TA 
        a = TA
        equip(W) 
      end
    elseif not gain then 
      a = E
      W = WS
        if player.status == 'Engaged' then 
          equip(E) 
	else 
	  equip(I) 
	end 
    end 
  end
end 


function self_command(command) 
  if command == 's' then 
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
	
  elseif command == 'th' then 
    if S{false, full}:contains(TH) then 
      TH = step
      a = DD
      E = DD
      equip(E) 
      add_to_chat(200, 'Gearswap: engaged now DD, TH Tag with Steps/Flourish') 
    elseif TH == step then 
      TH = full
      a = full
      E = full
      equip(E) 
      add_to_chat(200, 'Gearswap: engaged now Full Time TH') 
    end 
	
  elseif command == 'm' then 
    if M == false then 
      M = true
      add_to_chat(200, 'Gearswap: Using Movment Speed Feet') 
    elseif M == true then 
      M = false
      add_to_chat(200, 'Gearswap: Disabled Movment Speed Feet') 
    end 
	
  elseif command == 'b' then 
    if B == false then 
      B = true
      add_to_chat(200, 'Gearswap: Using WS Belt and Gorget') 
    elseif B == true then 
      B = false
      add_to_chat(200, 'Gearswap: Disabled WS Belt and Gorget') 
    end 
	
  elseif command == 'PDT' then 
    TH = false
    a = PDT
    E = PDT 
    equip(E) 
    add_to_chat(200, 'Gearswap: engaged now PDT') 
	
  elseif command == 'MDT' then 
    TH = false
    a = MDT
    E = MDT 
    equip(E) 
    add_to_chat(200, 'Gearswap: engaged now MDT') 
	
  end 
end 

function file_unload() 
  send_command('unbind !f8')
  send_command('unbind !f9')
  send_command('unbind !f10')  
end 
