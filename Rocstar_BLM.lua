function get_sets()
sets.Fish = {range="Ebisu Fishing Rod",ammo="Minnow",ammo="Sinking Minnow",ammo="Slice of Bluetail",ammo="Sardine Ball",
    neck="Fisher's Torque",Body="Fisherman's Smock",hands="Fisherman's Gloves",ring1="Noddy Ring",ring2="Puffin Ring",
    back="Nexus Cape",legs="Fisherman's Hose",feet="Waders"}
    
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

sets.midcast = {}
sets.midcast.Nuke = {main="Baqil Staff",sub="Elementa Grip",head="Buremte Hat",
    neck="Quanpur Necklace",ear1="Friomisi Earring",ear2="Hecate's Earring",body="Hagondes Coat",
hands="Quauhpilli Gloves",back="Toro Cape",waist="Aswang Sash",legs="Hagondes Pants",feet="Ux'uxkaj Boots"}
    sets.midcast.Cure = {main="Tamaxchi",sub="Verse Strap +1",head="Wayfarer Circlet",
hands="Bokwus Gloves",ring2="Sirona's Ring",legs="Wayfarer Slops"}
sets.midcast.Stoneskin = {main="???",feet="???"}
sets.midcast.Shell = {ring2="Sheltered Ring"}
sets.midcast.Pro = {ring2="Sheltered Ring"}
sets.midcast.Recast = {main="???",feet="???"}
sets.aftercast = {}

sets.aftercast.Idle = {main="Owleyes",sub="Genbu's Shield",ammo="Memoria Sachet",
    head="Buremte Hat",neck="Orochi Nodowa",ear1="Black Earring",ear2="Darkness Earring",
    body="Hagondes Coat",hands="Hagondes Cuffs",ring1="Sheltered Ring",ring2="Paguroidea Ring",
    back="Iximulew Cape",waist="Slipor Sash",legs="Hagondes Pants",feet="Serpentes Sabots"}
sets.aftercast.Engaged = set_combine(sets.midcast.Nuke, {head="gear",feet="more gear"})
sets.aftercast.HealingMP = set_combine(sets.aftercast.Idle, {head="gear",feet="more gear"})
	
sets.WeatherAndOrDay = {}
sets.WeatherAndOrDay.Fire = set_combine(sets.midcast.Nuke, {
    waist='Karin Obi',back='Twilight Cape',ring1='Zodiac Ring'})
sets.WeatherAndOrDay.Earth = set_combine(sets.midcast.Nuke, {
    waist='Dorin Obi',back='Twilight Cape',ring1='Zodiac Ring'})
sets.WeatherAndOrDay.Water = set_combine(sets.midcast.Nuke, {
    waist='Suirin Obi',back='Twilight Cape',ring1='Zodiac Ring'})
sets.WeatherAndOrDay.Wind = set_combine(sets.midcast.Nuke, {
    waist='Furin Obi',back='Twilight Cape',ring1='Zodiac Ring'})
sets.WeatherAndOrDay.Ice = set_combine(sets.midcast.Nuke, {
    waist='Hyorin Obi',back='Twilight Cape',ring1='Zodiac Ring'})
sets.WeatherAndOrDay.Thunder = set_combine(sets.midcast.Nuke, {
    waist='Rairin Obi',back='Twilight Cape',ring1='Zodiac Ring'})
sets.WeatherAndOrDay.Light = set_combine(sets.midcast.Cure, {
    waist='Korin Obi',back='Twilight Cape'})
sets.WeatherAndOrDay.Dark = set_combine(sets.midcast.Nuke, {
    waist='Anrin Obi',back='Twilight Cape'})
send_command('input /macro book 3;wait .1;input /macro set 1')
end

function precast(spell)
if spell.action_type=='Magic'then equip(sets.precast.FC.Normal)
if spell.skill=='ElementalMagic'then equip(sets.precast.FC.ElementalMagic)
if sets.precast.FC[spell.element]then equip(sets.precast.FC[spell.element])
elseif spell.english:startswith('Cur')then equip(sets.precast.FC.Cure)
elseif spell.type=='EnhancingMagic'then equip(sets.precast.EnhancingMagic)
elseif sets.precast.JA[spell.english]then equip(sets.precast.JA[spell.english])
elseif spell.type=='WeaponSkill'then if sets.precast.WS[spell.name]
then equip(sets.precast.WS[spell.name])end end end end end

function midcast(spell)
if spell.skill=='ElementalMagic'and spell.element==world.weather_element or spell.element==world.day_element 
then equip(sets.WeatherAndOrDay[spell.element])
elseif spell.skill=='ElementalMagic'then equip(sets.midcast.Nuke)
elseif spell.english:startswith('Cur')and spell.element==world.weather_element or spell.element==world.day_element 
then equip(sets.WeatherAndOrDay[spell.element])
elseif spell.english:startswith('Cur')then equip(sets.midcast.Cure)
elseif spell.english:startswith('Shell')then equip(sets.midcast.Shell)
elseif spell.english:startswith('Pro')then equip(sets.midcast.Pro)
elseif spell.english=='Blink'and buffactive.blink then send_command('cancel 36')
elseif spell.english=='Stoneskin'and buffactive.stoneskin then send_command('cancel 37')equip(sets.midcast.Stoneskin)
elseif spell.english=='Sneak'and spell.target.name==player.name and buffactive.sneak then 
send_command('cancel 71')end end

function weathercheck(spell_element)
if spell_element==world.weather_element or spell_element==world.day_element 
then equip(sets.WeatherAndOrDay[spell.element])
end end

function aftercast(spell)
if player.status=='Engaged'then equip(sets.aftercast.Engaged)
else equip(sets.aftercast.Idle)end end

function status_change(new,old)
if new=='Engaged'then equip(sets.aftercast.Engaged)disable('main','sub')
elseif new=='Resting'then equip(sets.aftercast.HealingMP)enable('main','sub')
elseif new=='Idle'then equip(sets.aftercast.Idle)end end
