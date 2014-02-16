PDEar1 = {name="Darkness Earring",augments={"Hp+3"}} --change these to own augments
PDEar2 = {name="Darkness Earring",augments={"Hp+7"}}
PDRing1 = {name="Dark Ring",augments={"Physical Damage Taken -6%", "Magic Damage Taken -3%"}} --these too
MDRing1 = {name="Dark Ring",augments={"Magic Damage Taken -6%"}}
BDRing1 = {name="Dark Ring",augments={"Breath Damage Taken -6%", "Magic Damage Taken -3%"}}

function file_unload()
send_command('unbind ^=')
send_command('unbind ^-'end

function get_sets()
send_command('bind ^- gs disable main sub')
send_command('bind ^= gs enable main sub')
send_command('input /macro book 3;wait .1;input /macro set 1')

sets = {}
sets.IdleNormal = {main="Owleyes",sub="Genbu's Shield",ammo="Shadow Sachet",head="Wayfarer Circlet",
neck="Wiglen Gorget",ear1=PDEar1,ear2=PDEar2,body="Wayfarer Robe",hands="Wayfarer Cuffs",
ring1="Sheltered Ring",ring2="Paguroidea Ring",back="Iximulew Cape",
waist="Cetl Belt",legs="Wayfarer Slops",feet="Wayfarer Clogs"}

sets.TPNormal = {main="Baqil Staff",sub="Tzacab Grip"}

sets.WS = {}
sets.WS.Retribution = {head="Buremte Hat",feet="Wayfarer Clogs"}
sets.WS['Spirit Taker'] = {head="Buremte Hat",feet="Wayfarer Clogs"}

sets.JA = {}
sets.JA.Manafont = {body="Sorcerer's coat +2"}
sets.JA['Elemental Seal'] = {main="Baqil Staff"}

sets.FC = {}
sets.FC.Normal = {ammo="Impatiens",head="Haruspex Hat",ear1="Loquacious Earring",
ring1="Prolix Ring",ring2="Veneficium Ring",back="Swith Cape",
waist="Witful Belt",legs="Orvail Pants +1",}

sets.FC.Cure = set_combine(sets.FC.Light,{body="Heka's Kalasiris",back="Pahtli Cape",waist="Capricornian Rope"})

sets.FC.EnhancingMagic = {waist="Siegel Sash"}

sets.FC.Stoneskin = set_combine(sets.FC.EnhancingMagic,{hands="Otomi Gloves"})

sets.FC.ElementalMagic = set_combine(sets.FC.Normal,{head="Goetia Petasos +2"})

sets.FC.Earth = {main="Vishrava I"}
sets.FC.Fire = {main="Atar I"}
sets.FC.Water = {main="Haoma I"}
sets.FC.Wind = {main="Vayuvata I"}
sets.FC.Ice = {main="Vourukasha I"}
sets.FC.Thunder = {main="Apamajas I"}
sets.FC.Light = {main="Arka I"}
sets.FC.Dark = {main="Xsaeta I"}

sets.midcast = {}
sets.midcast.Nuke = {main="Atinian Staff",sub="Zuuxowu Grip",ammo="Memoria Sachet",head="Buremte Hat",
neck="Quanpur Necklace",ear1="Friomisi Earring",ear2="Hecate's Earring",body="Hagondes Coat",
hands="Otomi Gloves",back="Toro Cape",waist="Aswang Sash",
legs="Hagondes Pants",feet="Wayfarer Clogs"}

sets.midcast.Cure = {main="Tamaxchi",head="Wayfarer Circlet",hands="Bokwus Gloves",
ring2="Sirona's Ring",legs="Wayfarer Slops"}

sets.midcast.Stoneskin = {head="Buremte Hat",feet="Wayfarer Clogs"}
sets.midcast.Shell = {ring2="Sheltered Ring"}
sets.midcast.Pro = {ring2="Sheltered Ring"}

sets.midcast.Recast = {head="Wayfarer Circlet",ear1="Loquacious Earring",body="Wayfarer Robe",
hands="Wayfarer Cuffs",back="Swith Cape",waist="Cetl Belt",
legs="Wayfarer Slops",feet="Wayfarer Clogs"}

sets.Day = {}
sets.Day.Fire = set_combine(sets.midcast.Nuke,{waist='Karin Obi',back='Twilight Cape',ring1='Zodiac Ring'})
sets.Day.Earth = set_combine(sets.midcast.Nuke,{waist='Dorin Obi',back='Twilight Cape',ring1='Zodiac Ring'})
sets.Day.Water = set_combine(sets.midcast.Nuke,{waist='Suirin Obi',back='Twilight Cape',ring1='Zodiac Ring'})
sets.Day.Wind = set_combine(sets.midcast.Nuke,{waist='Furin Obi',back='Twilight Cape',ring1='Zodiac Ring'})
sets.Day.Ice = set_combine(sets.midcast.Nuke,{waist='Hyorin Obi',back='Twilight Cape',ring1='Zodiac Ring'})
sets.Day.Thunder = set_combine(sets.midcast.Nuke,{waist='Rairin Obi',back='Twilight Cape',ring1='Zodiac Ring'})
sets.Day.Lightning = set_combine(sets.midcast.Nuke,{waist='Rairin Obi',back='Twilight Cape',ring1='Zodiac Ring'})
sets.Day.Light = set_combine(sets.midcast.Cure,{waist='Korin Obi',back='Twilight Cape'})
sets.Day.Dark = set_combine(sets.midcast.Nuke,{waist='Anrin Obi',back='Twilight Cape'})

sets.aftercast = {}
sets.aftercast.Idle = sets.IdleNormal
sets.aftercast.Engaged = sets.TPNormal
sets.aftercast.Resting = set_combine(sets.aftercast.Idle, {head="gear",feet="more gear"})
end

function precast(spell)
if spell.action_type=='Magic'then equip(sets.FC.Normal)end
if spell.skill=='ElementalMagic'then equip(sets.FC.ElementalMagic)end 
if sets.FC[spell.element]then equip(sets.FC[spell.element])end
if spell.english:startswith('Cur')then equip(sets.FC.Cure)end
if spell.type=='EnhancingMagic'then equip(sets.FC.EnhancingMagic)
elseif spell.english=='Stoneskin'then equip(sets.FC.Stoneskin)
elseif sets.JA[spell.english]then equip(sets.JA[spell.english])
elseif spell.type=='WeaponSkill'then if sets.WS[spell.name]then equip(sets.WS[spell.name])end end end 


function midcast(spell)
if spell.skill=='HealingMagic'then equip(sets.midcast.Cure)end
if spell.element==world.weather_element or spell.element==world.day_element then equip(sets.Day[spell.element])end 
if spell.skill=='ElementalMagic'or spell.skill=='DarkMagic'or spell.skill=='EnfeeblingMagic'
or spell.skill=='DivineMagic'then equip(sets.midcast.Nuke)end
if spell.element==world.weather_element or spell.element==world.day_element then equip(sets.Day[spell.element])
elseif spell.english=='Sneak'and spell.target.name==player.name and buffactive.sneak then send_command('cancel 71')
elseif spell.english=='Blink'and buffactive.blink then send_command('cancel 36')
elseif spell.english=='Stoneskin'then equip(sets.midcast.Stoneskin)send_command('cancel 37')
elseif spell.english:startswith('Regen*')then equip(sets.midcast.Regen)
elseif spell.english:startswith('Shell')then equip(sets.midcast.Shell)
elseif spell.english:startswith('Pro')then equip(sets.midcast.Pro)end end



function aftercast(spell)
if player.status=='Engaged'then equip(sets.aftercast.Engaged)
else equip(sets.aftercast.Idle)end end

function status_change(new,old)
if new=='Engaged'then equip(sets.aftercast.Engaged)
elseif new=='Resting'then equip(sets.aftercast.Resting)
elseif new=='Idle'then equip(sets.aftercast.Idle)end end

function weathercheck(spell_element,set)
	if spell_element == world.weather_element or spell_element == world.day_element then
		equip(set,sets['Day_'..spell_element])
	else
		equip(set)
	end
end
