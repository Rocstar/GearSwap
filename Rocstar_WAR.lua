function get_sets()

sets.JA = {}
sets.JA['Mighty Strikes'] = {hands="Warrior's Mufflers +2"}
sets.JA['Warrior\'s Charge'] = {legs="Warrior's Cuisses +2"}
sets.JA['Blood Rage'] = {body="Ravager's Lorica +2"}
sets.JA.Retaliation = {hands="Pummeler's mufflers +1",feet="Ravager's Calligae +2"}
sets.JA.Restraint = {head="Ravager's Mufflers +2"}
sets.JA.Warcry = {head="Warrior's Mask +2"}
sets.JA.Aggressor = {head="Pummeler's mask +1",body="Warrior's Lorica +2"}
sets.JA.Tomahawk = {feet="Warrior's Calligae +2"}
sets.JA.Berserk = {main="Conqueror",body="Pummeler's lorica +1",feet="Warrior's Calligae +2"}
sets.JA.Waltz = {head="Twilight Helm"}

sets.WS = {}
-- Upheaval 73% VIT mod on 1st merit, +3% for 2nd-5th merits. 85% VIT mod at 5/5.  Fusion / Compression
sets.WS.Upheaval = {head="Twilight Helm"}

-- Ukko's Fury 60% STR Light / Fragmentation
sets.WS["Ukko's Fury"] = {head="Twilight Helm"}

-- Fell Cleave 60% STR Scission / Detonation
sets.WS["Fell Cleave"] = {head="Twilight Helm"}

-- King's Justice 50% STR Fragmentation / Scission
sets.WS["King's Justice"] = {head="Twilight Helm"}

-- Metatron Torment 60% STR Light / Fusion
sets.WS["Metatron Torment"] = {head="Twilight Helm"}

-- Steel Cyclone 50% STR / 50% VIT Distortion / Detonation
sets.WS["Steel Cyclone"] = {head="Twilight Helm"}

sets.TP = {}
sets.TP.DD = {head="Twilight Helm"}
sets.TP.Regen = {head="Twilight Helm"}
sets.TP.Refresh = {head="Twilight Helm"}
sets.TP['Magic Damage Taken -'] = {head="Twilight Helm"}
sets.TP['Physical Damage Taken -'] = {head="Twilight Helm"}
sets.TP['Breath Damage Taken -'] = {head="Twilight Helm"}
sets.TP['Damage Taken -'] = {head="Twilight Helm"}
sets.TP.ACC = {head="Twilight Helm"}

sets.Idle = {}
sets.Idle.Regen = {head="Twilight Helm"}
sets.Idle.Refresh = {head="Twilight Helm"}
sets.Idle['Magic Damage Taken -'] = {head="Twilight Helm"}
sets.Idle['Physical Damage Taken -'] = {head="Twilight Helm"}
sets.Idle['Breath Damage Taken -'] = {head="Twilight Helm"}
sets.Idle['Damage Taken -'] = {head="Twilight Helm"}

--Aftercast Variables 
sets.aftercast = {}
sets.aftercast.TP = sets.TP.DD
sets.aftercast.Idle = sets.Idle.Regen

--Command to set macro book 
send_command('@input /macro book 1;wait .1;input /macro set 1')
send_command('@input /echo Idle Regen mode, Engaged DD mode. ctrl = and ctrl - to change.')
send_command('bind ^= gs c toggle engaged')
send_command('bind ^- gs c toggle idle')
end

function file_unload()
send_command('unbind ^=')
send_command('unbind ^-')end

function precast(spell)
if sets.JA[spell.english]then equip(sets.JA[spell.english])
elseif spell.type=="WeaponSkill"then if sets.WS[spell.english]then equip(sets.WS[spell.english])
elseif spell.english:startswith('Cur')then equip(sets.JA.Waltz)
elseif spell.type=='Step'or spell.type=='Flourish1'then equip(sets.TP.AC)
elseif spell.english == 'Spectral Jig'and buffactive.sneak then send_command('cancel 71')end end end

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
