function get_sets()

JA={}FC={}WeatherDay={}WS={}Mid={}TP={}Idle={}

send_command('@input /macro book 1;wait .1;input /macro set 8')

add_to_chat(200, '------Gearswap: Engaged mode Refresh (ALT + F2 to change)------')

add_to_chat(200, '------Gearswap: Idle mode Refresh (ALT + F3 to change)------')

send_command('bind !F2 gs c E')

send_command('bind !F3 gs c I')

 
JA.Benediction = {body="Cleric's briault +2"}
JA.Devotion = {body="Cleric's cap +2"}
JA.Martyr = {body="Cleric's mitts +2"}
JA['Elemental Seal'] = {main="Baqil Staff"}

FC.EnhancingMagic = {waist="Siegel Sash"}

FC.Stoneskin = set_combine(FC.EnhancingMagic, {hands="Carapacho Cuffs"})
	
FC.Normal = {ammo="Impatiens",head="Haruspex Hat",neck="Orison Locket",
ear1="Gifted Earring",ear2="Loquacious Earring",body="Marduk's Jubbah +1",hands="Gendewitha Gages",ring1="Prolix Ring",
ring2="Veneficium Ring",back="Swith Cape",waist="Witful Belt",legs="Orvail Pants +1",feet="Chelona Boots +1"}

FC.Cure = {sub="Dominie's Grip",head="Cleric's cap +2",
neck="Aceso's Choker",body="Heka's Kalasiris",ring1="Prolix Ring",
ring2="Veneficium Ring",back="Pahtli Cape",waist="Capricornian Rope",
legs="Nabu's Shalwar",feet="Cure Clogs"}

FC.Earth = {main="Vishrava I"}
FC.Fire = {main="Atar I"}
FC.Water = {main="Haoma I"}
FC.Wind = {main="Vayuvata I"}
FC.Ice = {main="Vourukasha I"}
FC.Thunder = {main="Apamajas I"}
FC.Light = {main="Arka I"}
FC.Dark = {main="Xsaeta I"}

WeatherDay.Fire = {waist='Karin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
WeatherDay.Earth = {waist='Dorin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
WeatherDay.Water = {waist='Suirin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
WeatherDay.Wind = {waist='Furin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
WeatherDay.Ice = {waist='Hyorin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
WeatherDay.Thunder = {waist='Rairin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
WeatherDay.Light = {waist='Korin Obi',back='Twilight Cape'}
WeatherDay.Dark = {waist='Anrin Obi',back='Twilight Cape'}

WS.Retribution = {neck="Twilight Torque"}
WS['Spirit Taker'] = {neck="Twilight Torque"}


Mid.Nuke = {main="Eminent Staff",sub="Zuuxowu Grip",ammo="Memoria Sachet",head="Wayfarer Circlet",
neck="Quanpur Necklace",ear1="Friomisi Earring",ear2="Hecate's Earring",body="Wayfarer Robe",
hands="Wayfarer Cuffs",ring1="Dark Ring",ring2="Dark Ring",back="Toro Cape",
waist="Aswang Sash",legs="Wayfarer Slops",feet="Wayfarer Clogs"}

Mid.Cure = {main="Arka IV",sub="Verse Strap +1",ammo="Incantor Stone",head="Gendewitha Caubeen",
neck="Orison Locket",ear1="Gifted Earring",ear2="Loquacious Earring",body="Orison Bliaud +2",
hands="Bokwus Gloves",ring1="Prolix Ring",ring2="Sirona's Ring",back="Orison Cape",
waist="Witful Belt",legs="Orison Pantaloons +2",feet="Wayfarer Clogs"}

Mid.NA = {head="Orison Cap +2",legs="Orison Pantaloons +2"}

Mid.Regen = {body="Cleric's Briault +2",hands="Orison Mitts +2",legs="Theophany pantaloons"}
	
Mid.Cursna = {main="Beneficus",sub="Genbu's Shield",head="Hyksos Khat",neck="Malison medallion",
body="Orison Bliaud +2",hands="Hieros mittens",ring1="Ephedra ring", ring2="Ephedra ring",
back="Mending cape",legs="Theophany pantaloons"}
	
Mid.Stoneskin = {hands="Gendewitha Gages",feet="Wayfarer Clogs"}
	
Mid.BarSolace = {main="Beneficus",head="Orison Cap +2",body="Orison Bliaud +2",hands="Orison Mitts +2",
legs="Cleric's Pantaloons +2",feet="Orison Duckbills +2"}
	
Mid.BarNoSolace = set_combine(Mid.BarSolace,{body="Blessed Briault"})
	
Mid.Shell = {ring2="Sheltered Ring",legs="Cleric's pantaloons +2"}
	
Mid.Pro = {ring2="Sheltered Ring",feet="Cleric's duckbills +2"}

TP.DD = {main="Eminent Staff"}

TP.ACC = {main="Eminent Staff"}

TP.REF = {main="Eminent Staff",sub="Verse Strap +1",ammo="Incantor Stone",head="Wivre Hairpin",
	neck="Twilight Torque",ear1="Black Earring",ear2="Darkness Earring",body="Gendewitha Bliaut",
	hands="Serpentes Cuffs",ring1="Dark Ring",ring2="Dark Ring",back="Cheviot Cape",
	waist="Slipor Sash",legs="Tatsu. Sitagoromo",feet="Serpentes Sabots"}
	
TP.MDT = {neck="Twilight Torque"}

TP.PDT = {neck="Twilight Torque"}

TP.DT = {neck="Twilight Torque"}

Idle.REF = {main="Owleyes",sub="Genbu's Shield",ammo="Incantor Stone",head="Wivre Hairpin",
	neck="Wiglen Gorget",ear1="Black Earring",ear2="Darkness Earring",body="Gendewitha Bliaut",
	hands="Serpentes Cuffs",ring1="Dark Ring",ring2="Dark Ring",back="Cheviot Cape",
	waist="Slipor Sash",legs="Tatsu. Sitagoromo",feet="Serpentes Sabots"}
	
Idle.REG = set_combine(Idle.REF, {neck="Wiglen Gorget",ring1="Paguroidea Ring",ring2="Sheltered Ring"})

Idle.MDT = {ring1="Dark Ring",ring2="Dark Ring"}

Idle.PDT = {ring1="Dark Ring",ring2="Dark Ring"}

Idle.DT = {ring1="Dark Ring",ring2="Dark Ring"}

Idle.Rest = {ring1="Dark Ring",ring2="Dark Ring"}

E = TP.REF
I = Idle.REF
   
windower.register_event('action', function(act)
if act.target_count ~= 0 then 
if act.targets[1].action_count ~= 0 then 
if act.targets[1].actions[1].message ~= 0 then
local mob = windower.ffxi.get_mob_by_target('bt')
if (mob and mob.is_npc and mob.id == act.actor_id) 
and S{7}:contains(act.category) then --{7} for TP, {8} for casting, {7,8} for TP and casting
windower.send_command('input /ma Stun <bt>')
windower.send_command("input /p Monster is TP'ing. Stunning!")end end end end end)end

function precast(spell)
if FC[(spell.element)]then equip(FC[(spell.element)])
if spell.action_type=='Magic'then equip(FC.Normal)
if spell.english:startswith('Cur') and spell.name ~= 'Cursna' then equip(FC.Cure)
elseif spell.type=='EnhancingMagic'then equip(FC.EnhancingMagic)
elseif spell.english=='Stoneskin'then equip(FC.Stoneskin)send_command('cancel 37')
elseif JA[spell.english]then equip(JA[spell.english])
elseif spell.type=='WeaponSkill'then if WS[spell.english]then equip(WS[spell.english])end end end end end

function midcast(spell)
if spell.skill=='ElementalMagic'or spell.skill=='DarkMagic'
or spell.skill=='EnfeeblingMagic'or spell.skill=='DivineMagic'then equip(Mid.Nuke)
if spell.element==world.weather_element or spell.element==world.day_element 
then equip(WeatherDay[spell.element])equip(Mid.Nuke)end
elseif spell.english:startswith('Cure')or spell.english:startswith('Cura')then equip(Mid.Cure)
if spell.element==world.weather_element or spell.element==world.day_element 
then equip(WeatherDay[spell.element])end
elseif spell.english=='Cursna'then equip(Mid.Cursna)
elseif spell.english=='Sneak'and spell.target.name==player.name and buffactive.sneak then send_command('cancel 71')
elseif spell.english=='Blink'and buffactive.blink then send_command('cancel 36')
elseif spell.english=='Stoneskin'then equip(Mid.Stoneskin)
elseif spell.english:startswith('Regen*')then equip(Mid.Regen)
elseif spell.english:startswith('Shell')then equip(Mid.Shell)
elseif spell.english:startswith('Pro')then equip(Mid.Pro)
elseif spell.english:startswith('na')and spell.name ~= 'Cursna'then equip(Mid.NA)
elseif spell.english:startswith('Bar')then 
if buffactive['Afflatus Solace'] then equip(Mid.BarSolace)else equip(Mid.BarNoSolace)end end
end

function aftercast(spell)
if player.status=='Engaged'then equip(E)
else equip(I)end end

function status_change(new,old)
if new=='Engaged'then equip(E)
elseif new=='Idle'then equip(I)
elseif new=='Resting'then equip(Idle.Rest)end end

function weathercheck(spell_element,set)
	if spell_element == world.weather_element or spell_element == world.day_element then
		equip(set,sets['WeatherDay_'..spell_element])
	else
		equip(set)
	end
end

function self_command(command)
    if command=='E'then 
    if E==TP.REF then E=TP.PDT add_to_chat(200, 'Gearswap: Engaged now Physical Damage Taken -')equip(E)
elseif E==TP.PDT then E=TP.MDT add_to_chat(200, 'Gearswap: Engaged now Magic Damage Taken -')equip(E)
elseif E==TP.MDT then E=TP.DT add_to_chat(200, 'Gearswap: Engaged now Damage Taken -')equip(E)
elseif E==TP.DT then E=TP.ACC add_to_chat(200, 'Gearswap: Engaged now Accuracy')equip(E)
elseif E==TP.ACC then E=TP.DD add_to_chat(200, 'Gearswap: Engaged now Damage Dealer')equip(E) 
elseif E==TP.DD then E=TP.REF add_to_chat(200, 'Gearswap: Engaged now Refresh')equip(E)end 

elseif command=='I'then 
    if I==Idle.REF then I=Idle.PDT add_to_chat(200, 'Gearswap: Idle now Physical Damage Taken -')equip(I)
elseif I==Idle.PDT then I=Idle.MDT add_to_chat(200, 'Gearswap: Idle now Magic Damage Taken -')equip(I)
elseif I==Idle.MDT then I=Idle.DT add_to_chat(200, 'Gearswap: Idle now Damage Taken -')equip(I)
elseif I==Idle.DT then I=Idle.REG add_to_chat(200, 'Gearswap: Idle now Regen')equip(I)
elseif I==Idle.REG then I=Idle.REF add_to_chat(200, 'Gearswap: Idle now Refresh')equip(I)end end end
