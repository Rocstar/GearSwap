function get_sets()



-- Job Ability Sets
sets.JA = {}

sets.JA['Wild Card'] = {feet="Commodore Bottes +2"}

sets.JA['Quick Draw'] = {head="Laksamana's Hat +1",feet="Laksamana's Bottes +1"}

sets.JA['Phantom Roll'] = {head="Commodore's Tricorne +2",hands="Navarch's Gants +2",ring2="Luzaf's Ring"}

sets.JA.LuzafRing = {ring2="Luzaf's Ring"}

sets.JA['Random Deal'] = {body="Commodore Frac +2"}

sets.JA.Fold = {hands="Commodore Gants +2"}

sets.JA['Snake Eye'] = {legs="Commodore Culottes +2"}

sets.JA['Caster\'s Roll'] = set_combine(sets.JA['Phantom Roll'], {legs="Navarch's Culottes +2"})

sets.JA['Courser\'s Roll'] = set_combine(sets.JA['Phantom Roll'], {feet="Navarch's Bottes +2"})

sets.JA['Blitzer\'s Roll'] = set_combine(sets.JA['Phantom Roll'], {head="Navarch's Tricorne +2"})
	
sets.JA['Tactician\'s Roll'] = set_combine(sets.JA['Phantom Roll'], {body="Navarch's Frac +2"})
	
sets.JA['Allies\' Roll'] = set_combine(sets.JA['Phantom Roll'], {hands="Navarch's Gants +2"})

-- Waltz Ability Delay -/TP Cost -/Potency +/VIT + Set
sets.JA.Waltz = {back="Iximulew Cape"}

sets.WS = {}

-- Magic Attack Bonus + WS Set
sets.WS.Magical = {ear1="Friomisi Earring",ear2="Hecate's Earring"}

-- Critical Hit Damage +, Critical Hit Rate +, Double/Triple/Quadruple Attack WS Set
sets.WS.Physical = {head="Uk'uxkaj Cap",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring"}

-- Ranged Magic Attack Bonus + WS SetMAB + WS Set
sets.WS.RangedMagical = {ear1="Friomisi Earring",ear2="Hecate's Earring"}

-- Critical Hit Damage +, Critical Hit Rate +, Ranged Attack/Accuracy WS Set
sets.WS.RangedPhysical = {hands="Manibozho Gloves"}

-- WS Sets

-- Exenterator 73% AGI mod on 1st merit, +3% for 2nd-5th merits. 85% AGI mod at 5/5.
sets.WS.Exenterator = set_combine(sets.WS.Physical,{neck="Breeze Gorget",waist="Breeze Belt"})

-- Evisceration 30% DEX
sets.WS.Evisceration = set_combine(sets.WS.Physical,{neck="Light Gorget",waist="Light Belt"})

-- Aeolian Edge 28% DEX / 28% INT
sets.WS['Aeolian Edge'] = set_combine(sets.WS.Magical,{neck="Breeze Gorget",waist="Breeze Belt"})

-- Requiescat 86% MND mod on 1st merit, +3.5% for 2nd-5th merits. 100% MND mod at 5/5.
sets.WS.Requiescat = set_combine(sets.WS.Physical,{neck="Shadow Gorget",waist="Shadow Belt"})

-- Savage Blade 50% MND / 30% STR
sets.WS['Savage Blade'] = set_combine(sets.WS.Physical,{neck="Breeze Gorget",waist="Breeze Belt"})

-- Last Stand 73% AGI mod on 1st merit, +3% for 2nd-5th merits. 85% AGI mod at 5/5.
sets.WS['Last Stand'] = set_combine(sets.WS.RangedPhysical,{neck="Light Gorget",waist="Light Belt"})

-- Wildfire 60% AGI
sets.WS.Wildfire = set_combine(sets.WS.RangedMagical,{neck="Shadow Gorget",waist="Shadow Belt"})

-- Leaden Salute 30% AGI
sets.WS['Leaden Salute'] = set_combine(sets.WS.RangedMagical,{neck="Shadow Gorget",waist="Shadow Belt"})

-- Detonator 30% AGI
sets.WS.Detonator = set_combine(sets.WS.RangedPhysical,{neck="Light Gorget",waist="Light Belt"})

sets.TP = {}

-- Engaged Sets

-- Engaged Damage Dealing Set
sets.TP.DD = {head="Uk'uxkaj Cap",neck="Asperity Necklace",ear1="Heartseeker Earring",ear2="Dudgeon Earring",
body="Manibozho Jerkin",hands="Buremte Gloves",ring1="Epona's Ring",ring2="Rajas Ring",back="Atheling Mantle",
waist="Cetl Belt",legs="Quiahuiz Leggings",feet="Manibozho Boots"}

-- Engaged Regen Set
sets.TP.Regen = {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",hands="Feronia's Bangles",
ring1="Paguroidea Ring",ring2="Sheltered Ring",waist="Lycopodium Sash"}

-- Engaged Refresh Set
sets.TP.Refresh = {head="Wayfarer Circlet",body="Wayfarer Robe",hands="Wayfarer Cuffs",
legs="Wayfarer Slops",feet="Wayfarer Clogs"}

-- Engaged Magic Damage Taken - / Magic Def. Bonus + Set
sets.TP['Magic Damage Taken -'] = {head="Wayfarer Circlet",neck="Twilight Torque",body="Wayfarer Robe",
hands="Wayfarer Cuffs",ring1="Defending Ring",ring2="Dark Ring",back="Mollusca Mantle",
legs="Wayfarer Slops",feet="Wayfarer Clogs"}

-- Engaged Physical Damage Taken - 50% Set
sets.TP['Physical Damage Taken -'] = {head="Iuitl Headgear",neck="Wiglen Gorget",ear1="Black Earring",
ear2="Darkness Earring",body="Iuitl Vest",hands="Iuitl Wristbands",ring1="Defending Ring",
ring2="Dark Ring",back="Iximulew Cape",legs="Iuitl Tights",feet="Iuitl Gaiters"}

-- Engaged Breath Damage Taken - Set
sets.TP['Breath Damage Taken -'] = {neck="Twilight Torque",ring1="Defending Ring",back="Mollusca Mantle"}

-- Engaged Damage Taken - Set
sets.TP['Damage Taken -'] = {neck="Twilight Torque",ring1="Defending Ring",back="Mollusca Mantle"}

-- Engaged Accuracy Set
sets.TP.ACC = {head="Manibozho Beret",body="Manibozho Jerkin",hands="Buremte Gloves",
legs="Manibozho Brais",feet="Manibozho Boots"}

sets.Idle = {}

-- Idle Sets

-- Idle Regen Set
sets.Idle.Regen = {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",hands="Feronia's Bangles",
ring1="Paguroidea Ring",ring2="Sheltered Ring",waist="Lycopodium Sash"}

-- Idle Refresh Set
sets.Idle.Refresh = {main="Terra's Staff",sub="Oneiros Grip",head="Wayfarer Circlet",
body="Wayfarer Robe",hands="Wayfarer Cuffs",legs="Wayfarer Slops",feet="Wayfarer Clogs"}

-- Idle Magic Damage Taken - / Magic Def. Bonus + Set
sets.Idle['Magic Damage Taken -'] = {neck="Twilight Torque",ring1="Defending Ring",
ring2="Dark Ring",back="Mollusca Mantle"}

-- Idle Physical Damage Taken - 50% Set
sets.Idle['Physical Damage Taken -'] = {head="Iuitl Headgear",neck="Wiglen Gorget",ear1="Black Earring",
ear2="Darkness Earring",body="Iuitl Vest",hands="Iuitl Wristbands",ring1="Defending Ring",
ring2="Dark Ring",back="Iximulew Cape",legs="Iuitl Tights",feet="Iuitl Gaiters"}

-- Idle Breath Damage Taken - Set
sets.Idle['Breath Damage Taken -'] = {neck="Twilight Torque",ring1="Defending Ring",back="Mollusca Mantle"}

-- Idle Damage Taken - Set
sets.Idle['Damage Taken -'] = {neck="Twilight Torque",ring1="Defending Ring",back="Mollusca Mantle"}

-- Aftercast Variables
-- Change sets.Idle.Regen to sets.Idle.Refresh for default refresh or use key binds 
sets.aftercast = {}
sets.aftercast.TP = sets.TP.DD
sets.aftercast.Idle = sets.Idle['Physical Damage Taken -']

--Command to set macro book
--Key Binds when file loads  
send_command('@input /macro book 1;wait .1;input /macro set 1')
send_command('@input /echo Idle Regen mode, Engaged DD mode. ctrl = and ctrl - to change.')
send_command('bind ^= gs c toggle engaged')
send_command('bind ^- gs c toggle idle')
end

--Key Unbinds when file unloads / reloads
function file_unload()
send_command('unbind ^=')
send_command('unbind ^-')end

function precast(spell)
if sets.JA[spell.english]then equip(sets.JA[spell.english])
elseif spell.english:endswith('Roll')then equip(sets.JA['Phantom Roll'])
elseif spell.english:endswith('Up')then equip(sets.JA.LuzafRing)
elseif spell.english:startswith('Curing Waltz')then equip(sets.JA.Waltz)
elseif spell.english=='Spectral Jig'and buffactive.sneak then send_command('cancel 71')
elseif spell.type=="WeaponSkill"then if sets.WS[spell.english]then equip(sets.WS[spell.english])end
elseif spell.type=='Step'or spell.type=='Flourish1'then equip(sets.TP.AC)end end

function aftercast(spell)
if player.status=='Engaged'then equip(sets.aftercast.TP)else equip(sets.aftercast.Idle)end end

function status_change(new,old)
if new=='Idle'then equip(sets.aftercast.Idle)
elseif new=='Resting'then equip(sets.aftercast.Idle)
elseif new=='Engaged'then equip(sets.aftercast.TP)end end

function self_command(command)
if command=='toggle engaged'
then if sets.aftercast.TP==sets.TP.DD 
then sets.aftercast.TP=sets.TP.Regen 
send_command('@input /echo Engaged set to Regen Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.Regen 
then sets.aftercast.TP=sets.TP.Refresh 
send_command('@input /echo Engaged set to Refresh Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.Refresh 
then sets.aftercast.TP=sets.TP['Magic Damage Taken -'] 
send_command('@input /echo Engaged set to Magic Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP['Magic Damage Taken -'] 
then sets.aftercast.TP=sets.TP['Physical Damage Taken -'] 
send_command('@input /echo Engaged set to Physical Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP['Physical Damage Taken -'] 
then sets.aftercast.TP=sets.TP['Breath Damage Taken -'] 
send_command('@input /echo Engaged set to Breath Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP['Breath Damage Taken -'] 
then sets.aftercast.TP=sets.TP['Damage Taken -'] 
send_command('@input /echo Engaged set to Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP['Damage Taken -'] 
then sets.aftercast.TP=sets.TP.ACC 
send_command('@input /echo Engaged set to Accuracy Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.ACC 
then sets.aftercast.TP=sets.TP.DD
send_command('@input /echo Engaged set to Damage Dealer Mode')equip(sets.aftercast.TP)end
elseif command=='toggle idle'
then if sets.aftercast.Idle==sets.Idle.Regen 
then sets.aftercast.Idle=sets.Idle.Refresh
send_command('@input /echo Idle set to Refresh Mode')equip(sets.aftercast.Idledle)
elseif sets.aftercast.Idle==sets.Idle.Refresh 
then sets.aftercast.Idle=sets.Idle['Magic Damage Taken -'] 
send_command('@input /echo Idle set to Magic Damage Taken - Mode')equip(sets.aftercast.Idledle)
elseif sets.aftercast.Idle==sets.Idle['Magic Damage Taken -'] 
then sets.aftercast.Idle=sets.Idle['Physical Damage Taken -'] 
send_command('@input /echo Idle set to Physical Damage Taken - Mode')equip(sets.aftercast.Idledle)
elseif sets.aftercast.Idle==sets.Idle['Physical Damage Taken -'] 
then sets.aftercast.Idle=sets.Idle['Breath Damage Taken -'] 
send_command('@input /echo Idle set to Breath Damage Taken - Mode')equip(sets.aftercast.Idledle)
elseif sets.aftercast.Idle==sets.Idle['Breath Damage Taken -'] 
then sets.aftercast.Idle=sets.Idle['Damage Taken -'] 
send_command('@input /echo Idle set to Damage Taken - Mode')equip(sets.aftercast.Idledle)
elseif sets.aftercast.Idle==sets.Idle['Damage Taken -'] 
then sets.aftercast.Idle=sets.Idle.Regen 
send_command('@input /echo Idle set to Regen  Mode')equip(sets.aftercast.idle)end end end
