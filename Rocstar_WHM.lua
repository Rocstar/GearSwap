function get_sets()

sets.JA = {}
sets.JA.Benediction = {body="Cleric's briault +2"}
sets.JA.Devotion = {body="Cleric's cap +2"}
sets.JA.Martyr = {body="Cleric's mitts +2"}
sets.JA['Elemental Seal'] = {main="Baqil Staff"}

sets.FC = {}
sets.FC.EnhancingMagic = {waist="Siegel Sash"}

sets.FC.Stoneskin = set_combine(sets.FC.EnhancingMagic, {hands="Carapacho Cuffs"})
	
sets.FC.Normal = {ammo="Impatiens",head="Haruspex Hat",neck="Orison Locket",
ear1="Gifted Earring",ear2="Loquacious Earring",body="Marduk's Jubbah +1",hands="Gendewitha Gages",ring1="Prolix Ring",
ring2="Veneficium Ring",back="Swith Cape",waist="Witful Belt",legs="Orvail Pants +1",feet="Chelona Boots +1"}

sets.FC.Cure = {sub="Dominie's Grip",head="Cleric's cap +2",
neck="Aceso's Choker",body="Heka's Kalasiris",ring1="Prolix Ring",
ring2="Veneficium Ring",back="Pahtli Cape",waist="Capricornian Rope",
legs="Nabu's Shalwar",feet="Cure Clogs"}

sets.FC.Earth = {main="Vishrava I"}
sets.FC.Fire = {main="Atar I"}
sets.FC.Water = {main="Haoma I"}
sets.FC.Wind = {main="Vayuvata I"}
sets.FC.Ice = {main="Vourukasha I"}
sets.FC.Thunder = {main="Apamajas I"}
sets.FC.Light = {main="Arka I"}
sets.FC.Dark = {main="Xsaeta I"}

sets.WeatherAndOrDay = {}
sets.WeatherAndOrDay.Fire = {waist='Karin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
sets.WeatherAndOrDay.Earth = {waist='Dorin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
sets.WeatherAndOrDay.Water = {waist='Suirin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
sets.WeatherAndOrDay.Wind = {waist='Furin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
sets.WeatherAndOrDay.Ice = {waist='Hyorin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
sets.WeatherAndOrDay.Thunder = {waist='Rairin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
sets.WeatherAndOrDay.Light = {waist='Korin Obi',back='Twilight Cape'}
sets.WeatherAndOrDay.Dark = {waist='Anrin Obi',back='Twilight Cape'}

sets.WS = {}
sets.WS.Retribution = {head="gear",feet="more gear"}
sets.WS['Spirit Taker'] = {head="gear",feet="more gear"}

sets.midcast = {}
sets.midcast.nuke = {waist="Tarutaru Sash"}

sets.midcast.CurePotency = {main="Arka IV",sub="Verse Strap +1",ammo="Incantor Stone",head="Gendewitha Caubeen",
neck="Orison Locket",ear1="Gifted Earring",ear2="Loquacious Earring",body="Orison Bliaud +2",
hands="Bokwus Gloves",ring1="Prolix Ring",ring2="Sirona's Ring",back="Orison Cape",
waist="Witful Belt",legs="Orison Pantaloons +2",feet="Wayfarer Clogs"}

sets.midcast.na = {head="Orison Cap +2",legs="Orison Pantaloons +2"}

sets.midcast.Regen = {body="Cleric's Briault +2",hands="Orison Mitts +2",legs="Theophany pantaloons"}
	
sets.midcast.Cursna = {main="Beneficus",sub="Genbu's Shield",head="Hyksos Khat",neck="Malison medallion",
body="Orison Bliaud +2",hands="Hieros mittens",ring1="Ephedra ring", ring2="Ephedra ring",
back="Mending cape",legs="Theophany pantaloons"}
	
sets.midcast.Stoneskin = {hands="Gendewitha Gages",feet="Wayfarer Clogs"}
	
sets.midcast.BarSolace = {main="Beneficus",head="Orison Cap +2",body="Orison Bliaud +2",hands="Orison Mitts +2",
legs="Cleric's Pantaloons +2",feet="Orison Duckbills +2"}
	
sets.midcast.BarNoSolace = set_combine(sets.midcast.BarSolace,{body="Blessed Briault"})
	
sets.midcast.Shell = {ring2="Sheltered Ring",legs="Cleric's pantaloons +2"}
	
sets.midcast.Pro = {ring2="Sheltered Ring",feet="Cleric's duckbills +2"}

sets.TP = {}
sets.TP.DD = {head="Twilight Helm"}
sets.TP.Regen = {neck="Wiglen Gorget",ring1="Paguroidea Ring",ring2="Sheltered Ring"}

sets.TP.Refresh = {main="Eminent Staff",sub="Verse Strap +1",ammo="Incantor Stone",head="Wivre Hairpin",
	neck="Twilight Torque",ear1="Black Earring",ear2="Darkness Earring",body="Gendewitha Bliaut",
	hands="Serpentes Cuffs",ring1="Dark Ring",ring2="Dark Ring",back="Cheviot Cape",
	waist="Slipor Sash",legs="Tatsu. Sitagoromo",feet="Serpentes Sabots"}
	
sets.TP['Magic Damage Taken -'] = {head="Twilight Helm"}
sets.TP['Physical Damage Taken -'] = {head="Twilight Helm"}
sets.TP['Breath Damage Taken -'] = {head="Twilight Helm"}
sets.TP['Damage Taken -'] = {head="Twilight Helm"}
sets.TP.ACC = {head="Twilight Helm"}

sets.Idle = {}
sets.Idle.Regen = {neck="Wiglen Gorget",ring1="Paguroidea Ring",ring2="Sheltered Ring"}

sets.Idle.Refresh = {main="Owleyes",sub="Genbu's Shield",ammo="Incantor Stone",head="Wivre Hairpin",
	neck="Twilight Torque",ear1="Black Earring",ear2="Darkness Earring",body="Gendewitha Bliaut",
	hands="Serpentes Cuffs",ring1="Dark Ring",ring2="Dark Ring",back="Cheviot Cape",
	waist="Slipor Sash",legs="Tatsu. Sitagoromo",feet="Serpentes Sabots"}
	
sets.Idle['Magic Damage Taken -'] = {ring1="Dark Ring",ring2="Dark Ring"}
sets.Idle['Physical Damage Taken -'] = {ring1="Dark Ring",ring2="Dark Ring"}
sets.Idle['Breath Damage Taken -'] = {ring1="Dark Ring",ring2="Dark Ring"}
sets.Idle['Damage Taken -'] = {ring1="Dark Ring",ring2="Dark Ring"}

sets.aftercast = {}
sets.aftercast.TP = sets.TP.DD
sets.aftercast.Idle = sets.Idle.Refresh
sets.aftercast.Resting = set_combine(sets.aftercast.Idle, {head="gear",feet="more gear"})

send_command('@input /macro book 2;wait .1;input /macro set 1')
send_command('@input /echo Idle Refresh mode, Engaged DD mode. ctrl = and ctrl - to change.')
send_command('bind ^= gs c toggle engaged')
send_command('bind ^- gs c toggle idle')
    
end

function file_unload()
send_command('unbind ^=')
send_command('unbind ^-')end

function precast(spell)
if sets.FC[(spell.element)]then equip(sets.FC[(spell.element)])
if spell.action_type=='Magic'then equip(sets.FC.Normal)
if spell.english:startswith('Cur') and spell.name ~= 'Cursna' then equip(sets.FC.Cure)
elseif spell.type=='EnhancingMagic'then equip(sets.FC.EnhancingMagic)
elseif spell.english=='Stoneskin'then equip(sets.FC.Stoneskin)
elseif sets.JA[spell.english]then equip(sets.JA[spell.english])
elseif spell.type=='WeaponSkill'then if sets.WS[spell.name]then equip(sets.WS[spell.name])end end end end end

function midcast(spell)
if spell.skill=='ElementalMagic'then equip(sets.midcast.nuke)
if spell.element==world.weather or spell.element==world.day_element then 
equip(sets.WeatherAndOrDay[spell.element])equip(sets.midcast.nuke)end
elseif spell.skill=='DivineMagic'then equip(sets.midcast.nuke)
if spell.element==world.weather or spell.element==world.day_element then 
equip(sets.WeatherAndOrDay[spell.element])equip(sets.midcast.nuke)end
elseif spell.english:startswith('Cure')or spell.english:startswith('Cura')then 
equip(sets.midcast.CurePotency)
if spell.element==world.weather or spell.element==world.day_element then 
equip(sets.WeatherAndOrDay[spell.element])end
elseif spell.english=='Cursna'then equip(sets.midcast.Cursna)
elseif spell.english=='Sneak'and spell.target.name==player.name and buffactive.sneak then send_command('cancel 71')
elseif spell.english=='Blink'and buffactive.blink then send_command('cancel 36')
elseif spell.english=='Stoneskin' and buffactive.stoneskin then send_command('cancel 37')equip(sets.midcast.Stoneskin)
elseif spell.english:startswith('Regen*')then equip(sets.midcast.Regen)
elseif spell.english:startswith('Shell')then equip(sets.midcast.Shell)
elseif spell.english:startswith('Pro')then equip(sets.midcast.Pro)
elseif spell.english:startswith('na')and spell.name ~= 'Cursna'then equip(sets.midcast.na)
elseif spell.english:startswith('Bar')then 
if buffactive['Afflatus Solace'] then equip(sets.midcast.BarSolace)else equip(sets.midcast.BarNoSolace)end
end 
end

function aftercast(spell)
if player.status=='Engaged'then equip(sets.aftercast.TP)
else equip(sets.aftercast.Idle)end end

function status_change(new,old)
if new=='Engaged'then equip(sets.aftercast.TP)disable('main','sub')
elseif new=='Idle'then equip(sets.aftercast.Idle)
elseif new=='Resting'then equip(sets.aftercast.Resting)enable('main','sub')end end

function weathercheck(spell_element)
if spell_element==world.weather_element or spell_element==world.day_element 
then equip(sets.WeatherAndOrDay[spell.element])end end 

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
