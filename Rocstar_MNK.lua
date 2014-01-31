--To toggle sets in game type //gs c toggle sets. Or macro /console gs c toggle sets
function get_sets()
sets.precast = {}
sets.precast.JA = {}
sets.precast.JA.Footwork = {feet="Tantra Gaiters +2"}
sets.precast.JA.Counterstance = {feet="Melee Gaiters +2"}
sets.precast.JA.Mantra = {feet="Melee Gaiters +2"}
sets.precast.JA['Hundred Fists'] = {legs="Melee hose +2"}
sets.precast.JA.Chakra = {body="Anchorite's Cyclas",hands="Melee Gloves +2"}
sets.precast.JA['Formless Strikes'] = {body="Melee cyclas +2"}
sets.precast.JA['Chi Blast'] = {body="Melee crown +2"}
sets.precast.JA.Step = {head="???",feet="???"}
sets.precast.JA['Violent Flourish'] = {head="???",feet="???"}
sets.precast.JA.Waltz = {head="Anwig Salade",neck="Dualism Collar",ring1="Valseur's Ring",ring2="Veela Ring",
waist="Aristo Belt",legs="Desultor Tassets",feet="Dance Shoes"}
sets.precast.WS = {}
--WS sets
sets.precast.WS.Retribution = {head="???",feet="???"}
sets.precast.WS['Victory Smite'] = {head="???",feet="???"}
sets.precast.WS['Final Heaven'] = set_combine(sets.precast.WS['Victory Smite'], {head="???",feet="???"})
sets.precast.WS['Ascetic\'s Fury'] = set_combine(sets.precast.WS['Victory Smite'], {head="???",feet="???"})
sets.precast.WS['Shijin Spiral'] = set_combine(sets.precast.WS['Victory Smite'], {head="???",feet="???"})
sets.TP = {}
--Damage Dealer set
sets.TP.DD = {head="???",feet="???"}
--Accuracy set
sets.TP.AC = {head="???",feet="???"}
--Magic Damage Taken - set
sets.MD = {head="???",feet="???"}
--Physical Damage Taken - set
sets.PD = {head="???",feet="???"}
--Resting Set
sets.Resting = {ammo="Iron Gobbet"}
sets.aftercast = {}
sets.aftercast.TP = sets.TP.DD
sets.aftercast.Idle = {head="Oce. Headpiece",neck="Wiglen Gorget",body="Melee cyclas +2",
ring1="Paguroidea Ring",ring2="Sheltered Ring"}
send_command('input /macro book 5;wait .1;input /macro set 1')
end

function precast(spell)
if sets.precast.JA[spell.english]then equip(sets.precast.JA[spell.english])
elseif spell.type=='WeaponSkill'then if sets.precast.WS[spell.name]then equip(sets.precast.WS[spell.name])
elseif spell.english=='Spectral Jig'then send_command('cancel 71')end end end

function midcast(spell)
end

function aftercast(spell)
if player.status=='Engaged'then equip(sets.aftercast.TP)
else equip(sets.aftercast.Idle)end end

function status_change(new,old)
    if new=='Engaged'then equip(sets.aftercast.TP)
elseif new=='Idle'then equip(sets.aftercast.Idle)
elseif new=='Resting'then equip(sets.Resting)end end


function self_command(command)
if command=='toggle sets' then
if sets.aftercast.TP==sets.TP.AC then sets.aftercast.TP=sets.MD 
send_command('@input /echo MAGIC DAMAGE TAKEN - SET')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.MD then sets.aftercast.TP=sets.PD 
send_command('@input /echo PHYSICAL DAMAGE TAKEN - SET')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.PD then sets.aftercast.TP=sets.TP.DD 
send_command('@input /echo DAMAGE DEALING SET')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.DD then sets.aftercast.TP=sets.TP.AC 
send_command('@input /echo ACCURACY SET')equip(sets.aftercast.TP)end end end
