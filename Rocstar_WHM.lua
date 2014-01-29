function get_sets()

-- precast sets =======================================================================
	sets.precast = {}
    sets.precast.EnhancingMagic = {waist="Siegel Sash"}
	
	sets.precast.JA = {}
    sets.precast.JA.Benediction = {body="Cleric's briault +2"}
    sets.precast.JA.Devotion = {body="Cleric's cap +2"}
    sets.precast.JA.Martyr = {body="Cleric's mitts +2"}
    sets.precast.JA['Elemental Seal'] = {main="Baqil Staff"}
	
	sets.precast.FC = {}
	sets.precast.FC.Normal = {ammo="Impatiens",head="Nahtirah Hat",neck="Orunmila's Torque",ear1="Loquacious Earring",
	body="Marduk's Jubbah +1",hands="Gendewitha Gages",ring1="Prolix Ring",ring2="Veneficium Ring",
	back="Swith Cape +1",waist="Witful Belt",legs="Orvail Pants +1",feet="Chelona Boots +1"}
		
    sets.precast.FC.Cure = set_combine(sets.precast.FC.Light, {sub="Dominie's Grip",head="Cleric's cap +2",neck="Aceso's Choker",body="Heka's Kalasiris",
	back="Pahtli Cape",waist="Capricornian Rope",legs="Nabu's Shalwar",feet="Cure Clogs"})
		
    sets.precast.FC.Stoneskin = set_combine(sets.precast.EnhancingMagic, {hands="Carapacho Cuffs"})
	
    sets.precast.FC.Earth = {main="Vishrava I"}
    sets.precast.FC.Fire = {main="Atar I"}
    sets.precast.FC.Water = {main="Haoma I"}
    sets.precast.FC.Wind = {main="Vayuvata I"}
    sets.precast.FC.Ice = {main="Vourukasha I"}
    sets.precast.FC.Thunder = {main="Apamajas I"}
    sets.precast.FC.Light = {main="Arka I"}
    sets.precast.FC.Dark = {main="Xsaeta I"}

    sets.precast.WS = {}
	sets.precast.WS.Retribution = {head="gear",feet="more gear"}
	sets.precast.WS['Spirit Taker'] = {head="gear",feet="more gear"}
	
-- midcast sets ========================================================================
    sets.midcast = {}
	sets.midcast.Recast = {head="gear",feet="more gear"}
	
	sets.midcast.CurePotency = {main="Arka IV",sub="Verse Strap +1",head="Wayfarer Circlet",hands="Bokwus Gloves",
	ring2="Sirona's Ring",legs="Wayfarer Slops"}
	
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
	
-- Aftercast Sets =======================================================================
    sets.aftercast = {}
    sets.aftercast.Idle = {main="Owleyes",sub="Genbu's Shield",ammo="Incantor Stone",head="Wivre Hairpin",
	neck="Twilight Torque",ear1="Black Earring",ear2="Darkness Earring",body="Gendewitha Bliaut",
	hands="Serpentes Cuffs",ring1="Dark Ring",ring2="Dark Ring",back="Cheviot Cape",
	waist="Slipor Sash",legs="Tatsu. Sitagoromo",feet="Serpentes Sabots"}
	
    sets.aftercast.Engaged = {head="gear",feet="more gear"}
	
    sets.aftercast.HealingMP = set_combine(sets.aftercast.Idle, {head="gear",feet="more gear"})
	
-- Weather and or Day Sets ============================================================
    sets.WeatherAndOrDay = {}
    sets.WeatherAndOrDay.Fire = {waist='Karin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    sets.WeatherAndOrDay.Earth = {waist='Dorin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    sets.WeatherAndOrDay.Water = {waist='Suirin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    sets.WeatherAndOrDay.Wind = {waist='Furin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    sets.WeatherAndOrDay.Ice = {waist='Hyorin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    sets.WeatherAndOrDay.Thunder = {waist='Rairin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
    sets.WeatherAndOrDay.Light = {waist='Korin Obi',back='Twilight Cape'}
    sets.WeatherAndOrDay.Dark = {waist='Anrin Obi',back='Twilight Cape'}
    send_command('input /macro book 5;wait .1;input /macro set 1')
end

function precast(spell)
if spell.action_type=='Magic'then equip(sets.precast.FC.Normal)
if spell.english:startswith('Cur') and spell.name ~= 'Cursna' then equip(sets.precast.FC.Cure)
if sets.precast.FC[spell.element]then equip(sets.precast.FC[spell.element]) 
elseif spell.type=='EnhancingMagic'then equip(sets.precast.EnhancingMagic)
if spell.english=='Stoneskin'then equip(sets.precast.FC.Stoneskin)
if sets.precast.JA[spell.english]then equip(sets.precast.JA[spell.english])
elseif spell.type=='WeaponSkill'then if sets.precast.WS[spell.name]then equip(sets.precast.WS[spell.name])
end end end end end end end

function midcast(spell)
if spell.english:startswith('Cure')or spell.english:startswith('Cura')then equip(sets.midcast.CurePotency)
if spell.element == world.weather_element or spell_element == world.day_element then equip(sets.WeatherAndOrDay[spell.element])
elseif spell.english=='Cursna'then equip(sets.midcast.Cursna) 
elseif spell.english=='Sneak'and spell.target.name==player.name and buffactive.sneak then send_command('cancel 71')
elseif spell.english=='Blink'and buffactive.blink then send_command('cancel 36')
elseif spell.english=='Stoneskin'and buffactive.stoneskin then send_command('cancel 37')equip(sets.midcast.Stoneskin)
elseif spell.english:startswith('Regen*')then equip(sets.midcast.Regen)
elseif spell.english:startswith('Shell*')then equip(sets.midcast.Shell)
elseif spell.english:startswith('Pro*')then equip(sets.midcast.Pro)
elseif spell.english:startswith('na')and spell.name ~= 'Cursna' then equip(sets.midcast.na)
elseif spell.english:startswith('Bar')then if buffactive['Afflatus Solace']
then equip(sets.midcast.BarSolace)else equip(sets.midcast.BarNoSolace)
end end end end

function aftercast(spell)
if player.status=='Engaged'then equip(sets.aftercast.Engaged)disable('main','sub')
else equip(sets.aftercast.Idle)
end end

function status_change(new,old)
if new=='Engaged'then equip(sets.aftercast.Engaged)disable('main','sub')
elseif new=='Idle'then equip(sets.aftercast.Idle)
elseif new=='Resting'then equip(sets.aftercast.HealingMP)
end end

function weathercheck(spell_element,set)
if spell_element==world.weather_element or spell_element==world.day_element then 
equip(set,sets['Obi_'..spell_element]) else equip(set)
end end
