--Ranged Attack Bullet
RAB   = "Titanium Bullet"

--Quick Draw Bullet
QDB   = "Animikii Bullet"

--Physical Ranged Weapon Skill Bullet
PRWSB = "Adlivun Bullet"

--Magical Ranged Weapon Skill Bullet
MRWSB = "Adlivun Bullet"

--Empty ammo to prevent firing Quick Draw Bullet
X     = empty

function get_sets()
sets = {}

-- Magical WS Set
sets.MWS = {ear1="Friomisi Earring",ear2="Hecate's Earring"}

-- Physical WS Set
sets.PWS = {head="Uk'uxkaj Cap",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring"}

-- Magical Ranged WS Set
sets.MRWS = {ammo=MRWSB,ear1="Friomisi Earring",ear2="Hecate's Earring",back="Gunslinger's Cape"}

-- Physical Ranged WS Set
sets.PRWS = {ammo=PRWSB,head="Uk'uxkaj Cap",body="Navarch's Frac +2",hands="Navarch's Gants +2",ring1="Rajas Ring",
ring2="Dark Ring",back="Gunslinger's Cape",legs="Kaabnax Trousers",feet="Iuitl Gaiters"}

--Snapshot and Rapid Shot Set
sets.Snapshot={range="Donderbuss",ammo=RAB,head="Navarch's Tricorne +2",body="Laksamana's frac +1",
hands="Iuitl Wristbands",back="Navarch's Mantle",waist="Impulse Belt",legs="Navarch's Culottes +2",
feet="Wurrukatte Boots"}

--Ranged Attack/Ranged Accuracy/Critical Hit Rate + Set
sets.RangedAttack = {head="Uk'uxkaj Cap",body="Navarch's Frac +2",hands="Navarch's Gants +2"}

--Double-Up Set
sets.Luz = {ring2="Luzaf's Ring"}

--Phantom Roll Set
sets.Roll = set_combine(sets.Luz, {head="Commodore's Tricorne +2",hands="Navarch's Gants +2"})

--Quick Draw Set
sets['Quick Draw'] = {range="Donderbuss",ammo=QDB,head="Laksamana's Hat +1",feet="Laksamana's Bottes +1"}

sets['Fast Cast'] = {head="Haruspex Hat",neck="Orunmila's Torque",ear2="Loquacious Earring",
hands="Thaumas Gloves",legs="Blood Cuisses"}

-- Job Ability Sets
sets.JA = {}

sets.JA['Wild Card'] = {feet="Commodore Bottes +2"}

sets.JA['Random Deal'] = {body="Commodore Frac +2"}

sets.JA.Fold = {hands="Commodore Gants +2"}

sets.JA['Snake Eye'] = {legs="Commodore Culottes +2"}

sets.JA['Caster\'s Roll'] = set_combine(sets.Roll, {legs="Navarch's Culottes +2"})

sets.JA['Courser\'s Roll'] = set_combine(sets.Roll, {feet="Navarch's Bottes +2"})

sets.JA['Blitzer\'s Roll'] = set_combine(sets.Roll, {head="Navarch's Tricorne +2"})
	
sets.JA['Tactician\'s Roll'] = set_combine(sets.Roll, {body="Navarch's Frac +2"})
	
sets.JA['Allies\' Roll'] = set_combine(sets.Roll, {hands="Navarch's Gants +2"})

-- Waltz Ability Delay -/TP Cost -/Potency +/VIT + Set
sets.JA.Waltz = {head="Uk'uxkaj Cap",body="Wayfarer Robe",hands="Buremte Gloves",ring2="Dark Ring",
back="Iximulew Cape",legs="Kaabnax Trousers",feet="Iuitl Gaiters"}

sets.WS = {}

-- WS Sets

-- Exenterator 73% AGI mod on 1st merit, +3% for 2nd-5th merits. 85% AGI mod at 5/5.
sets.WS.Exenterator = set_combine(sets.PWS,{neck="Breeze Gorget",waist="Breeze Belt"})

-- Evisceration 30% DEX
sets.WS.Evisceration = set_combine(sets.PWS,{neck="Light Gorget",waist="Light Belt"})

-- Aeolian Edge 28% DEX / 28% INT
sets.WS['Aeolian Edge'] = set_combine(sets.MWS,{neck="Breeze Gorget",waist="Breeze Belt"})

-- Requiescat 86% MND mod on 1st merit, +3.5% for 2nd-5th merits. 100% MND mod at 5/5.
sets.WS.Requiescat = set_combine(sets.PWS,{neck="Shadow Gorget",waist="Shadow Belt"})

-- Savage Blade 50% MND / 30% STR
sets.WS['Savage Blade'] = set_combine(sets.PWS,{neck="Breeze Gorget",waist="Breeze Belt"})

-- Last Stand 73% AGI mod on 1st merit, +3% for 2nd-5th merits. 85% AGI mod at 5/5.
sets.WS['Last Stand'] = set_combine(sets.PRWS,{neck="Light Gorget",waist="Light Belt"})

-- Wildfire 60% AGI
sets.WS.Wildfire = set_combine(sets.MRWS,{neck="Shadow Gorget",waist="Shadow Belt"})

-- Leaden Salute 30% AGI
sets.WS['Leaden Salute'] = set_combine(sets.MRWS,{neck="Shadow Gorget",waist="Shadow Belt"})

-- Detonator 30% AGI
sets.WS.Detonator = set_combine(sets.PRWS,{neck="Light Gorget",waist="Light Belt"})

-- Hot Shot 30% AGI
sets.WS['Hot Shot'] = set_combine(sets.MRWS,{neck="Light Gorget",waist="Light Belt"})

-- Slug Shot 30% AGI
sets.WS['Slug Shot'] = set_combine(sets.PRWS,{neck="Light Gorget",waist="Light Belt"})

sets.TP = {}

-- Engaged Sets

-- Engaged Damage Dealing Set
sets.TP.DD = {ammo=X,head="Uk'uxkaj Cap",neck="Asperity Necklace",ear1="Heartseeker Earring",
ear2="Dudgeon Earring",body="Manibozho Jerkin",hands="Buremte Gloves",ring1="Epona's Ring",
ring2="Rajas Ring",back="Atheling Mantle",waist="Cetl Belt",
legs="Quiahuiz Leggings",feet="Manibozho Boots"}

-- Engaged Regen Set
sets.TP.Reg = {ammo=X,head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",hands="Feronia's Bangles",
ring1="Paguroidea Ring",ring2="Sheltered Ring",waist="Lycopodium Sash"}

-- Engaged Refresh Set
sets.TP.Ref = {ammo=X,head="Wayfarer Circlet",body="Wayfarer Robe",hands="Wayfarer Cuffs",
legs="Wayfarer Slops",feet="Wayfarer Clogs"}

-- Engaged Magic Damage Taken - / Magic Def. Bonus + Set
sets.TP.MDT = {ammo=X,head="Wayfarer Circlet",neck="Twilight Torque",body="Wayfarer Robe",
hands="Wayfarer Cuffs",ring1="Defending Ring",ring2="Dark Ring",back="Mollusca Mantle",
legs="Wayfarer Slops",feet="Wayfarer Clogs"}

-- Engaged Physical Damage Taken - 50% Set
sets.TP.PDT = {ammo=X,head="Iuitl Headgear",neck="Wiglen Gorget",ear1="Darkness Earring",
ear2="Darkness Earring",body="Iuitl Vest",hands="Iuitl Wristbands",ring1="Defending Ring",
ring2="Dark Ring",back="Iximulew Cape",legs="Iuitl Tights",feet="Iuitl Gaiters"}

-- Engaged Breath Damage Taken - Set
sets.TP.BDT = {ammo=X,neck="Twilight Torque",ring1="Defending Ring",back="Mollusca Mantle"}

-- Engaged Damage Taken - Set
sets.TP.DT = {ammo=X,neck="Twilight Torque",ring1="Defending Ring",back="Mollusca Mantle"}

-- Engaged Accuracy Set
sets.TP.ACC = {ammo="Honed Tathlum",head="Manibozho Beret",ear1="Heartseeker Earring",
ear2="Steelflash Earring",body="Manibozho Jerkin",hands="Buremte Gloves",
ring1="Ulthalam's Ring",legs="Manibozho Brais",feet="Manibozho Boots"}

sets.Idle = {}

-- Idle Sets

-- Idle Regen Set
sets.Idle.Reg = {ammo=X,head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",ear1="Darkness Earring",
ear2="Darkness Earring",body="Iuitl Vest",hands="Iuitl Wristbands",ring1="Paguroidea Ring",
ring2="Sheltered Ring",back="Iximulew Cape",waist="Flume Belt",
legs="Iuitl Tights",feet="Iuitl Gaiters"}

-- Idle Refresh Set
sets.Idle.Ref = {main="Terra's Staff",sub="Oneiros Grip",ammo=X,head="Wayfarer Circlet",
neck="Wiglen Gorget",ear1="Darkness Earring",ear2="Darkness Earring",body="Wayfarer Robe",
hands="Wayfarer Cuffs",ring1="Defending Ring",ring2="Dark Ring",back="Mollusca Mantle",
waist="Flume Belt",legs="Wayfarer Slops",feet="Wayfarer Clogs"}

-- Idle Magic Damage Taken - / Magic Def. Bonus + Set
sets.Idle.MDT = {ammo=X,neck="Twilight Torque",ring1="Defending Ring",
ring2="Dark Ring",back="Mollusca Mantle"}

-- Idle Physical Damage Taken - 50% Set
sets.Idle.PDT = {ammo=X,head="Iuitl Headgear",neck="Wiglen Gorget",ear1="Darkness Earring",
ear2="Darkness Earring",body="Iuitl Vest",hands="Iuitl Wristbands",ring1="Defending Ring",
ring2="Dark Ring",back="Iximulew Cape",legs="Iuitl Tights",feet="Iuitl Gaiters"}

-- Idle Breath Damage Taken - Set
sets.Idle.BDT = {ammo=X,neck="Twilight Torque",ring1="Defending Ring",back="Mollusca Mantle"}

-- Idle Damage Taken - Set
sets.Idle.DT = {ammo=X,neck="Twilight Torque",ring1="Defending Ring",back="Mollusca Mantle"}

sets.aftercast = {}

sets.aftercast.TP = sets.TP.DD
sets.aftercast.Idle = sets.Idle.Reg

--Command to set macro book
--Key Binds when file loads  
send_command('@input /macro book 19;wait .1;input /macro set 10')
send_command('@input /echo Idle Refresh mode, Engaged DD mode. ctrl = and ctrl - to change.')
send_command('bind ^= gs c toggle engaged')
send_command('bind ^- gs c toggle idle')
end

--Key Unbinds when file unloads / reloads
function file_unload()
send_command('unbind ^=')
send_command('unbind ^-')end

function precast(spell)
if sets.JA[spell.english]then equip(sets.JA[spell.english])
elseif spell.action_type=='Magic'then equip(sets['Fast Cast'])
elseif spell.action_type=='Ranged Attack'then equip(sets.Snapshot)
elseif spell.english:endswith('Roll')then equip(sets.Roll)
elseif spell.english:startswith('Dou')then equip(sets.Luz)
elseif spell.english=='Curing Waltz III'then equip(sets.JA.Waltz)
elseif spell.english=='Spectral Jig'and buffactive.sneak then send_command('cancel 71')
elseif spell.type=='CorsairShot'then equip(sets['Quick Draw'])
elseif spell.type=="WeaponSkill"and sets.WS[spell.english]then equip(sets.WS[spell.english])
elseif spell.type=='Step'or spell.type=='Flourish1'then equip(sets.TP.ACC)
end end 


function midcast(spell)
if spell.action_type=='Ranged Attack'then equip(sets.RangedAttack)end
end

function aftercast(spell)
if player.status=='Engaged'then equip(sets.aftercast.TP)else equip(sets.aftercast.Idle)
end 
end

function status_change(new,old)
if new=='Idle'then equip(sets.aftercast.Idle)
elseif new=='Resting'then equip(sets.aftercast.Idle)
elseif new=='Engaged'then equip(sets.aftercast.TP)end end

function self_command(command)
if command=='toggle engaged'
then if sets.aftercast.TP==sets.TP.DD 
then sets.aftercast.TP=sets.TP.Reg 
send_command('@input /echo Engaged set to Regen Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.Reg 
then sets.aftercast.TP=sets.TP.Refr 
send_command('@input /echo Engaged set to Refresh Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.Ref 
then sets.aftercast.TP=sets.TP.MDT 
send_command('@input /echo Engaged set to Magic Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.MDT 
then sets.aftercast.TP=sets.TP.PDT 
send_command('@input /echo Engaged set to Physical Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.PDT 
then sets.aftercast.TP=sets.TP.BDT 
send_command('@input /echo Engaged set to Breath Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.BDT 
then sets.aftercast.TP=sets.TP.DT 
send_command('@input /echo Engaged set to Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.DT 
then sets.aftercast.TP=sets.TP.ACC 
send_command('@input /echo Engaged set to Accuracy Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.ACC 
then sets.aftercast.TP=sets.TP.DD
send_command('@input /echo Engaged set to Damage Dealer Mode')equip(sets.aftercast.TP)end
elseif command=='toggle idle'
then if sets.aftercast.Idle==sets.Idle.Reg 
then sets.aftercast.Idle=sets.Idle.Ref
send_command('@input /echo Idle set to Refresh Mode')equip(sets.aftercast.Idle)
elseif sets.aftercast.Idle==sets.Idle.Ref 
then sets.aftercast.Idle=sets.Idle.MDT 
send_command('@input /echo Idle set to Magic Damage Taken - Mode')equip(sets.aftercast.Idle)
elseif sets.aftercast.Idle==sets.Idle.MDT 
then sets.aftercast.Idle=sets.Idle.PDT 
send_command('@input /echo Idle set to Physical Damage Taken - Mode')equip(sets.aftercast.Idle)
elseif sets.aftercast.Idle==sets.Idle.PDT 
then sets.aftercast.Idle=sets.Idle.BDT 
send_command('@input /echo Idle set to Breath Damage Taken - Mode')equip(sets.aftercast.Idle)
elseif sets.aftercast.Idle==sets.Idle.BDT 
then sets.aftercast.Idle=sets.Idle.DT 
send_command('@input /echo Idle set to Damage Taken - Mode')equip(sets.aftercast.Idle)
elseif sets.aftercast.Idle==sets.Idle.DT 
then sets.aftercast.Idle=sets.Idle.Reg 
send_command('@input /echo Idle set to Regen  Mode')equip(sets.aftercast.Idle)end end end

