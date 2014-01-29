function get_sets()

-- precast sets =======================================================================
	sets.precast = {}
    sets.precast.EnhancingMagic = {waist="Siegel Sash"}
	
	sets.precast.JA = {}
    sets.precast.JA.Manafont = {body="Sorcerer's coat +2"}
    sets.precast.JA['Elemental Seal'] = {main="Baqil Staff"}
	
	sets.precast.FC = {}
	sets.precast.FC.Normal = {ammo="Impatiens",head="Haruspex Hat",ear1="Loquacious Earring",
	ring1="Prolix Ring",ring2="Veneficium Ring",
	back="Swith Cape",waist="Witful Belt",legs="Orvail Pants +1",}
		
    sets.precast.FC.Cure = set_combine(sets.precast.FC.Light, {sub="Dominie's Grip",body="Heka's Kalasiris",
	back="Pahtli Cape",waist="Capricornian Rope"})
		
    sets.precast.FC.Stoneskin = set_combine(sets.precast.EnhancingMagic, {hands="Carapacho Cuffs"})
	sets.precast.FC.ElementalMagic = {head="Goetia Petasos +2"}
    sets.precast.FC.Earth = {main="Vishrava I"}
    sets.precast.FC.Fire = {main="Atar I"}
    sets.precast.FC.Water = {main="Haoma I"}
    sets.precast.FC.Wind = {main="Vayuvata I"}
    sets.precast.FC.Ice = {main="Vourukasha I"}
    sets.precast.FC.Thunder = {main="Apamajas I"}
    sets.precast.FC.Light = {main="Arka I"}
    sets.precast.FC.Dark = {main="Xsaeta I"}

    sets.precast.WS = {}
	sets.precast.WS.Retribution = {head="???",feet="???"}
	sets.precast.WS['Spirit Taker'] = {main="???",feet="???"}
	
-- midcast sets ========================================================================
    sets.midcast = {}
	sets.midcast.Nuke = {main="Atinian Staff",sub="Zuuxowu Grip",ammo="Memoria Sachet",head="Wayfarer Circlet",
		ear1="Friomisi Earring",ear2="Hecate's Earring",body="Wayfarer Robe",hands="Wayfarer Cuffs",
		ring1="Dark Ring",ring2="Dark Ring",back="Toro Cape",waist="Aswang Sash",
		legs="Wayfarer Slops",feet="Wayfarer Clogs"}
	
	sets.midcast.Cure = {main="Arka IV",sub="Verse Strap +1",head="Wayfarer Circlet",
	hands="Bokwus Gloves",ring2="Sirona's Ring",legs="Wayfarer Slops"}
	
	sets.midcast.Stoneskin = {main="???",feet="???"}
	sets.midcast.Shell = {ring2="Sheltered Ring"}
	sets.midcast.Pro = {ring2="Sheltered Ring"}
	sets.midcast.Recast = {main="???",feet="???"}
	
-- Aftercast Sets =======================================================================
    sets.aftercast = {}
    sets.aftercast.Idle = {main="Owleyes",sub="Genbu's Shield",ammo="Memoria Sachet",
		head="Wayfarer Circlet",neck="Twilight Torque",ear1="Black Earring",ear2="Darkness Earring",
		body="Wayfarer Robe",hands="Wayfarer Cuffs",ring1="Dark Ring",ring2="Dark Ring",
		back="Cheviot Cape",waist="Slipor Sash",legs="Wayfarer Slops",feet="Wayfarer Clogs"}
	
    sets.aftercast.Engaged = set_combine(sets.midcast.Nuke, {head="gear",feet="more gear"})
		
    sets.aftercast.HealingMP = set_combine(sets.aftercast.Idle, {})
	
-- Weather and or Day Sets ============================================================
    sets.WeatherAndOrDay = {}
    sets.WeatherAndOrDay.Fire = {waist='Karin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    sets.WeatherAndOrDay.Earth = {waist='Dorin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    sets.WeatherAndOrDay.Water = {waist='Suirin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    sets.WeatherAndOrDay.Wind = {waist='Furin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    sets.WeatherAndOrDay.Ice = {waist='Hyorin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    sets.WeatherAndOrDay.Thunder = {waist='Rairin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    sets.WeatherAndOrDay.Light = {waist='Korin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    sets.WeatherAndOrDay.Dark = {waist='Anrin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    send_command('input /macro book 5;wait .1;input /macro set 1')end

function precast(spell)
if spell.action_type=='Magic'then equip(sets.precast.FC.Normal)
if spell.skill=='ElementalMagic'then equip(sets.precast.FC.ElementalMagic)
if sets.precast.FC[spell.element]then equip(sets.precast.FC[spell.element])
elseif spell.english:startswith('Cur')then equip(sets.precast.FC.Cure)
elseif spell.type=='EnhancingMagic'then equip(sets.precast.EnhancingMagic)
elseif sets.precast.JA[spell.english]then equip(sets.precast.JA[spell.english])
elseif spell.type=='WeaponSkill'then if sets.precast.WS[spell.name]then equip(sets.precast.WS[spell.name])end end end end end

function midcast(spell)
if spell.skill=='ElementalMagic'then equip(sets.midcast.Nuke)
if spell.element == world.weather_element or spell_element == world.day_element then equip(sets.WeatherAndOrDay[spell.element])
elseif spell.english:startswith('Cur')then equip(sets.midcast.Cure)
if spell.element == world.weather_element or spell_element == world.day_element then equip(sets.WeatherAndOrDay[spell.element])
elseif spell.english:startswith('Shell')then equip(sets.midcast.Shell)
elseif spell.english:startswith('Pro')then equip(sets.midcast.Pro)
elseif spell.english=='Blink'and buffactive.blink then send_command('cancel 36')
elseif spell.english=='Stoneskin'and buffactive.stoneskin then send_command('cancel 37')equip(sets.midcast.Stoneskin)
elseif spell.english=='Sneak'and spell.target.name==player.name and buffactive.sneak then send_command('cancel 71')end end end end

function weathercheck(spell_element,set)
if spell_element==world.weather_element 
or spell_element==world.day_element 
then equip(set,sets['WeatherAndOrDay_'..spell_element])
else equip(set)end end

function aftercast(spell)
if player.status=='Engaged'then equip(sets.aftercast.Engaged)disable('main','sub')
else equip(sets.aftercast.Idle)end end

function status_change(new,old)
if new=='Engaged'then equip(sets.aftercast.Engaged)
elseif new=='Resting'then equip(sets.aftercast.HealingMP)enable('main','sub')
elseif new=='Idle'then equip(sets.aftercast.Idle)end end
