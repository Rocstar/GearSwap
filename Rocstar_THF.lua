function get_sets()
sets.precast = {}
sets.precast.JA = {}

--JA sets
sets.precast.JA.Mug = {head="Assassin's bonnet +2"}
sets.precast.JA.Steal = {head="Assassin's bonnet +2",
hands="Pillager's armlets +1",legs="Pillager's culottes +1",feet="Pillager's poulaines +1"}
sets.precast.JA['Perfect Dodge'] = {hands="Assassin's armlets +2"}
sets.precast.JA.Feint = {legs="Assassin's culottes +2"}
sets.precast.JA['Assassin\'s Charge'] = {feet="Assassin's poulaines +2"}
sets.precast.JA.Conspirator = {body="Raider's Vest +2"}
sets.precast.JA['Sneak Attack'] = {hands="Raider's armlets +2"}
sets.precast.JA.Collaborator = {head="Raider's Bonnet +2"}
sets.precast.JA.Accomplice = set_combine(sets.precast.JA.Collaborator)
sets.precast.JA.Despoil = {legs="Raider's Culottes +2",feet="Raider's Poulaines +2"}
sets.precast.JA.Hide = {body="Pillager's vest +1"}
sets.precast.JA['Trick Attack'] = {hands="Pillager's armlets +1"}
sets.precast.JA.Flee = {feet="Pillager's poulaines +1"}

--VIT set for Curing Waltz
sets.precast.JA.Waltz = {head="Ejekamal Mask",body="Iuitl Vest",hands="Buremte Gloves",
back="Iximulew Cape",legs="Kaabnax Trousers",feet="Iuitl Gaiters"}

sets.precast.WS = {}
--WS sets
--73% AGI mod on 1st merit, +3% for 2nd-5th merits. 85% AGI mod at 5/5.
sets.precast.WS.Exenterator = {Body="Asn. Vest +2",
feet="Asn. poulaines +2"}

--60% DEX
sets.precast.WS['Rudra\'s Storm'] = {Body="Asn. Vest +2",
feet="Asn. poulaines +2"}

--30% DEX
sets.precast.WS.Evisceration = set_combine(sets.precast.WS['Rudra\'s Storm'], {Body="Asn. Vest +2",
feet="Asn. poulaines +2"})

--30% DEX
sets.precast.WS['Mandalic Stab'] = set_combine(sets.precast.WS['Rudra\'s Storm'], {Body="Asn. Vest +2",
feet="Asn. poulaines +2"})

--50% DEX
sets.precast.WS['Shark Bite'] = set_combine(sets.precast.WS['Rudra\'s Storm'], {Body="Asn. Vest +2",
feet="Asn. poulaines +2"})

--28% DEX / 28% INT
sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS['Rudra\'s Storm'], {Body="Asn. Vest +2",
feet="Asn. poulaines +2"})

--40% CHR / 30% DEX
sets.precast.WS['Dancing Edge'] = set_combine(sets.precast.WS['Rudra\'s Storm'], {Body="Asn. Vest +2",
feet="Asn. poulaines +2"})

--60% STR
sets.precast.WS['Mercy Stroke'] = {Body="Asn. Vest +2",feet="Asn. poulaines +2"}

sets.TP = {}
--DD Set
sets.TP.DD = {main="Eminent Dagger",sub="Atoyac",head="Manibozho Beret",neck="Love Torque",
ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Manibozho Jerkin",hands="Buremte Gloves",
ring1="Epona's Ring",ring2="Cho'j Band",back="Atheling Mantle",waist="Twilight Belt",
legs="Manibozho Brais",feet="Manibozho Boots"}

--Accuracy set
sets.TP.AC = set_combine(sets.TP.DD, {main="Eminent Dagger",sub="Atoyac",head="Manibozho Beret",
neck="Love Torque",body="Manibozho Jerkin",hands="Buremte Gloves",waist="Dynamic Belt",
legs="Manibozho Brais",feet="Manibozho Boots"})

--Magic Damage Taken - set
sets.MD = set_combine(sets.TP.DD, {main="Eminent Dagger",sub="Atoyac",head="Ejekamal Mask",
neck="Twilight Torque",body="Iuitl Vest",hands="Buremte Gloves",
back="Mollusca Mantle",legs="Kaabnax Trousers",feet="Iuitl Gaiters"})

--Physical Damage Taken - set
sets.PD = set_combine(sets.TP.DD, {main="Eminent Dagger",sub="Atoyac",neck="Twilight Torque",
back="Mollusca Mantle"})

--Treasure Hunter set
sets.TP.TH = set_combine(sets.TP.DD, {main="Eminent Dagger",sub="Thief's Knife",
hands="Assassin's armlets +2",feet="Raider's Poulaines +2"})

--HP recovered while healing set
sets.Resting = {ammo="Iron Gobbet"}
sets.aftercast = {}

--Variable to toggle modes
sets.aftercast.TP = sets.TP.DD

--Idle set
sets.aftercast.Idle = {head="Ocelomeh Headpiece +1",neck="Orochi Nodowa",ring1="Paguroidea Ring",ring2="Sheltered Ring"}

--Command to set macro book when reloading file
send_command('input /macro book 4;wait .1;input /macro set 1')
end

function precast(spell)
if spell.english == 'Spectral Jig'and buffactive.sneak then send_command('cancel 71')
elseif spell.english:startswith('Cur')then equip(sets.precast.JA.Waltz)
elseif spell.type=='Step'or spell.type=='Flourish1'then equip(sets.TP.AC)
elseif spell.type=='WeaponSkill'then if sets.precast.WS[spell.name]then equip(sets.precast.WS[spell.name])
elseif sets.precast.JA[spell.english]then equip(sets.precast.JA[spell.english])end end end

function midcast(spell) 
end

function aftercast(spell)
if player.status=='Engaged'then equip(sets.aftercast.TP)
else equip(sets.aftercast.Idle)end end

function status_change(new,old)
    if new=='Engaged'then equip(sets.aftercast.TP)
elseif new=='Idle'then equip(sets.aftercast.Idle)
elseif new=='Resting'then equip(sets.Resting)
end end

function self_command(command)
if command=='toggle modes' then
if sets.aftercast.TP==sets.aftercast.Idle then sets.aftercast.TP=sets.MD 
send_command('@input /echo Magic Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.MD then sets.aftercast.TP=sets.PD 
send_command('@input /echo Physical Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.PD then sets.aftercast.TP=sets.TP.DD 
send_command('@input /echo Damage Dealer Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.DD then sets.aftercast.TP=sets.TP.TH 
send_command('@input /echo Treasure Hunter Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.TH then sets.aftercast.TP=sets.TP.AC 
send_command('@input /echo Accuracy Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.AC then sets.aftercast.TP=sets.aftercast.Idle 
send_command('@input /echo Idle Mode')equip(sets.aftercast.TP)end end end
