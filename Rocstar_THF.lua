function get_sets()
sets.JA = {}
sets.JA.Mug = {head="Assassin's bonnet +2"}
sets.JA.Steal = {head="Assassin's bonnet +2",hands="Pillager's armlets +1",
legs="Pillager's culottes +1",feet="Pillager's poulaines +1"}
sets.JA['Perfect Dodge'] = {hands="Assassin's armlets +2"}
sets.JA.Feint = {legs="Assassin's culottes +2"}
sets.JA['Assassin\'s Charge'] = {feet="Assassin's poulaines +2"}
sets.JA.Conspirator = {body="Raider's Vest +2"}
sets.JA['Sneak Attack'] = {hands="Raider's armlets +2"}
sets.JA.Collaborator = {head="Raider's Bonnet +2"}
sets.JA.Accomplice = set_combine(sets.JA.Collaborator)
sets.JA.Despoil = {legs="Raider's Culottes +2",feet="Raider's Poulaines +2"}
sets.JA.Hide = {body="Pillager's vest +1"}
sets.JA['Trick Attack'] = {hands="Pillager's armlets +1"}
sets.JA.Flee = {feet="Pillager's poulaines +1"}

--VIT set for Curing Waltz
sets.JA.Waltz = {head="Uk'uxkaj Cap",body="Iuitl Vest",hands="Buremte Gloves",
back="Iximulew Cape",waist="Chuq'aba Belt",legs="Kaabnax Trousers",feet="Iuitl Gaiters"}

--WS sets
sets.WS = {}
sets.WS.SA = {}
sets.WS.TA = {}
sets.WS.SATA = {}

-- Exenterator 73% AGI mod on 1st merit, +3% for 2nd-5th merits. 85% AGI mod at 5/5.
sets.WS.Exenterator = {feet="Asn. poulaines +2"}
sets.WS.SA.Exenterator = set_combine(sets.WS.Exenterator,{hands="Raider's Armlets +2"})
sets.WS.TA.Exenterator = set_combine(sets.WS.Exenterator,{hands="Iuitl Wristbands"})
sets.WS.SATA.Exenterator = sets.WS.TA.Exenterator

-- Rudra's Storm 60% DEX
sets.WS['Rudra\'s Storm'] = {feet="Assassin's poulaines +2"}
sets.WS.SA['Rudra\'s Storm'] = set_combine(sets.WS['Rudra\'s Storm'],{hands="Raider's Armlets +2"})
sets.WS.TA['Rudra\'s Storm'] = set_combine(sets.WS['Rudra\'s Storm'],{hands="Pillager's Armlets +1"})
sets.WS.SATA['Rudra\'s Storm'] = sets.WS.TA['Rudra\'s Storm']

-- Evisceration 30% DEX
sets.WS.Evisceration = {feet="Asn. poulaines +2"}
sets.WS.SA.Evisceration = set_combine(sets.WS.Evisceration,{hands="Raider's Armlets +2"})
sets.WS.TA.Evisceration = set_combine(sets.WS.Evisceration,{hands="Pillager's Armlets +1"})
sets.WS.SATA.Evisceration = sets.WS.TA.Evisceration

-- Mandalic Stab 30% DEX
sets.WS['Mandalic Stab'] = {feet="Asn. poulaines +2"}
sets.WS.SA['Mandalic Stab'] = set_combine(sets.WS['Mandalic Stab'],{hands="Raider's Armlets +2"})
sets.WS.TA['Mandalic Stab'] = set_combine(sets.WS['Mandalic Stab'],{hands="Pillager's Armlets +1"})
sets.WS.SATA['Mandalic Stab'] = sets.WS.TA['Mandalic Stab']

-- Shark Bite 50% DEX
sets.WS['Shark Bite'] = {feet="Asn. poulaines +2"}
sets.WS.SA['Shark Bite'] = set_combine(sets.WS['Shark Bite'],{hands="Raider's Armlets +2"})
sets.WS.TA['Shark Bite'] = set_combine(sets.WS['Shark Bite'],{hands="Pillager's Armlets +1"})
sets.WS.SATA['Shark Bite'] = sets.WS.TA['Shark Bite']

-- Aeolian Edge 28% DEX / 28% INT
sets.WS['Aeolian Edge'] = {feet="Asn. poulaines +2"}
sets.WS.SA['Aeolian Edge'] = set_combine(sets.WS['Aeolian Edge'],{hands="Raider's Armlets +2"})
sets.WS.TA['Aeolian Edge'] = set_combine(sets.WS['Aeolian Edge'],{hands="Pillager's Armlets +1"})
sets.WS.SATA['Aeolian Edge'] = sets.WS.TA['Aeolian Edge']

-- Dancing Edge 40% CHR / 30% DEX
sets.WS['Dancing Edge'] = {feet="Asn. poulaines +2"}
sets.WS.SA['Dancing Edge'] = set_combine(sets.WS['Dancing Edge'],{hands="Raider's Armlets +2"})
sets.WS.TA['Dancing Edge'] = set_combine(sets.WS['Dancing Edge'],{hands="Pillager's Armlets +1"})
sets.WS.SATA['Dancing Edge'] = sets.WS.TA['Dancing Edge']

-- Mercy Stroke 60% STR
sets.WS['Mercy Stroke'] = {feet="Asn. poulaines +2"}
sets.WS.SA['Mercy Stroke'] = set_combine(sets.WS['Mercy Stroke'],{hands="Raider's Armlets +2"})
sets.WS.TA['Mercy Stroke'] = set_combine(sets.WS['Mercy Stroke'],{hands="Pillager's Armlets +1"})
sets.WS.SATA['Mercy Stroke'] = sets.WS.TA['Mercy Stroke']

--Engaged sets
sets.TP = {}

--Engaged Regen set
sets.TP.RE = {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",ring1="Paguroidea Ring",ring2="Sheltered Ring"}

--Engaged DD Set
sets.TP.DD = {main="Eminent Dagger",sub="Atoyac",range="Raider's Boomerang",head="Uk'uxkaj Cap",neck="Love Torque",
ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Manibozho Jerkin",hands="Buremte Gloves",
ring1="Epona's Ring",ring2="Cho'j Band",back="Atheling Mantle",waist="Twilight Belt",
legs="Quiahuiz Leggings",feet="Manibozho Boots"}

--Engaged Accuracy set
sets.TP.AC = {head="Manibozho Beret",neck="Love Torque",body="Manibozho Jerkin",
hands="Buremte Gloves",waist="Dynamic Belt",legs="Manibozho Brais",feet="Manibozho Boots"}

--Engaged Magic Damage Taken - set
sets.TP.MD = {head="Ejekamal Mask",neck="Twilight Torque",body="Iuitl Vest",
hands="Buremte Gloves",back="Mollusca Mantle",legs="Kaabnax Trousers",feet="Iuitl Gaiters"}

--Engaged Physical Damage Taken - set
sets.TP.PD = {neck="Wiglen Gorget",back="Mollusca Mantle"}

--Engaged Treasure Hunter set
sets.TP.TH = set_combine(sets.TP.DD, {main="Eminent Dagger",sub="Thief's Knife",
hands="Assassin's armlets +2",feet="Raider's Poulaines +2"})

--Idle sets
sets.idle = {}

--Idle Regen set
sets.idle.RE = {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",
ring1="Paguroidea Ring",ring2="Sheltered Ring"}

--Idle Treasure Hunter set
sets.idle.TH = set_combine(sets.idle.RE, {main="Eminent Dagger",sub="Thief's Knife",
hands="Assassin's armlets +2",feet="Raider's Poulaines +2"})

--Idle Physical Damage Taken - set
sets.idle.PD = set_combine(sets.idle.RE, {head="Ejekamal Mask",neck="Wiglen Gorget",body="Iuitl Vest",
hands="Buremte Gloves",back="Mollusca Mantle",legs="Kaabnax Trousers",feet="Iuitl Gaiters"})

--Idle Magic Damage Taken - set
sets.idle.MD = set_combine(sets.idle.RE, {head="Ejekamal Mask",neck="Twilight Torque",body="Iuitl Vest",
hands="Buremte Gloves",back="Mollusca Mantle",legs="Kaabnax Trousers",feet="Iuitl Gaiters"})

--Aftercast Variables 
sets.aftercast = {}
sets.aftercast.TP = sets.TP.TH
sets.aftercast.idle = sets.idle.RE

--Command to set macro book when reloading file
send_command('@input /macro book 4;wait .1;input /macro set 1')
send_command('@input //gs equip sets.aftercast.idle')
send_command('@input /echo Idle Regen mode, Engaged TH mode. ctrl = and ctrl - to change.')
send_command('bind ^= gs c toggle engaged')
send_command('bind ^- gs c toggle idle')
end

function precast(spell)
if sets.JA[spell.english]then equip(sets.JA[spell.english])
elseif spell.english == 'Spectral Jig'and buffactive.sneak then send_command('cancel 71')
elseif spell.english:startswith('Cur')then equip(sets.JA.Waltz)
elseif spell.type=='Step'or spell.type=='Flourish1'then equip(sets.TP.AC)
elseif spell.type=='WeaponSkill'then if sets.WS[spell.name]then equip(sets.WS[spell.name])
if buffactive['sneak attack']and buffactive['trick attack']and sets.WS.SATA[spell.english]
then equip(sets.WS.SATA[spell.english])
elseif buffactive['sneak attack'] and sets.WS.SA[spell.english] then equip(sets.WS.SA[spell.english])
elseif buffactive['trick attack'] and sets.WS.TA[spell.english] then equip(sets.WS.TA[spell.english])end end end end

function aftercast(spell)
if player.status=='Engaged'then equip(sets.aftercast.TP)else equip(sets.aftercast.idle)end end

function status_change(new,old)
if new=='Idle'then equip(sets.aftercast.idle)
elseif new=='Resting'then equip(sets.aftercast.idle)
elseif new=='Engaged'then equip(sets.aftercast.TP)end end

function self_command(command)
if command=='toggle engaged'then 
if sets.aftercast.TP==sets.TP.DD then sets.aftercast.TP=sets.TP.TH 
send_command('@input /echo Engaged set to Treasure Hunter Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.TH then sets.aftercast.TP=sets.TP.PD 
send_command('@input /echo Engaged set to Physical Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.PD then sets.aftercast.TP=sets.TP.MD 
send_command('@input /echo Engaged set to Magic Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.MD then sets.aftercast.TP=sets.TP.RE 
send_command('@input /echo Engaged set to Regen Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.RE then sets.aftercast.TP=sets.TP.AC 
send_command('@input /echo Engaged set to Accuracy Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.AC then sets.aftercast.TP=sets.TP.DD 
send_command('@input /echo Engaged set to Damage Dealer Mode')equip(sets.aftercast.TP)
elseif command=='toggle idle'then
if sets.aftercast.Idle==sets.Idle.RE then sets.aftercast.Idle=sets.idle.TH
send_command('@input /echo Idle set to Treasure Hunter Mode')equip(sets.aftercast.idle)
elseif sets.aftercast.Idle==sets.Idle.TH then sets.aftercast.Idle=sets.idle.PD 
send_command('@input /echo Idle set to Physical Damage Taken - Mode')equip(sets.aftercast.idle)
elseif sets.aftercast.Idle==sets.Idle.PD then sets.aftercast.Idle=sets.idle.MD 
send_command('@input /echo Idle set to Magic Damage Taken - Mode')equip(sets.aftercast.idle)
elseif sets.aftercast.Idle==sets.Idle.MD then sets.aftercast.Idle=sets.idle.RE 
send_command('@input /echo Idle set to Regen Mode')equip(sets.aftercast.idle)end end end 
end

function file_unload()
send_command('unbind ^=')
send_command('unbind ^-')
end
