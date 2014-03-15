function get_sets()

--Values
JA={}WS={}MA={}TP={}Idle={}

--Macro book change
send_command('input /macro book 2;wait .1;input /macro set 1')

--File load Message
add_to_chat(200, 'Gearswap: Weapon Skill DD mode (ALT + F1 to change)')
add_to_chat(200, 'Gearswap: Engaged DD mode (ALT + F2 to change)')
add_to_chat(200, 'Gearswap: Idle Regen (ALT + F3 to change)')
add_to_chat(200, 'Gearswap: Auto Stun Disabled (ALT + F4 to change)')
add_to_chat(200, 'Gearswap: Auto Swaps Enabled (ALT + F5 to change)')

--Key Binds
send_command('bind !F1 gs c W')
send_command('bind !F2 gs c E')
send_command('bind !F3 gs c I')
send_command('bind !F4 gs c Auto_Stun')
send_command('bind !F5 gs c Auto_Swaps')

--Job Ability sets
JA['Hundred Fists'] = {legs="Melee hose +2"}

JA['Formless Strikes'] = {body="Melee Cyclas +2"}

JA['Chi Blast'] = {body="Melee crown +2"}

JA.Footwork = {feet="Tantra Gaiters +2"}

JA.Counterstance = {feet="Melee Gaiters +2"}

JA.Mantra = {feet="Melee Gaiters +2"}

JA['Curing Waltz III'] = {head="Uk'uxkaj Cap",body="Otronif Harness",hands="Otronif Gloves",
ring1="Defending Ring",ring2="Dark Ring",back="Iximulew Cape",waist="Chuq'aba Belt",
legs="Kaabnax Trousers",feet="Otronif Boots"}

JA['Curing Waltz II'] = set_combine(JA['Curing Waltz III'])

JA['Curing Waltz'] = set_combine(JA['Curing Waltz III'])

JA.Chakra = set_combine(JA['Curing Waltz III'], {body="Anchorite's Cyclas +1",hands="Hesychast's Gloves +1"})

--Weapon Skill sets

WS.Critical_Hit_Damage = {head="Espial Cap",ear1="Bladeborn Earring",ear2="Steelflash Earring",
body="Espial Gambison",hands="Espial Bracers",ring1="Epona's Ring",ring2="Rajas Ring",
back="Atheling Mantle",waist="Cetl Belt",legs="Espial Hose",feet="Espial Socks"} 

WS.High_Attack = {ammo="Hagneia Stone",head="Uk'uxkaj Cap",neck="Asperity Necklace",
ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Manibozho Jerkin",hands="Manibozho Gloves",
ring1="Epona's Ring",ring2="Rajas Ring",back="Atheling Mantle",waist="Cetl Belt",
legs="Quiahuiz Leggings",feet="Manibozho Boots"} 

WS.High_ACC = {ammo="Honed Tathlum",head="Manibozho Beret",neck="Asperity Necklace",
ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Manibozho Jerkin",hands="Manibozho Gloves",
ring1="Epona's Ring",ring2="Rajas Ring",back="Anchoret's Mantle",waist="Cetl Belt",
legs="Manibozho Brais",feet="Manibozho Boots"}

WS["Victory Smite"] = {neck="Light Gorget",waist="Light Belt"} 

WS["Final Heaven"] = {neck="Light Gorget",waist="Light Belt"} 

WS["Ascetic's Fury"] = {neck="Light Gorget",waist="Light Belt"}

WS["Shijin Spiral"] = {neck="Light Gorget",waist="Light Belt"} 

--Spellcasting sets
MA.FC = {head="Haruspex Hat",neck="Orunmila's Torque",ear2="Loquacious Earring",hands="Thaumas Gloves"}

MA.Recast = {head="Haruspex Hat",neck="Orunmila's Torque",ear2="Loquacious Earring",hands="Thaumas Gloves"}

--Engaged sets
TP.DD = {main="Oatixur",ammo="Honed Tathlum",head="Uk'uxkaj Cap",neck="Asperity Necklace",
ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Manibozho Jerkin",hands="Manibozho Gloves",
ring1="Epona's Ring",ring2="Rajas Ring",back="Atheling Mantle",waist="Cetl Belt",
legs="Quiahuiz Leggings",feet="Manibozho Boots"}

TP.ACC = {head="Manibozho Beret",ammo="Honed Tathlum",
body="Manibozho Jerkin",hands="Manibozho Gloves",ring1="Ulthalam's Ring",
back="Anchoret's Mantle",legs="Manibozho Brais",feet="Manibozho Boots"}

TP.MDT = {head="Ejekamal Mask",neck="Twilight Torque",
body="Otronif Harness",hands="Otronif Gloves",ring1="Defending Ring",
ring2="Dark Ring",back="Mollusca Mantle",legs="Kaabnax Trousers",feet="Otronif Boots"}

TP.PDT = {main="Oatixur",head="Otronif Mask",neck="Wiglen Gorget",
body="Otronif Harness",hands="Otronif Gloves",ring1="Defending Ring",ring2="Dark Ring",
back="Anchoret's Mantle",waist="Black Belt",legs="Otronif Brais",feet="Otronif Boots"}

TP.DT = {main="Oatixur",head="Otronif Mask",neck="Twilight Torque",body="Otronif Harness",hands="Otronif Gloves",
ring1="Defending Ring",ring2="Dark Ring",back="Mollusca Mantle",
waist="Black Belt",legs="Otronif Brais",feet="Otronif Boots"}

--Idle sets
Idle.REG = {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",
ring1="Paguroidea Ring",ring2="Sheltered Ring",back="Anchoret's Mantle"}

Idle.PDT = {main="Oatixur",head="Otronif Mask",
neck="Wiglen Gorget",body="Otronif Harness",hands="Otronif Gloves",ring1="Defending Ring",
ring2="Dark Ring",back="Anchoret's Mantle",waist="Black Belt",legs="Otronif Brais",feet="Otronif Boots"}

Idle.DT = {main="Oatixur",head="Otronif Mask",head="Otronif Mask",
neck="Twilight Torque",body="Otronif Harness",hands="Otronif Gloves",
ring1="Defending Ring",ring2="Dark Ring",back="Mollusca Mantle",
waist="Black Belt",legs="Otronif Brais",feet="Otronif Boots"}

Idle.MDT = {head="Ejekamal Mask",neck="Twilight Torque",
body="Otronif Harness",hands="Otronif Gloves",ring1="Defending Ring",ring2="Dark Ring",
back="Tuilha Cape",legs="Kaabnax Trousers",feet="Otronif Boots"}

--Weapon Skill is a Variable
W = WS.High_Attack

--Engaged is a Variable
E = TP.DD

--Idle is a Variable
I = Idle.REG

--Auto Stun is a Variable
Auto_Stun = false

--Auto Swaps is a Variable
Auto_Swaps = true
 
local mob=windower.ffxi.get_mob_by_target('t')

--Auto Stun
windower.register_event('action', function(a)
if Auto_Stun ~= false then
if a.target_count ~= 0 then 
if a.targets[1].action_count ~= 0 then 
if a.targets[1].actions[1].message ~= 0 then 
if (mob and mob.is_npc and mob.id == a.actor_id)and Auto_Stun:contains(a.category) then
windower.send_command('input /ja "Violent Flourish" <t>')end end end end end end)

--Auto Swaps
windower.register_event('action', function(act)
if Auto_Swaps ~= false then
if act.target_count ~= 0 then 
if act.targets[1].action_count ~= 0 then 
if act.targets[1].actions[1].message ~= 0 then
if (mob and mob.is_npc and mob.id == act.actor_id)
and S{7}:contains(act.category) then equip(TP.DT)
add_to_chat(200, 'Gearswap: Target Reaidies TP Move Swaped to - DT')end end end

elseif act.target_count ~= 0 then 
if act.targets[1].action_count ~= 0 then 
if act.targets[1].actions[1].message ~= 0 then
if (mob and mob.is_npc and mob.id == act.actor_id)
and S{8}:contains(act.category) then equip(TP.MDT)
add_to_chat(200, 'Gearswap: Target Starts Spellcasting Swaped to - MDT')end end end 

elseif act.target_count ~= 0 then 
if act.targets[1].action_count ~= 0 then 
if act.targets[1].actions[1].message ~= 0 then
if (mob and mob.is_npc and mob.id == act.actor_id)
and S{11}:contains(act.category) then equip(E)
add_to_chat(200, 'Target Done TP Move Swaped to Engaged')end end end

elseif act.target_count ~= 0 then 
if act.targets[1].action_count ~= 0 then 
if act.targets[1].actions[1].message ~= 0 then
if (mob and mob.is_npc and mob.id == act.actor_id)
and S{4}:contains(act.category) then equip(E)
add_to_chat(200, 'Target Done Spellcasting Swaped to Engaged')end end end end end end)end

function precast(spell)
if spell.action_type=='Magic'then equip(MA.FC)
elseif JA[spell.english]then equip(JA[spell.english])
elseif WS[spell.english]then equip(W,WS[spell.english])
elseif spell.english == 'Spectral Jig'and buffactive.sneak then send_command('cancel 71')
elseif spell.type=='Step'or spell.type=='Flourish1'then equip(TP.ACC)end end 

function midcast(spell)
if spell.action_type=='Magic'then equip(MA.Recast)end end

function aftercast(spell)
if player.status=='Engaged'then equip(E)
else equip(I)end end

function status_change(new,old)
    if new=='Engaged'then equip(E)
elseif new=='Idle'then equip(I)end end

function self_command(command)
    if command=='E'then 
    if E==TP.DD then E=TP.PDT add_to_chat(200, 'Gearswap: Engaged now Physical Damage Taken -')equip(E)
elseif E==TP.PDT then E=TP.MDT add_to_chat(200, 'Gearswap: Engaged now Magic Damage Taken -')equip(E)
elseif E==TP.MDT then E=TP.DT add_to_chat(200, 'Gearswap: Engaged now Damage Taken -')equip(E)
elseif E==TP.DT then E=TP.ACC add_to_chat(200, 'Gearswap: Engaged now Accuracy')equip(E)
elseif E==TP.ACC then E=TP.DD add_to_chat(200, 'Gearswap: Engaged now Damage Dealer')equip(E)end 

elseif command=='W'then
    if W==WS.Critical_Hit_Damage then W=WS.High_ACC
add_to_chat(200, 'Gearswap: Weapon Skill now Accuracy')equip(W)
elseif W==WS.High_ACC then W=WS.High_Attack
add_to_chat(200, 'Gearswap: Weapon Skill now Damage Dealer')equip(W)
elseif W==WS.High_Attack then W=WS.Critical_Hit_Damage
add_to_chat(200, 'Gearswap: Weapon Skill now Crit. Damage')equip(W)end 

elseif command=='I'then 
    if I==Idle.REG then I=Idle.PDT add_to_chat(200, 'Gearswap: Idle now Physical Damage Taken -')equip(I)
elseif I==Idle.PDT then I=Idle.MDT add_to_chat(200, 'Gearswap: Idle now Magic Damage Taken -')equip(I)
elseif I==Idle.MDT then I=Idle.DT add_to_chat(200, 'Gearswap: Idle now Damage Taken -')equip(I)
elseif I==Idle.DT then I=Idle.REG add_to_chat(200, 'Gearswap: Idle now Regen')equip(I)end
 
elseif command=='Auto_Swaps'then 
    if Auto_Swaps==true then Auto_Swaps=false add_to_chat(200, 'Gearswap: Auto Swaps now Disabled')
elseif Auto_Swaps==false then Auto_Swaps=true add_to_chat(200, 'Gearswap: Auto Swaps now Enabled')end

elseif command=='Auto_Stun'then 
    if Auto_Stun==false then Auto_Stun=S{7,8} add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting')
elseif Auto_Stun==S{7,8} then Auto_Stun=S{7} add_to_chat(200, 'Gearswap: Auto Stun now TP')
elseif Auto_Stun==S{7} then Auto_Stun=S{8} add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting')
elseif Auto_Stun==S{8} then Auto_Stun=false add_to_chat(200, 'Gearswap: Auto Stun now Disabled')end end end
