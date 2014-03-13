function get_sets()
add_to_chat(200, 'Gearswap: Engaged DD (ALT + F2 to change)')
add_to_chat(200, 'Gearswap: Idle Regen (ALT + F3 to change)')
add_to_chat(200, 'Gearswap: Auto Stun Disabled (ALT + F4 to change)')
send_command('@input /macro book 4;wait .1;input /macro set 1')
send_command('bind !F2 gs c E')
send_command('bind !F3 gs c I')
send_command('bind !F4 gs c A')

JA={}WS={}WS.SA={}WS.TA={}WS.SATA={}TP={}Idle={}

JA.Mug = {head="Assassin's Bonnet +2"}

JA['Perfect Dodge'] = {hands="Plunderer's Armlets"}

JA.Feint = {legs="Assassin's Culottes +2"}

JA['Assassin\'s Charge'] = {feet="Assassin's Poulaines +2"}

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

JA['Curing Waltz'] = {head="Uk'uxkaj Cap",body="Iuitl Vest",hands="Buremte Gloves",
back="Iximulew Cape",waist="Chuq'aba Belt",legs="Kaabnax Trousers",feet="Iuitl Gaiters"}

JA.Steal = {head="Assassin's Bonnet +2",hands="Pillager's Armlets +1",
legs="Pillager's Culottes +1",feet="Pillager's Poulaines +1"}

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

TP.DD = {main="Eminent Dagger",sub="Atoyac",range="Raider's Boomerang",head="Uk'uxkaj Cap",neck="Love Torque",
ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Manibozho Jerkin",hands="Plunderer's Armlets",
ring1="Epona's Ring",ring2="Cho'j Band",back="Atheling Mantle",waist="Twilight Belt",
legs="Quiahuiz Leggings",feet="Manibozho Boots"}

TP.ACC = {head="Manibozho Beret",neck="Love Torque",body="Manibozho Jerkin",
hands="Buremte Gloves",waist="Dynamic Belt",legs="Manibozho Brais",feet="Manibozho Boots"}

TP.MDT = {head="Ejekamal Mask",neck="Twilight Torque",body="Iuitl Vest",
hands="Buremte Gloves",back="Mollusca Mantle",legs="Kaabnax Trousers",feet="Iuitl Gaiters"}

TP.PDT = {neck="Wiglen Gorget",back="Mollusca Mantle"}

TP.DT = {neck="Twilight Torque",ring1="Defending Ring",ring2="Dark Ring",
back="Mollusca Mantle",waist="Black Belt",legs="Otronif Brais",feet="Otronif Boots"}

TP.TH = set_combine(TP.DD, {main="Eminent Dagger",sub="Thief's Knife",
hands="Plunderer's Armlets",feet="Raider's Poulaines +2"})

Idle.REG = {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",
hands="Plunderer's Armlets",ring1="Paguroidea Ring",ring2="Sheltered Ring",feet="Skadi's Jambeaux"}

Idle.PDT = {head="Ejekamal Mask",neck="Wiglen Gorget",body="Iuitl Vest",
hands="Buremte Gloves",back="Mollusca Mantle",legs="Kaabnax Trousers",feet="Iuitl Gaiters"}

Idle.MDT = {head="Ejekamal Mask",neck="Twilight Torque",body="Iuitl Vest",
hands="Buremte Gloves",back="Mollusca Mantle",legs="Kaabnax Trousers",feet="Iuitl Gaiters"}

Idle.DT = {neck="Twilight Torque",ring1="Defending Ring",ring2="Dark Ring",
back="Mollusca Mantle",waist="Black Belt",legs="Otronif Brais",feet="Otronif Boots"}

----Engaged is a variable
E = TP.DD

----Idle is a variable
I = Idle.REG

----Auto Stun is a variable
A = false

windower.register_event('action', function(a)
local m = windower.ffxi.get_mob_by_target('t')
if A ~= false then if a.target_count ~= 0 then 
if a.targets[1].action_count ~= 0 then
if a.targets[1].actions[1].message ~= 0 then 
if (m and m.is_npc and m.id == a.actor_id)and A:contains(a.category) then
windower.send_command('input /ja "Violent Flourish" <t>')end end end end end end)end

function precast(spell)
if JA[spell.english]then equip(JA[spell.english])
elseif spell.type=='Step'or spell.type=='Flourish1'then equip(TP.ACC)
elseif spell.type=='WeaponSkill'then if WS[spell.english]then equip(WS[spell.english])
elseif buffactive['sneak attack']and buffactive['trick attack']
and WS.SATA[spell.english]then equip(WS.SATA[spell.english])
elseif buffactive['sneak attack'] and WS.SA[spell.english] then equip(WS.SA[spell.english])
elseif buffactive['trick attack'] and WS.TA[spell.english] then equip(WS.TA[spell.english])
elseif spell.english=='Spectral Jig'and buffactive.sneak then send_command('cancel 71')end end end

function aftercast(spell)
if player.status=='Engaged'then equip(E)
else equip(I)end end

function status_change(new,old)
if new=='Idle'then equip(I)
elseif new=='Engaged'then equip(E)end end

function self_command(command)
    if command=='E'then 
    if E==TP.DD then E=TP.TH add_to_chat(200, 'Gearswap: Engaged now TH')equip(E)
elseif E==TP.TH then E=TP.PDT add_to_chat(200, 'Gearswap: Engaged now PDT -')equip(E)
elseif E==TP.PDT then E=TP.MDT add_to_chat(200, 'Gearswap: Engaged now MDT -')equip(E)
elseif E==TP.MDT then E=TP.DT add_to_chat(200, 'Gearswap: Engaged now DT -')equip(E)
elseif E==TP.DT then E=TP.ACC add_to_chat(200, 'Gearswap: Engaged now Accuracy')equip(E)
elseif E==TP.ACC then E=TP.DD add_to_chat(200, 'Gearswap: Engaged now DD')equip(E)end

elseif command=='I'then
    if I==Idle.REG then I=Idle.PDT add_to_chat(200, 'Gearswap: Idle now PDT -')equip(I)
elseif I==Idle.PDT then I=Idle.MDT add_to_chat(200, 'Gearswap: Idle now MDT -')equip(I)
elseif I==Idle.MDT then I=Idle.DT add_to_chat(200, 'Gearswap: Idle now DT -')equip(I)
elseif I==Idle.DT then I=Idle.REG add_to_chat(200, 'Gearswap: Idle now Regen')equip(I)end 

elseif command=='A'then 
    if A==false then A=S{7,8} add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting')
elseif A==S{7,8} then A=S{7} add_to_chat(200, 'Gearswap: Auto Stun now TP')
elseif A==S{7} then A=S{8} add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting')
elseif A==S{8} then A=false add_to_chat(200, 'Gearswap: Auto Stun now Disabled')end end end
