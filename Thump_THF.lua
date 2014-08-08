function get_sets() 
send_command('@input /macro book 4;wait .1;input /macro set 1') 
send_command('bind !f8 gs c th') 
send_command('bind !f9 gs c b') 
send_command('bind !f10 gs c a') 

ws_mod = {} 
ws_mod.AGI_86_TO_100 = {} 
ws_mod.DEX_28_INT_28 = {} 
ws_mod.DEX_30_CHR_40 = {} 
ws_mod.DEX_80 = {} 
ws_mod.DEX_50 = {} 
ws_mod.DEX_30 = {} 
ws_mod.STR_60 = {} 

pre = {} 
pre.Mug = {head="Assassin's Bonnet +2"} 
pre['Perfect Dodge'] = {hands="Plun. Armlets"} 
pre.Feint = {legs="Asn. Culottes +2"} 
pre["Assassin's Charge"] = {feet="Asn. Poulaines +2"} 
pre.Conspirator = {body="Raider's Vest +2"} 
pre.Collaborator = {head="Raider's Bonnet +2"} 
pre.Accomplice = set_combine(pre.Collaborator) 
pre.Despoil = {legs="Raider's Culottes +2",feet="Raid. Poulaines +2"} 
pre.Hide = {body="Pillager's Vest +1"} 
pre.Flee = {feet="Pill. Poulaines +1"} 

pre.waltz = {ammo="",
head="Lithelimb Cap",neck="",ear1="",ear2="",
body="Iuitl Vest",hands="Buremte Gloves",ring1="",ring2="",
back="Iximulew Cape",waist="Chuq'aba Belt",legs="Kaabnax Trousers",feet="Iuitl Gaiters"} 

pre['Curing Waltz II'] = pre.waltz 
pre['Curing Waltz III'] = pre.waltz 

pre.Steal = {head="Assassin's Bonnet +2",
hands="Pill. Armlets +1",
legs="Pill. Culottes +1",feet="Pill. Poulaines +1"} 

pre.Exenterator = set_combine(ws_mod.AGI_86_to_100, {neck="Breeze Gorget",waist="Breeze Belt"}) 
pre["Rudra's Storm"] = set_combine(ws_mod.DEX_80, {neck="Shadow Gorget",waist="Shadow Belt"}) 
pre.Evisceration = set_combine(ws_mod.DEX_30, {neck="Shadow Gorget",waist="Shadow Belt"}) 
pre['Mandalic Stab'] = set_combine(ws_mod.DEX_30, {neck="Shadow Gorget",waist="Shadow Belt"}) 
pre['Shark Bite'] = set_combine(ws_mod.DEX_50, {neck="Breeze Gorget",waist="Breeze Belt"}) 
pre['Aeolian Edge'] = set_combine(ws_mod.DEX_28_INT_28, {neck="Breeze Gorget",waist="Breeze Belt"}) 
pre['Dancing Edge'] = set_combine(ws_mod.DEX_30_CHR_40, {neck="Breeze Gorget",waist="Breeze Belt"}) 
pre['Mercy Stroke'] = set_combine(ws_mod.STR_60, {neck="Shadow Gorget",waist="Shadow Belt"}) 
 
dd = {main="Sandung",sub="Eminent Dagger",range="Raider's Boomerang",
head="Pill. Bonnet +1",neck="Ishtar's Collar",ear1="Bladeborn Earring",ear2="Steelflash Earring",
body="Pillager's Vest +1",hands="Plun. Armlets",ring1="Epona's Ring",ring2="Rajas Ring",
back="Atheling Mantle",waist="Cetl Belt",legs="Pill. Culottes +1",feet="Pill. Poulaines +1"} 

acc = {head="Manibozho Beret",neck="Ej Necklace",
body="Manibozho Jerkin",hands="Buremte Gloves",
back="Canny Cape",waist="Dynamic Belt",legs="Manibozho Brais",feet="Manibozho Boots"} 

regen = set_combine(dd, {neck="Wiglen Gorget",
ring1="Paguroidea Ring",ring2="Sheltered Ring",
back="Iximulew Cape"}) 

max_regen = set_combine(regen, {head="Ocelomeh Headpiece +1",
neck="Wiglen Gorget",
ring1="Paguroidea Ring",ring2="Sheltered Ring",
back="Iximulew Cape"}) 

pdt = {head="Iuitl Headgear",neck="Twilight Torque",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
body="Iuitl Vest",hands="Iuitl Wristbands",ring1="Dark Ring",ring2="Defending Ring",
back="Mollusca Mantle",waist="Flume Belt",legs="Iuitl Tights",feet="Iuitl Gaiters"} 

mdt = {head="Ejekamal Mask",
neck="Twilight Torque",body="Iuitl Vest",hands="Buremte Gloves",
back="Mollusca Mantle",legs="Kaabnax Trousers",feet="Iuitl Gaiters"} 

dt = set_combine(dd, {neck="Twilight Torque",
ring1="Defending Ring",ring2="Dark Ring",
back="Mollusca Mantle",waist="Flume Belt"}) 

step = set_combine(acc, {hands="Plun. Armlets",
feet="Raider's Poulaines +2"}) 

full = set_combine(dd, {main="Sandung",sub="Thief's Knife",
hands="Plun. Armlets",
feet="Raider's Poulaines +2"}) 

ws = {head="Uk'uxkaj Cap",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
body="Manibozho Jerkin",hands="Manibozho Gloves",ring1="Epona's Ring",ring2="Rajas Ring",
back="Atheling Mantle",waist="Cetl Belt",legs="Manibozho Brais",feet="Manibozho Boots"} 

sa = {head="Uk'uxkaj Cap",
body="Pillager's Vest +1",hands="Raider's Armlets +2",
feet="Iuitl Gaiters"} 

ta = {head="Lithelimb Cap",
hands="Pillager's Armlets +1",
back="Canny Cape",legs="Kaabnax Trousers",feet="Iuitl Gaiters"} 

sata = set_combine(ta, {}) 

th = full 
idle = regen 
engaged = dd 
after_cast = dd 
auto_stun = false 
movement_feet = true 
sa_up = buffactive['Sneak Attack'] 
ta_up = buffactive['Trick Attack']
ws_default = ws end

function precast(spell) 
 if windower.wc_match(spell.type, 'JobAbility|WeaponSkill') then 
  if pre[spell.english] then 
   equip(pre[spell.english]) 
   end 
 elseif spell.english == 'Spectral Jig' and buffactive.sneak then 
  send_command('cancel 71') 
 elseif windower.wc_match(spell.type, 'Step|Flourish1') then 
  if th == step then 
   equip(th) 
  else 
   equip(acc) 
  end 
 end 
end 

function aftercast(spell) 
 if player.status == 'Engaged' then 
  equip(after_cast) 
 else 
  equip(idle) 
 end 
end 

function status_change(new,old) 
 if new == 'Engaged' then 
  equip(engaged) 
 elseif new == 'Idle' then 
  if player.hpp <= 75 then 
   idle = regen 
  else 
   idle = max_regen 
  end 
   if movement_feet ~= false then 
    equip(idle,({feet="Pill.Poulaines"})) 
   else 
    equip(idle) 
   end 
 end 
end 
 
function buff_change(buff, gain) 
 if buff == 'Feint' then 
  if not gain then 
   after_cast = engaged 
    if player.status == 'Engaged' then 
     equip(engaged) 
    else 
     equip(idle) 
    end 
  else 
   after_cast = pre.Feint 
   equip(after_cast) 
  end 
 elseif buff == 'Sneak Attack' then 
  if gain then 
   if ta_up then 
    ws_default = sata 
    after_cast = sata 
    equip(ws_default) 
   else 
    ws_default = sa 
    after_cast = sa 
    equip(ws_default) 
   end 
 elseif not gain then 
  after_cast = engaged 
  ws_default = ws 
   if player.status == 'Engaged' then 
    equip(engaged) 
   else 
    equip(idle) 
   end 
  end 
 elseif buff == 'Trick Attack' then 
  if gain then 
   if sa_up then 
    ws_default = sata 
    after_cast = sata 
    equip(ws_default) 
   else 
    ws_default = ta 
    after_cast = ta 
    equip(ws_default) 
   end 
 elseif not gain then 
  after_cast = engaged 
  ws_default = ws 
   if player.status == 'Engaged' then 
    equip(engaged) 
   else 
    equip(idle) 
   end 
  end 
 end 
end 

function self_command(command) 
 if windower.wc_match(command, 's|S|stun|Stun|stun mode|Stun Mode') then 
  if auto_stun == false then 
   auto_stun = S{7,8} 
   add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting') 
  elseif auto_stun == S{7,8} then 
   auto_stun = S{7} 
   add_to_chat(200, 'Gearswap: Auto Stun now TP') 
  elseif auto_stun == S{7} then 
   auto_stun = S{8} 
   add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting') 
  elseif auto_stun == S{8} then 
   auto_stun = false 
   add_to_chat(200, 'Gearswap: Auto Stun now Disabled') 
  end 
  
 elseif windower.wc_match(command, 'th|TH') then 
  if S{false, full}:contains(th) then 
   th = step 
   after_cast = dd 
   engaged = dd 
   equip(engaged) 
   add_to_chat(200, 'Gearswap: engaged now DD, TH Tag with Steps/Flourish') 
  elseif th == step then 
   th = full 
   after_cast = full 
   engaged = full 
   equip(engaged) 
   add_to_chat(200, 'Gearswap: engaged now Full Time TH') 
  end 
 
 elseif windower.wc_match(command, 'm|M') then 
  if movement_feet == false then 
   movement_feet = true 
   add_to_chat(200, 'Gearswap: Using Movment Speed Feet') 
  elseif movement_feet == true then 
   movement_feet = false 
   add_to_chat(200, 'Gearswap: Disabled Movment Speed Feet') 
  end 
 
 elseif windower.wc_match(command, 'pdt|PDT') then 
  th = false 
  after_cast = pdt 
  engaged = pdt 
  equip(engaged) 
  add_to_chat(200, 'Gearswap: engaged now PDT') 

 elseif windower.wc_match(command, 'mdt|MDT') then 
  th = false 
  after_cast = mdt 
  engaged = mdt 
  equip(engaged) 
  add_to_chat(200, 'Gearswap: engaged now MDT') 
 end 
end 

windower.register_event('action', function(action_stun) 
 if auto_stun ~= false then 
  local mob = windower.ffxi.get_mob_by_target('t') 
  if action_stun.target_count ~= 0 then 
   if action_stun.targets[1].action_count ~= 0 then 
    if action_stun.targets[1].actions[1].message ~= 0 then 
     if (mob and mob.is_npc and mob.id == action_stun.actor_id) and auto_stun:contains(action_stun.category) then 
      windower.send_command('input /ja "Violent Flourish" <t>') 
     end 
    end 
   end 
  end 
 end 
end) 

function file_unload() 
 send_command('unbind !f8') 
 send_command('unbind !f9') 
 send_command('unbind !f10') 
end 
