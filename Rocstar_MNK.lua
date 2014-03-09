function get_sets()

JA={}Weaponskill={}WS={}MA={}TP={}Idle={}

send_command('input /macro book 2;wait .1;input /macro set 1')
add_to_chat(200, 'Gearswap: Weapon Skill mode Accuracy (ALT + F1 to change)')
add_to_chat(200, 'Gearswap: Engaged mode Damage Dealer (ALT + F2 to change)')
add_to_chat(200, 'Gearswap: Idle now Regen (ALT + F3 to change)')
send_command('bind !F1 gs c W')
send_command('bind !F2 gs c E')
send_command('bind !F3 gs c I')

JA['Hundred Fists'] = {legs="Melee hose +2"}

JA['Formless Strikes'] = {body="Melee Cyclas +2"}

JA['Chi Blast'] = {body="Melee crown +2"}

JA.Footwork = {feet="Tantra Gaiters +2"}

JA.Counterstance = {feet="Melee Gaiters +2"}

JA.Mantra = {feet="Melee Gaiters +2"}

JA['Curing Waltz III'] = JA['Curing Waltz']

JA['Curing Waltz II'] = JA['Curing Waltz']

JA['Curing Waltz'] = {head="Uk'uxkaj Cap",body="Otronif Harness",hands="Otronif Gloves",
ring1="Defending Ring",ring2="Dark Ring",back="Iximulew Cape",waist="Chuq'aba Belt",
legs="Kaabnax Trousers",feet="Otronif Boots"}

JA.Chakra = {body="Anchorite's Cyclas",hands="Melee Gloves +2"}

Weaponskill.ATT = {ammo="Hagneia Stone",head="Uk'uxkaj Cap",neck="Asperity Necklace",
ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Manibozho Jerkin",hands="Manibozho Gloves",
ring1="Epona's Ring",ring2="Rajas Ring",back="Atheling Mantle",waist="Cetl Belt",
legs="Quiahuiz Leggings",feet="Manibozho Boots"}

Weaponskill.ACC = {ammo="Honed Tathlum",head="Manibozho Beret",neck="Asperity Necklace",
ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Manibozho Jerkin",hands="Manibozho Gloves",
ring1="Epona's Ring",ring2="Rajas Ring",back="Anchoret's Mantle",waist="Cetl Belt",
legs="Manibozho Brais",feet="Manibozho Boots"}

WS["Victory Smite"] = set_combine(W,{neck="Light Gorget",waist="Light Belt"}) 

WS["Final Heaven"] = set_combine(W,{neck="Light Gorget",waist="Light Belt"}) 

WS["Ascetic's Fury"] = set_combine(W,{neck="Light Gorget",waist="Light Belt"})

WS["Shijin Spiral"] = set_combine(W,{neck="Light Gorget",waist="Light Belt"}) 

MA.FC = {head="Haruspex Hat",neck="Orunmila's Torque",ear2="Loquacious Earring",hands="Thaumas Gloves"}

MA.Recast = {head="Haruspex Hat",neck="Orunmila's Torque",ear2="Loquacious Earring",hands="Thaumas Gloves"}

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

I = Idle.REG

W = Weaponskill.ACC

E = TP.DD

windower.register_event('action', function(act)if act.target_count ~= 0 then
if act.targets[1].action_count ~= 0 then if act.targets[1].actions[1].message ~= 0 then
local mob = windower.ffxi.get_mob_by_target('t')if (mob and mob.is_npc and mob.id == act.actor_id)
and S{7,8}:contains(act.category) then equip(TP.DT)end end end end end)end

function precast(spell)
if spell.action_type=='Magic'then equip(MA.FC)
elseif JA[spell.english]then equip(JA[spell.english])
elseif WS[spell.english]then equip(W)
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

elseif command=='I'then 
    if I==Idle.REG then I=Idle.PDT add_to_chat(200, 'Gearswap: Idle now Physical Damage Taken -')equip(I)
elseif I==Idle.PDT then I=Idle.MDT add_to_chat(200, 'Gearswap: Idle now Magic Damage Taken -')equip(I)
elseif I==Idle.MDT then I=Idle.DT add_to_chat(200, 'Gearswap: Idle now Damage Taken -')equip(I)
elseif I==Idle.DT then I=Idle.REG add_to_chat(200, 'Gearswap: Idle now Regen')equip(I)end 

elseif command=='W'then 
if W==Weaponskill.ATT then W=Weaponskill.ACC 
add_to_chat(200, 'Gearswap: Weapon Skills now Accuracy')equip(W)
elseif W==Weaponskill.ACC then W=Weaponskill.ATT 
add_to_chat(200, 'Gearswap: Weapon Skills now Attack')equip(W)end end end


