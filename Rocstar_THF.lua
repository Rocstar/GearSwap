function get_sets() 
  Sa = buffactive['Sneak Attack'] 
  Ta = buffactive['Trick Attack'] 
  send_command('@input /macro book 8;wait .1;input /macro set 1') 
  send_command('bind !f7 gs c s') -- alt + F7 toggle auto stun
  send_command('bind !f8 gs c th') -- alt + F8 toggle TH/DD
  send_command('bind !f9 gs c b') -- alt + F9 enable/disable belt/gorget
  send_command('bind !f10 gs c b') -- alt + 10 enable/disable movement feet
  pre_cast = {} 
  
  --[[JA Sets]]--
  pre_cast.Mug = {head="Assassin's Bonnet +2"} 
  pre_cast['Perfect Dodge'] = {hands="Plunderer's Armlets"} 
  pre_cast.Feint = {legs="Assassin's Culottes +2"} 
  pre_cast["Assassin's Charge"] = {feet="Assassin's Poulaines +2"} 
  pre_cast.Conspirator = {body="Raider's Vest +2"} 
  pre_cast.Collaborator = {head="Raider's Bonnet +2"} 
  pre_cast.Accomplice = set_combine(pre_cast.Collaborator) 
  pre_cast.Despoil = {legs="Raider's Culottes +2",feet="Raider's Poulaines +2"} 
  pre_cast.Hide = {body="Pillager's Vest +1"} 
  pre_cast.Flee = {feet="Pillager's Poulaines +1"} 
  pre_cast.waltz = {head="Lithelimb Cap",body="Iuitl Vest",hands="Buremte Gloves",
    back="Iximulew Cape",waist="Chuq'aba Belt",legs="Kaabnax Trousers",feet="Iuitl Gaiters"} 
  pre_cast['Curing Waltz II'] = pre_cast.waltz 
  pre_cast['Curing Waltz III'] = pre_cast.waltz
  pre_cast.Steal = {head="Assassin's Bonnet +2",hands="Pillager's Armlets +1",legs="Pillager's Culottes +1",
    feet="Pillager's Poulaines +1"} 
	
   --[[WS Sets]]--
  pre_cast.breeze = {neck="Breeze Gorget",waist="Breeze Belt"} 
  pre_cast.shadow = {neck="Shadow Gorget",waist="Shadow Belt"} 
  pre_cast['Aeolian Edge'] = pre_cast.breeze 
  pre_cast['Dancing Edge'] = pre_cast.breeze 
  pre_cast['Shark Bite'] = pre_cast.breeze 
  pre_cast.Exenterator = pre_cast.breeze 
  pre_cast["Rudra's Storm"] = pre_cast.shadow 
  pre_cast.Evisceration = pre_cast.shadow 
  pre_cast['Mandalic Stab'] = pre_cast.shadow 
  pre_cast['Mercy Stroke'] = pre_cast.shadow 
  WS = {head="Uk'uxkaj Cap",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
    body="Manibozho Jerkin",hands="Manibozho Gloves",ring1="Epona's Ring",ring2="Rajas Ring",
	back="Atheling Mantle",waist="Cetl Belt",legs="Manibozho Brais",feet="Manibozho Boots"} 
  SA = {head="Uk'uxkaj Cap",body="Pillager's Vest +1",hands="Raider's Armlets +2",feet="Iuitl Gaiters"} 
  TA = {head="Lithelimb Cap",hands="Pillager's Armlets +1",back="Canny Cape",legs="Kaabnax Trousers",
    feet="Iuitl Gaiters"} 
	
 --[[variable Sets]]--
  DD = {main="Sandung",sub="Eminent Dagger",range="Raider's Boomerang",head="Pillager's Bonnet +1",
    neck="Ishtar's Collar",ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Manibozho Jerkin",
    hands="Buremte Gloves",ring1="Epona's Ring",ring2="Rajas Ring",back="Atheling Mantle",
    waist="Cetl Belt",legs="Pillager's Culottes +1",feet="Manibozho Boots"} 
  ACC = {head="Manibozho Beret",neck="Love Torque",body="Manibozho Jerkin",hands="Buremte Gloves",
    back="Canny Cape",waist="Dynamic Belt",legs="Manibozho Brais",feet="Manibozho Boots"} 
  normal_reg = set_combine(engaged, {neck="Wiglen Gorget",ring1="Paguroidea Ring",ring2="Sheltered Ring",
    back="Iximulew Cape"}) 
  max_reg = set_combine(engaged, {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",ring1="Paguroidea Ring",
    ring2="Sheltered Ring",back="Iximulew Cape"}) 
  PDT = {head="Iuitl Headgear",neck="Wiglen Gorget",ear1="Darkness Earring",ear2="Black Earring",
    body="Iuitl Vest",hands="Iuitl Wristbands",ring1="Dark Ring",ring2="Dark Ring",
    back="Mollusca Mantle",waist="Flume Belt",legs="Iuitl Tights",feet="Iuitl Gaiters"} 
  MDT = set_combine(PDT, {neck="Twilight Torque"}) 
  DT = set_combine(PDT, {neck="Twilight Torque"}) 
  th_tag = set_combine(ACC, {hands="Plunderer's Armlets",feet="Raider's Poulaines +2"}) 
  full_th = set_combine(DD, {main="Sandung",sub="Thief's Knife",hands="Plunderer's Armlets",
    feet="Raider's Poulaines +2"}) 
	
  --[[variables]]--
  SATA = set_combine(TA, {}) 
  TH = full_th 
  idle = normal_reg 
  engaged = full_th 
  W = WS 
  after_cast = engaged 
  s = false 
  belt_gorget = false 
  movement_feet = true 
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
  if windower.wc_match(spell.type, 'JobAbility|Waltz') then 
    if pre_cast[spell.english] then equip(pre_cast[spell.english]) 
    end
  elseif windower.wc_match(spell.type, 'Step|Flourish1') then 
    if TH == step then equip(TH) else equip(ACC) 
    end
  elseif spell.type == "WeaponSkill" then 
    if belt_gorget ~= false then equip(W, pre_cast[spell.english]) else equip(W) 
    end
  elseif spell.english == 'Spectral Jig' and buffactive.sneak then 
    send_command('cancel 71') 
  end 
end 

function aftercast(spell) 
  if player.status == 'Engaged' then equip(after_cast) else equip(idle) 
  end 
end 

function status_change(new,old) 
  if new == 'Engaged' then 
    equip(engaged) 
  elseif new == 'Idle' then 
    if player.hpp <= 75 then 
      idle = max_reg else idle = normal_reg 
    end 
    if movement_feet ~= false then 
      equip(idle,({feet="Pillager's Poulaines +1"})) else equip(idle) 
    end
  end 
end 
 
function buff_change(buff, gain) 
--[[ Feint ]]-- 
  if buff == 'Feint' then 
    if not gain then after_cast = engaged
      if player.status == 'Engaged' then equip(engaged) else equip(idle) 
      end else after_cast = pre_cast.Feint equip(after_cast) 
    end 
--[[ Sneak Attack ]]-- 	
  elseif buff == 'Sneak Attack' then 
    if gain then if Ta then W = SATA after_cast = SATA equip(W) else W = SA after_cast = SA equip(W) end
    elseif not gain then W = WS after_cast = engaged 
      if player.status == 'Engaged' then equip(engaged) else equip(idle) end 
    end 
--[[ Trick Attack ]]--	
  elseif buff == 'Trick Attack' then 
    if gain then if Sa then W = SATA after_cast = SATA equip(W) else W = TA after_cast = TA equip(W) end
    elseif not gain then W = WS after_cast = engaged 
      if player.status == 'Engaged' then equip(engaged) else equip(idle) end 
    end 
  end
end 

function self_command(command) 
  if command == 's' then 
    if s == false then s = S{7,8} add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting') 
    elseif s == S{7,8} then s = S{7} add_to_chat(200, 'Gearswap: Auto Stun now TP') 
    elseif s == S{7} then s = S{8} add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting') 
    elseif s == S{8} then s = false add_to_chat(200, 'Gearswap: Auto Stun now Disabled') 
    end 
  elseif command == 'th' then 
    if TH == full_th then TH = th_tag after_cast = engaged engaged = DD equip(engaged) 
      add_to_chat(200, 'Gearswap: engaged now DD, TH Tag with Steps/Flourish') 
    elseif TH == th_tag then TH = full_th after_cast = full_th engaged = full_th equip(engaged) 
      add_to_chat(200, 'Gearswap: engaged now Full Time TH') 
    end 
  elseif command == 'm' then 
    if movement_feet == false then movement_feet = true add_to_chat(200, 'Gearswap: Using Movment Speed Feet') 
    elseif movement_feet == true then movement_feet = false add_to_chat(200, 'Gearswap: Disabled Movment Speed Feet') 
    end 
  elseif command == 'b' then 
    if belt_gorget == false then belt_gorget = true add_to_chat(200, 'Gearswap: Using WS Belt and Gorget') 
    elseif belt_gorget == true then belt_gorget = false add_to_chat(200, 'Gearswap: Disabled WS Belt and Gorget') 
    end 
  elseif command == 'pdt' then 
    TH = false after_cast = PDT engaged = PDT equip(engaged) add_to_chat(200, 'Gearswap: engaged now PDT') 
  elseif command == 'mdt' then 
    TH = false after_cast = MDT engaged = MDT equip(engaged) add_to_chat(200, 'Gearswap: engaged now MDT') 
  end 
end 

function file_unload() 
  send_command('unbind !f7')
  send_command('unbind !f8')
  send_command('unbind !f9')
  send_command('unbind !f10')  
end 
