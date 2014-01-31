--To change modes 
--/console gs c toggle engaged or //gs c toggle engaged
--and /console gs c toggle idle or //gs c toggle idle
function get_sets()
sets.precast = {}
sets.precast.JA = {}
sets.precast.JA.Rampart = {head="Valor coronet +2"}
sets.precast.JA.Fealty = {body="Valor surcoat +2"}
sets.precast.JA.Chivalry = {hands="Valor gauntlets +2"}
sets.precast.JA.Invincible = {legs="Valor breeches +2"}
sets.precast.JA.Sentinel = {feet="Valor leggings +2"}
sets.precast.JA.Cover = {head="Reverence coronet +1"}
sets.precast.JA['Holy Circle'] = {feet="Reverence leggings +1"}
sets.precast.FC = {}
sets.precast.FC.Normal = {head="???",feet="???"}
sets.precast.FC.Cure = {head="???",feet="???"}
sets.precast.WS = {}
sets.precast.WS.Retribution = {head="???",feet="???"}
sets.precast.WS['Spirit Taker'] = {head="???",feet="???"}
sets.aftercast = {}
sets.aftercast.TP = sets.TP.DD
sets.aftercast.Idle = sets.Idle.IDLE
sets.TP = {}
--DD Set
sets.TP.DD = {head="???",feet="???"}
--Accuracy set
sets.TP.AC = set_combine(sets.TP.DD, {head="???",feet="???"})
sets.Idle = {}
sets.Idle.IDLE = {head="???",feet="???"}
--Magic Damage Taken - set
sets.MD = set_combine(sets.TP.DD, {head="???",feet="???"})
--Physical Damage Taken - set
sets.PD = set_combine(sets.TP.DD, {head="???",feet="???"})
--Weakness Set
sets.Weak = {head="Twilight Helm",body="Twilight Mail"}
send_command('input /macro book 4;wait .1;input /macro set 1')
end

function precast(spell)
if buffactive.weakened then equip(sets.Weak)disable('head','body')
if spell.action_type=='Magic'then equip(sets.precast.FC.Normal)
elseif spell.english:startswith('Cur')then equip(sets.precast.FC.Cure)
elseif sets.precast.JA[spell.english]then equip(sets.precast.JA[spell.english])
elseif spell.type=='WeaponSkill'then if sets.precast.WS[spell.name]then equip(sets.precast.WS[spell.name])
end end end end 

function aftercast(spell)
if buffactive~='weakened'enable('head','body')
if player.status=='Engaged'then equip(sets.aftercast.TP)
else equip(sets.aftercast.Idle)
end end end

function self_command(command)
if command=='toggle engaged' then
if sets.aftercast.TP==sets.Weak then sets.aftercast.TP=sets.MD 
send_command('@input /echo Engaged set to Magic Damage Taken -')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.MD then sets.aftercast.TP=sets.PD 
send_command('@input /echo Engaged set to Physical Damage Taken -')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.PD then sets.aftercast.TP=sets.TP.DD 
send_command('@input /echo Engaged set to Damage Dealer')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.DD then sets.aftercast.TP=sets.TP.AC 
send_command('@input /echo Engaged set to Accuracy')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.TP.AC then sets.aftercast.TP=sets.aftercast.Idle 
send_command('@input /echo Engaged set to Idle')equip(sets.aftercast.TP)
elseif sets.aftercast.TP==sets.aftercast.Idle then sets.aftercast.TP=sets.Weak 
send_command('@input /echo Engaged set to Weakness')equip(sets.aftercast.TP)

elseif command=='toggle idle' then
if sets.aftercast.Idle==sets.MD then sets.aftercast.Idle=sets.PD 
send_command('@input /echo Idle set to Physical Damage Taken -')equip(sets.aftercast.TP)
elseif sets.aftercast.Idle==sets.PD then sets.aftercast.Idle=sets.Weak 
send_command('@input /echo Idle set to Weakness')equip(sets.aftercast.TP)
elseif sets.aftercast.Idle==sets.Weak then sets.aftercast.Idle=sets.Idle.IDLE 
send_command('@input /echo Idle set to Idle')equip(sets.aftercast.TP) 
elseif sets.aftercast.Idle==sets.sets.Idle.IDLE then sets.aftercast.Idle=sets.MD 
send_command('@input /echo Idle set to to Magic Damage Taken -')equip(sets.aftercast.TP)
end end end end
