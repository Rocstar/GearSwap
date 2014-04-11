function get_sets() pre = {} mid = {} 

----Macro Book Change
send_command('@input /macro book 1;wait .1;input /macro set 1')

----Message to display when loading the file
add_to_chat(200, 'Gearswap: Engaged DD (ALT -) Idle Refresh (ALT =)')
add_to_chat(200, 'Gearswap: Auto Stun (F10) //gs c ? for Help')


----Key Binds
send_command('bind !- gs c -')
send_command('bind != gs c =')
send_command('bind f10 gs c f10')

----Job Ability Sets
pre.Benediction = {body="Cleric's Briault +2"}

pre.Devotion = {head="Cleric's Cap +2"}

pre.Martyr = {hands="Cleric's Mitts +2"}

----Enhancing Magic Spellcasting Time set
pre.EnhancingMagic = {waist="Siegel Sash"}

----Stoneskin Spellcasting Time set
pre.Stoneskin = set_combine(pre.EnhancingMagic, {hands="Carapacho Cuffs"})

----Fast Cast set	
pre.cast = {ammo="Impatiens",head="Haruspex Hat",neck="Orison Locket",
ear1="Gifted Earring",ear2="Loquacious Earring",body="Marduk's Jubbah +1",hands="Gendewitha Gages",ring1="Prolix Ring",
ring2="Veneficium Ring",back="Swith Cape",waist="Witful Belt",legs="Orvail Pants +1",feet="Chelona Boots +1"}

----Cure Spelcasting Time set
pre.Cure = {sub="Dominie's Grip",head="Cleric's Cap +2",
neck="Aceso's Choker",body="Heka's Kalasiris",ring1="Prolix Ring",
ring2="Veneficium Ring",back="Pahtli Cape",waist="Capricornian Rope",
legs="Nabu's Shalwar",feet="Cure Clogs"}

----Weapon Skill sets
pre.Retribution = {neck="Twilight Torque"}

pre['Spirit Taker'] = {neck="Twilight Torque"}

----Fast Cast Spell Element sets
pre.Earth = {main="Vishrava I"}
pre.Fire = {main="Atar I"}
pre.Water = {main="Haoma I"}
pre.Wind = {main="Vayuvata I"}
pre.Ice = {main="Vourukasha I"}
pre.Thunder = {main="Apamajas I"}
pre.Light = {main="Arka I"}
pre.Dark = {main="Xsaeta I"}

mid.enhancing = {hands="Dynasty Mitts"}

----Weather and or Day sets
mid.Fire = {waist='Karin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
mid.Earth = {waist='Dorin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
mid.Water = {waist='Suirin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
mid.Wind = {waist='Furin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
mid.Ice = {waist='Hyorin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
mid.Thunder = {waist='Rairin Obi',back='Twilight Cape',ring1='Zodiac Ring'}
mid.Light = {waist='Korin Obi',back='Twilight Cape'}
mid.Dark = {waist='Anrin Obi',back='Twilight Cape'}

----Divine Magic set
mid.Divine = {neck="Twilight Torque"}

----MND Enfeebling Magic set
mid.MND_Enfeeb = {neck="Twilight Torque"}

----INT Enfeebling Magic set
mid.INT_Enfeeb = {neck="Twilight Torque"}

----Elemental Magic set
mid.Elemental = {neck="Twilight Torque"}

----Dark Magic set
mid.Dark = {main="Eminent Staff",sub="Zuuxowu Grip",ammo="Memoria Sachet",head="Espial Cap",
neck="Orison Locket",ear1="Gifted Earring",ear2="Loquacious Earring",body="Espial Gambison",
hands="Espial Cuffs",ring1="Prolix Ring",ring2="Veneficium Ring",back="Swith Cape",
waist="Witful Belt",legs="Wayfarer Slops",feet="Wayfarer Clogs"}

----Cure Potency set
mid.Cure = {main="Arka IV",sub="Verse Strap +1",ammo="Incantor Stone",head="Gendewitha Caubeen",
neck="Orison Locket",ear1="Gifted Earring",ear2="Loquacious Earring",body="Orison Bliaud +2",
hands="Bokwus Gloves",ring1="Prolix Ring",ring2="Sirona's Ring",back="Orison Cape",
waist="Witful Belt",legs="Orison Pantaloons +2",feet="Wayfarer Clogs"}

----Status Removal set
mid.NA = {head="Orison Cap +2",legs="Orison Pantaloons +2"}

----Regen set
mid.Regen = set_combine(mid.enhancing, {body="Cleric's Briault +2",hands="Orison Mitts +2",legs="Theophany pantaloons"}) 

----Cursna set	
mid.Cursna = {main="Beneficus",sub="Genbu's Shield",head="Hyksos Khat",neck="Malison medallion",
body="Orison Bliaud +2",hands="Hieros mittens",ring1="Ephedra ring", ring2="Ephedra ring",
back="Mending cape",legs="Theophany pantaloons"}

----Stoneskin set	
mid.Stoneskin = set_combine(mid.enhancing, {feet="Wayfarer Clogs"}) 

----Bar Element  set	
mid.BarSolace = {main="Beneficus",head="Orison Cap +2",body="Orison Bliaud +2",hands="Orison Mitts +2",
legs="Cleric's Pantaloons +2",feet="Orison Duckbills +2"}

----Bar Element No Afflatus Solace set	
mid.BarNoSolace = set_combine(mid.BarSolace,{body="Blessed Briault"})

----Shell set	
mid.Shell = set_combine(mid.enhancing, {ring2="Sheltered Ring",legs="Cleric's pantaloons +2"}) 

----Protect set	
mid.Pro = set_combine(mid.enhancing, {ring2="Sheltered Ring",feet="Cleric's duckbills +2"}) 

----Refresh set
REF = {main="Terra's Staff",sub="Oneiros Grip",ammo="Incantor Stone",head="Wivre Hairpin",
neck="Wiglen Gorget",ear1="Black Earring",ear2="Darkness Earring",body="Gendewitha Bliaut",
hands="Serpentes Cuffs",ring1="Dark Ring",ring2="Dark Ring",back="Cheviot Cape",
waist="Slipor Sash",legs="Tatsumaki Sitagoromo",feet="Serpentes Sabots"}

REG = {neck="Wiglen Gorget",ring1="Paguroidea Ring",ring2="Sheltered Ring"}

--Accuracy set
ACC = {main="Eminent Staff"}
	
--Magic Damage Taken - set
MDT = {neck="Twilight Torque"}

--Physical Damage Taken - set
PDT = {neck="Twilight Torque"}

--Breath Damage Taken - set
BDT = {neck="Twilight Torque"}

--Damage Taken - set
DT = {neck="Twilight Torque"}

--Damage Dealing set
DD = {main="Eminent Staff"}

----Healing MP set
Rest = {ring1="Dark Ring",ring2="Dark Ring"}

----Engaged is a variable
E = DD

----Idle is a variable
I = REF

----Auto Stun is a variable
A = false

windower.register_event('action', function(a)
local m = windower.ffxi.get_mob_by_target('bt')
if A ~= false then if a.target_count ~= 0 then 
if a.targets[1].action_count ~= 0 then
if a.targets[1].actions[1].message ~= 0 then 
if (m and m.is_npc and m.id == a.actor_id)and A:contains(a.category) then
windower.send_command('input /ma Stun <bt>')end end end end end end)end

function file_unload()
send_command('unbind !-') 
send_command('unbind !=') 
send_command('unbind f10') end

function precast(spell)
if pre[spell.element]then equip(pre[spell.element])
if spell.action_type=='Magic'then equip(pre.cast)
if spell.english:startswith('Cur') and spell.name ~= 'Cursna' then equip(pre[spell.element],pre.Cure)
elseif spell.type=='EnhancingMagic'then equip(pre.EnhancingMagic)
elseif spell.english=='Stoneskin'then equip(pre.Stoneskin)send_command('cancel 37')
elseif pre[spell.english]then equip(pre[spell.english])end end end end 


function midcast(spell) 
      if spell.skill == 'EnhancingMagic' and not windower.wc_match(spell.english, 
      	'Regen*|Protect*|Shell*|Stoneskin') then 
	    equip(mid.enhancing) 
	  elseif spell.skill == 'DivineMagic' then 
	    equip(mid.Divine) 
      elseif spell.skill == 'EnfeeblingMagic' and spell.english == 'Blind' then 
	    equip(mid.INT_Enfeeb) 
      elseif spell.skill == 'EnfeeblingMagic' and spell.english ~= 'Blind' then 
	    equip(mid.MND_Enfeeb) 
      elseif spell.skill == 'DarkMagic' then 
	    equip(mid.Dark) 
      elseif spell.skill == 'ElementalMagic' then 
	    equip(mid.Elemental) 
          if spell.element == world.day_element or spell.element == world.weather_element then 
            equip(mid.Elemental) 
		  end 
      elseif spell.english:startswith('Cur') and spell.name ~= 'Cursna' then 
	    equip(mid.Cure) 
          if spell.element == world.day_element or spell.element == world.weather_element then 
            equip(mid.Elemental) 
		  end
      elseif spell.english == 'Cursna' then 
	    equip(mid.Cursna) 
      elseif spell.english == 'Sneak' and spell.target.name == player.name and buffactive.sneak then 
	    send_command('cancel 71') 
      elseif spell.english == 'Blink' and buffactive.blink then 
	    send_command('cancel 36') 
      elseif spell.english == 'Stoneskin' then 
	    equip(mid.Stoneskin) 
      elseif spell.english:startswith('Regen*') then 
	    equip(mid.Regen) 
      elseif spell.english:startswith('Shell') then 
	    equip(mid.Shell) 
      elseif spell.english:startswith('Pro') 
	    then equip(mid.Pro) 
      elseif spell.english:startswith('na') and spell.name ~= 'Cursna' then 
	    equip(mid.NA) 
      elseif spell.english:startswith('Bar')then 
        if buffactive['Afflatus Solace'] then 
		  equip(mid.BarSolace) 
		else 
		  equip(mid.BarNoSolace) 
		end 
      end
end

function aftercast(spell)
if player.status=='Engaged'then equip(E)
else equip(I)end end

function status_change(new,old)
if new=='Engaged'then equip(E)
elseif new=='Idle'then equip(I)
elseif new=='Resting'then equip(Rest)end end

function self_command(command)
local mode = player.status
   if command=='e ref'then E=REF add_to_chat(200, 'Gearswap: Engaged now Refresh')if mode == 'Engaged'then equip(E)end
elseif command=='e reg'then E=REG add_to_chat(200, 'Gearswap: Engaged now Regen')if mode == 'Engaged'then equip(E)end
elseif command=='e acc'then E=ACC add_to_chat(200, 'Gearswap: Engaged now Accuracy')if mode == 'Engaged'then equip(E)end
elseif command=='e pdt'then E=PDT add_to_chat(200, 'Gearswap: Engaged now PDT -')if mode == 'Engaged'then equip(E)end
elseif command=='e mdt'then E=MDT add_to_chat(200, 'Gearswap: Engaged now MDT -')if mode == 'Engaged'then equip(E)end
elseif command=='e bdt'then E=BDT add_to_chat(200, 'Gearswap: Engaged now BDT -')if mode == 'Engaged'then equip(E)end
elseif command=='e dt' then E=DT add_to_chat(200, 'Gearswap: Engaged now DT -')if mode == 'Engaged'then equip(E)end
elseif command=='e dd' then E=DD add_to_chat(200, 'Gearswap: Engaged now DD')if mode == 'Engaged'then equip(E)end 

elseif command=='i fish'then I=FISH add_to_chat(200, 'Gearswap: Idle now Fishing')if mode ~= 'Engaged'then equip(I)end
elseif command=='i ref'then I=REF add_to_chat(200, 'Gearswap: Idle now Refresh')if mode ~= 'Engaged'then equip(I)end
elseif command=='i reg'then I=REG add_to_chat(200, 'Gearswap: Idle now Regen')if mode ~= 'Engaged'then equip(I)end
elseif command=='i acc'then I=ACC add_to_chat(200, 'Gearswap: Idle now Accuracy')if mode ~= 'Engaged'then equip(I)end
elseif command=='i pdt'then I=PDT add_to_chat(200, 'Gearswap: Idle now PDT -')if mode ~= 'Engaged'then equip(I)end
elseif command=='i mdt'then I=MDT add_to_chat(200, 'Gearswap: Idle now MDT -')if mode ~= 'Engaged'then equip(I)end
elseif command=='i bdt'then I=BDT add_to_chat(200, 'Gearswap: Idle now BDT -')if mode ~= 'Engaged'then equip(I)end
elseif command=='i dt' then I=DT add_to_chat(200, 'Gearswap: Idle now DT -')if mode ~= 'Engaged'then equip(I)end
elseif command=='i dd' then I=DD add_to_chat(200, 'Gearswap: Idle now DD')if mode ~= 'Engaged'then equip(I)end 

elseif command=='tp stun' then A=S{7} add_to_chat(200, 'Gearswap: Auto Stun now TP')
elseif command=='ma stun' then A=S{8} add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting')
elseif command=='yes stun' then A=S{7,8} add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting')
elseif command=='no stun' then A=false add_to_chat(200, 'Gearswap: Auto Stun now Disabled')

elseif command=='e'then
    if E==DD then E=REF add_to_chat(200, 'Gearswap: Engaged now Refresh')if mode == 'Engaged'then equip(E)end
elseif E==REF then E=ACC add_to_chat(200, 'Gearswap: Engaged now Accuracy')if mode == 'Engaged'then equip(E)end
elseif E==ACC then E=REG add_to_chat(200, 'Gearswap: Engaged now Regen')if mode == 'Engaged'then equip(E)end
elseif E==REG then E=PDT add_to_chat(200, 'Gearswap: Engaged now PDT -')if mode == 'Engaged'then equip(E)end
elseif E==PDT then E=MDT add_to_chat(200, 'Gearswap: Engaged now MDT -')if mode == 'Engaged'then equip(E)end
elseif E==MDT then E=BDT add_to_chat(200, 'Gearswap: Engaged now BDT -')if mode == 'Engaged'then equip(E)end
elseif E==BDT then E=DT add_to_chat(200, 'Gearswap: Engaged now DT -')if mode == 'Engaged'then equip(E)end
elseif E==DT then E=DD add_to_chat(200, 'Gearswap: Engaged now DD')if mode == 'Engaged'then equip(E)end end

elseif command=='i'then
    if I==DD then I=REF add_to_chat(200, 'Gearswap: Idle now Refresh')if mode ~= 'Engaged'then equip(I)end
elseif I==REF then I=ACC add_to_chat(200, 'Gearswap: Idle now Accuracy')if mode ~= 'Engaged'then equip(I)end
elseif I==ACC then I=REG add_to_chat(200, 'Gearswap: Idle now Regen')if mode ~= 'Engaged'then equip(I)end
elseif I==REG then I=PDT add_to_chat(200, 'Gearswap: Idle now PDT -')if mode ~= 'Engaged'then equip(I)end
elseif I==PDT then I=MDT add_to_chat(200, 'Gearswap: Idle now MDT -')if mode ~= 'Engaged'then equip(I)end
elseif I==MDT then I=BDT add_to_chat(200, 'Gearswap: Idle now BDT -')if mode ~= 'Engaged'then equip(I)end
elseif I==BDT then I=DT add_to_chat(200, 'Gearswap: Idle now DT -')if mode ~= 'Engaged'then equip(I)end
elseif I==DT then I=DD add_to_chat(200, 'Gearswap: Idle now DD')if mode ~= 'Engaged'then equip(I)end end 

elseif command=='f10'then 
    if A==false then A=S{7,8} add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting')
elseif A==S{7,8} then A=S{7} add_to_chat(200, 'Gearswap: Auto Stun now TP')
elseif A==S{7} then A=S{8} add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting')
elseif A==S{8} then A=false add_to_chat(200, 'Gearswap: Auto Stun now Disabled')end

elseif command=='?'then 
add_to_chat(200, 'Gearswap: Engaged Modes:')
add_to_chat(200, '//gs c e ref, //gs c e reg, //gs c e acc, //gs c e pdt')
add_to_chat(200, '//gs c e mdt, //gs c e bdt, //gs c e dt, //gs c e dd')
add_to_chat(200, 'Gearswap: Idle Modes:')
add_to_chat(200, '//gs c i fish, //gs c i ref, //gs c i reg, //gs c i acc, ')
add_to_chat(200, '//gs c i pdt, //gs c i mdt, //gs c i bdt, //gs c i dt, //gs c i dd')
add_to_chat(200, 'Gearswap: Stun Modes:')
add_to_chat(200, '//gs c yes stun, //gs c no stun, //gs c tp stun, //gs c ma stun')end end
