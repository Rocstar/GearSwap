-- Macros  /console gs c toggle engaged or /console gs c toggle idle
function get_sets()

--JA sets
sets.precast = {}
sets.precast.JA = {}
--VIT set for Curing Waltz
sets.precast.JA.Waltz = {head="Uk'uxkaj Cap",body="Otronif Harness",hands="Otronif Gloves",
ring1="Defending Ring",ring2="Dark Ring",back="Iximulew Cape",waist="Chuq'aba Belt",
legs="Kaabnax Trousers",feet="Otronif Boots"}

sets.precast.WS = {}
sets.precast.WS['Blade: Hi'] = {ammo="Qirmiz Tathlum",head="Uk'uxkaj Cap",neck="Asperity Necklace",
ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Manibozho Jerkin",hands="Buremte Gloves",
ring1="Epona's Ring",ring2="Rajas Ring",back="Atheling Mantle",waist="Cetl Belt",
legs="Quiahuiz Leggings",feet="Manibozho Boots"}

sets.TP = {}
--Engaged DD Set
sets.TP.DD = {main="Kannagi",sub="Kiji",ammo="Qirmiz Tathlum",
head="Iga Zukin +2",neck="Asperity Necklace",ear1="Heartseeker Earring",ear2="Dudgeon Earring",
body="Hachiya Chainmail +1",hands="Buremte Gloves",ring1="Epona's Ring",ring2="Rajas Ring",
back="Atheling Mantle",waist="Cetl Belt",legs="Hachiya Hakama",feet="Manibozho Boots"}

--Engaged Regen set
sets.TP.RE = set_combine(sets.TP.DD, {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",
ring1="Paguroidea Ring",ring2="Sheltered Ring"})

--Engaged Accuracy set
sets.TP.AC = set_combine(sets.TP.DD, {head="Manibozho Beret",
body="Manibozho Jerkin",hands="Buremte Gloves",ring1="Ulthalam's Ring",ring2="Rajas Ring",
back="Yokaze Mantle",legs="Manibozho Brais",feet="Manibozho Boots"})

--Engaged Magic Damage Taken - set
sets.TP.MD = set_combine(sets.TP.DD, {head="Ejekamal Mask",neck="Twilight Torque",
body="Hachiya Chainmail +1",hands="Buremte Gloves",ring1="Defending Ring",ring2="Dark Ring",
back="Tuilha Cape",legs="Quiahuiz Leggings",feet="Otronif Boots"})

--Engaged Physical Damage Taken - set
sets.TP.PD = {main="Kannagi",sub="Kiji",ammo="Qirmiz Tathlum",
head="Otronif Mask",neck="Wiglen Gorget",ear1="Heartseeker Earring",ear2="Dudgeon Earring",
body="Otronif Harness",hands="Otronif Gloves",ring1="Defending Ring",ring2="Dark Ring",
back="Iximulew Cape",waist="Cetl Belt",legs="Otronif Brais",feet="Otronif Boots"}

--Idle sets
sets.Idle = {}

--Idle Regen set
sets.Idle.RE = {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",
ring1="Paguroidea Ring",ring2="Sheltered Ring"}

--Idle Physical Damage Taken - set
sets.Idle.PD = {main="Kannagi",sub="Kiji",ammo="Qirmiz Tathlum",
head="Otronif Mask",neck="Wiglen Gorget",ear1="Heartseeker Earring",ear2="Dudgeon Earring",
body="Otronif Harness",hands="Otronif Gloves",ring1="Defending Ring",ring2="Dark Ring",
back="Iximulew Cape",waist="Cetl Belt",legs="Otronif Brais",feet="Otronif Boots"}

--Idle Magic Damage Taken - set
sets.Idle.MD = set_combine(sets.Idle.RE, {head="Ejekamal Mask",neck="Twilight Torque",
body="Hachiya Chainmail +1",hands="Buremte Gloves",ring1="Defending Ring",ring2="Dark Ring",
back="Tuilha Cape",legs="Quiahuiz Leggings",feet="Otronif Boots"})

sets.aftercast = {}
sets.aftercast.TP = sets.TP.DD
sets.aftercast.Idle = sets.Idle.RE 

--To set macro book
send_command('input /macro book 1;wait .1;input /macro set 1')
send_command('@input /echo Engaged DD mode, Idle Regen mode.')
end

function precast(spell)
if sets.precast.JA[spell.english]then equip(sets.precast.JA[spell.english])
elseif spell.english=='Spectral Jig'and buffactive.sneak then send_command('cancel 71')
elseif spell.english:startswith('Cur')then equip(sets.precast.JA.Waltz)
elseif spell.type=='Step'or spell.type=='Flourish1'then equip(sets.TP.AC)
elseif spell.type=='WeaponSkill'then if sets.precast.WS[spell.name]then equip(sets.precast.WS[spell.name])end 
end
end 


function midcast(spell) 
end

function aftercast(spell)
if player.status=='Engaged'then equip(sets.aftercast.TP)
else equip(sets.aftercast.Idle)end end

function status_change(new,old)
    if new=='Engaged'then equip(sets.aftercast.TP)
elseif new=='Idle'then equip(sets.aftercast.Idle)
end 
end


function self_command(command)
if command=='toggle engaged'then
if sets.aftercast.TP==sets.TP.DD then sets.aftercast.TP=sets.TP.PD 
send_command('@input /echo Engaged set to Physical Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.PD then sets.aftercast.TP=sets.TP.MD 
send_command('@input /echo Engaged set to Magic Damage Taken - Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.MD then sets.aftercast.TP=sets.TP.RE 
send_command('@input /echo Engaged set to Regen Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.RE then sets.aftercast.TP=sets.TP.AC 
send_command('@input /echo Engaged set to Accuracy Mode')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.AC then sets.aftercast.TP=sets.TP.DD 
send_command('@input /echo Engaged set to Damage Dealer Mode')equip(sets.aftercast.TP)end

elseif command=='toggle idle'then
if sets.aftercast.Idle==sets.Idle.RE then sets.aftercast.Idle=sets.Idle.PD 
send_command('@input /echo Idle set to Physical Damage Taken - Mode')equip(sets.aftercast.Idle)
elseif sets.aftercast.Idle==sets.Idle.PD then sets.aftercast.Idle=sets.Idle.MD 
send_command('@input /echo Idle set to Magic Damage Taken - Mode')equip(sets.aftercast.Idle)
elseif sets.aftercast.Idle==sets.Idle.MD then sets.aftercast.Idle=sets.Idle.RE 
send_command('@input /echo Idle set to Regen Mode')equip(sets.aftercast.Idle)end 
end
end
