-- Macros  /console gs c toggle engaged or /console gs c toggle idle
function get_sets()

--Precast
sets.precast = {}

--Fast Cast Set
sets.precast.FC = {ammo="Impatiens",head="Athos's Chapeau",neck="Orunmila's Torque",
ear1="Loquacious Earring",hands="Thaumas Gloves",ring1="Veneficium Ring",ring2="Prolix Ring"}

--Utsusemi Casting time -
sets.precast.Utsu = set_combine(sets.precast.FC, {neck="Magoraga Beads"})

--Reduces elem. ninjutsu III cast time
sets.precast.San = set_combine(sets.precast.FC, {feet="Koga kyahan +2"})

--JA sets
sets.precast.JA = {}
sets.precast.JA['Mijin Gakure'] = {legs="Koga Hakama +2"}

--VIT set for Curing Waltz
sets.precast.JA.Waltz = {head="Hachiya Hatsuburi +1",body="Hachiya Chainmail +1",hands="Otronif Gloves",
ring1="Defending Ring",ring2="Dark Ring",back="Iximulew Cape",waist="Chuq'aba Belt",
legs="Hachiya Hakama +1",feet="Otronif Boots"}

sets.precast.WS = {}
sets.precast.WS['Blade: Hi'] = {ammo="Qirmiz Tathlum",head="Uk'uxkaj Cap",neck="Asperity Necklace",
ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Iga Ningi +2",hands="Buremte Gloves",
ring1="Epona's Ring",ring2="Rajas Ring",back="Atheling Mantle",waist="Cetl Belt",
legs="Manibozho Brais",feet="Manibozho Boots"}

sets.TP = {}
--Engaged DD Set
sets.TP.DD = {ammo="Qirmiz Tathlum",
head="Iga Zukin +2",neck="Asperity Necklace",ear1="Heartseeker Earring",ear2="Dudgeon Earring",
body="Hachiya Chainmail +1",hands="Buremte Gloves",ring1="Epona's Ring",ring2="Rajas Ring",
back="Atheling Mantle",waist="Cetl Belt",legs="Hachiya Hakama +1",feet="Manibozho Boots"}

--Engaged Regen set
sets.TP.RE = set_combine(sets.TP.DD, {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",
ring1="Paguroidea Ring",ring2="Sheltered Ring"})

--Engaged Accuracy set
sets.TP.AC = set_combine(sets.TP.DD, {head="Manibozho Beret",
body="Manibozho Jerkin",hands="Buremte Gloves",ring1="Ulthalam's Ring",ring2="Rajas Ring",
back="Yokaze Mantle",legs="Manibozho Brais",feet="Manibozho Boots"})

--Engaged Magic Damage Taken - set
sets.TP.MD = set_combine(sets.TP.PD, {head="Ejekamal Mask",neck="Twilight Torque",
body="Hachiya Chainmail +1",hands="Buremte Gloves",ring1="Defending Ring",ring2="Dark Ring",
back="Tuilha Cape",legs="Quiahuiz Leggings",feet="Otronif Boots"})

--Engaged Physical Damage Taken - set
sets.TP.PD = {ammo="Qirmiz Tathlum",
head="Otronif Mask",neck="Wiglen Gorget",ear1="Heartseeker Earring",ear2="Dudgeon Earring",
body="Otronif Harness",hands="Otronif Gloves",ring1="Defending Ring",ring2="Dark Ring",
back="Iximulew Cape",waist="Cetl Belt",legs="Otronif Brais",feet="Otronif Boots"}

--Midcast
sets.midcast = {}
sets.midcast.Utsu = set_combine(sets.TP.PD, {feet="Iga Kyahan +2"})
sets.midcast.Miga = set_combine(sets.TP.PD, {Body="Iga Ningi +2"})

--Ninjutsu Skill Set
sets.midcast.NinjutsuSkill = set_combine(sets.TP.PD, {head="Hachiya Hatsuburi +1",
ear1="Ninjutsu Earring",ear2="Stealth Earring",ring1="Antica Ring",back="Astute Cape",
waist="Cimmerian Sash",feet="Koga Kyahan +2"})

--Idle sets
sets.idle = {}

--Idle Regen set
sets.idle.RE = set_combine(sets.idle.PD, {head="Ocelomeh Headpiece +1",neck="Wiglen Gorget",
ring1="Paguroidea Ring",ring2="Sheltered Ring",feet="Hachiya Kyahan"})

--Idle Physical Damage Taken - set
sets.idle.PD = {ammo="Qirmiz Tathlum",
head="Otronif Mask",neck="Wiglen Gorget",ear1="Heartseeker Earring",ear2="Dudgeon Earring",
body="Otronif Harness",hands="Otronif Gloves",ring1="Defending Ring",ring2="Dark Ring",
back="Iximulew Cape",waist="Cetl Belt",legs="Otronif Brais",feet="Otronif Boots"}

--Idle Magic Damage Taken - set
sets.idle.MD = set_combine(sets.idle.RE, {head="Ejekamal Mask",neck="Twilight Torque",
body="Hachiya Chainmail +1",hands="Buremte Gloves",ring1="Defending Ring",ring2="Dark Ring",
back="Tuilha Cape",legs="Quiahuiz Leggings",feet="Otronif Boots"})

sets.aftercast = {}
sets.aftercast.TP = sets.TP.DD
sets.aftercast.idle = sets.idle.RE 

--To set macro book
send_command('input /macro book 1;wait .1;input /macro set 1')
send_command('@input /echo Engaged DD mode, Idle Regen mode. ctrl = and ctrl - to change mode.')
send_command('bind ^= gs c toggle engaged')
send_command('bind ^- gs c toggle idle')
end

function precast(spell)
if spell.action_type=='Magic'then equip(sets.precast.FC)
if spell.english:startswith('Utsusemi')then equip(sets.precast.Utsu)
if spell.english:endswith(': San')then equip(sets.precast.San)
elseif sets.precast.JA[spell.english]then equip(sets.precast.JA[spell.english])
elseif spell.english=='Spectral Jig'and buffactive.sneak then send_command('cancel 71')
elseif spell.english:startswith('Cur')then equip(sets.precast.JA.Waltz)
elseif spell.type=='Step'or spell.type=='Flourish1'then equip(sets.TP.AC)
elseif spell.type=='WeaponSkill'then if sets.precast.WS[spell.name]then 
equip(sets.precast.WS[spell.name])end end end end end

function midcast(spell) 
if spell.english:startswith('Utsusemi')then equip(sets.midcast.Utsu)
elseif spell.english:startswith('Migawari')then equip(sets.midcast.Miga)
elseif spell.english:startswith('Aisha','Jubaku','Hojo','Kurayami','Dokumori','Yurin')then 
equip(sets.midcast.NinjutsuSkill)end end

function aftercast(spell)
if player.status=='Engaged'then equip(sets.aftercast.TP)
else equip(sets.aftercast.Idle)end end

function status_change(new,old)
    if new=='Engaged'then equip(sets.aftercast.TP)
elseif new=='Idle'then equip(sets.aftercast.idle)end end

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
if sets.aftercast.Idle==sets.idle.RE then sets.aftercast.Idle=sets.idle.PD 
send_command('@input /echo Idle set to Physical Damage Taken - Mode')equip(sets.aftercast.idle)
elseif sets.aftercast.Idle==sets.idle.PD then sets.aftercast.Idle=sets.idle.MD 
send_command('@input /echo Idle set to Magic Damage Taken - Mode')equip(sets.aftercast.idle)
elseif sets.aftercast.Idle==sets.idle.MD then sets.aftercast.Idle=sets.idle.RE 
send_command('@input /echo Idle set to Regen Mode')equip(sets.aftercast.idle)end end end 

function file_unload()
send_command('unbind ^=')
send_command('unbind ^-')
end
