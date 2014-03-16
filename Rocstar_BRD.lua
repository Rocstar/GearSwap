function get_sets()
--  "--" not needed. used to end a line
---- Values
JA={}FC={}WS={}Mid={}TP={}Idle={}

---- Macro Book Change
send_command('input /macro book 18;wait .1;input /macro set 1')

----Message to display when loading the file
add_to_chat(200, 'Gearswap: Engaged DD (ALT + F2 to change)')
add_to_chat(200, 'Gearswap: Idle Refresh (ALT + F3 to change)')

----Key Binds
send_command('bind !F2 gs c E')
send_command('bind !F3 gs c I')

---- Precast Sets
JA.Nightingale = {feet="Brd. Slippers +2"}
	
JA.Troubadour = {body="Bard's Justaucorps +2"}
	
JA['Soul Voice'] = {legs="Brd. Cannions +2"}
	
FC.Song = {head="Aoidos' Calot +2",neck="Orunmila's Torque",ear1={name="Loquac. Earring",order=5},
ear2="Aoidos' Earring",body="Marduk's Jubbah +1",hands={name="Gendewitha Gages",order=8},
ring1="Defending ring",ring2={name="Prolix Ring",order=7},back="Swith Cape +1",
waist="Aoidos' Belt",legs={name="Gendewitha Spats",order=9},feet="Brd. Slippers +2"}
		
FC.Normal = {head="Haruspex Hat",neck="Orunmila's Torque",ear1="Loquac. Earring",body="Marduk's Jubbah +1",
hands="Gendewitha Gages",ring2="Prolix Ring",back="Swith Cape",waist="Siegel Sash",legs="Orvail Pants +1",
feet="Chelona Boots +1"}
		
FC.Cure = {body="Heka's Kalasiris",legs="Nabu's Shalwar",back="Pahtli Cape"}
	
FC.Earth = {main="Vishrava I"}
FC.Fire = {main="Atar I"}
FC.Water = {main="Haoma I"}
FC.Wind = {main="Vayuvata I"}
FC.Ice = {main="Vourukasha I"}
FC.Thunder = {main="Apamajas I"}
FC.Light = {main="Arka I"}
FC.Dark = {main="Xsaeta I"}
	
WS['Mordant Rime'] = {range="Gjallarhorn",
head="Nahtirah Hat",neck="Aqua Gorget",ear1="Aoidos' Earring",
body="Bard's Justaucorps +2",hands="Brioso Cuffs +1",ring1="Veela Ring",ring2="Thundersoul Ring",
back="Atheling Mantle",waist="Aqua Belt",legs="Gendewitha Spats",feet="Brioso slippers"}
	
---- Midcast Sets
	
		
Mid.Haste = {main="Terra's Staff",sub="Oneiros Grip",head={name="Nahtirah Hat",order=6},
neck="Orunmila's Torque",ear1="Loquac. Earring",ear2={name="Gifted Earring",order=7},
body={name="Hedera Cotehardie",order=5},hands={name="Gendewitha Gages",order=11},
ring2={name="Prolix Ring",order=10},back={name="Rhapsode's Cape",order=8},
waist="Phasmida Belt",legs="Byakko's Haidate",feet={name="Chelona Boots +1",order=9}}

Mid.Debuff = {main="Carnwenhan",sub="Genbu's Shield",range="Gjallarhorn",
head="Kaabanax Hat",neck="Aoidos' Matinee",ear1="Psystorm Earring",ear2="Lifestorm earring",
body="Aoidos' Hngrln. +2",hands="Lurid Mitts",ring1="Omega Ring",ring2="Sangoma ring",
back="Rhapsode's Cape",waist="Aristo belt",legs="Mdk. Shalwar +1",feet="Brioso slippers"}
	
Mid.Buff = {main="Legato Dagger",sub="Genbu's Shield",head="Aoidos' Calot +2",neck="Aoidos' Matinee",
body="Aoidos' Hngrln. +2",hands="Ad. Mnchtte. +2",legs="Mdk. Shalwar +1",feet="Brioso slippers"}
	
Mid.DBuff = {range="Daurdabla"}
	
Mid.GBuff = {range="Gjallarhorn"}
		
Mid.Ballad = {legs="Aoidos' Rhing. +2"}
		
Mid.Scherzo = {feet="Aoidos' Cothrn. +2"}
		
Mid.Finale = {neck="Wind Torque",legs="Brioso Cannions +1",feet="Bokwus Boots"}
		
Mid.Lullaby = {hands="Brioso Cuffs +1"}
	
Mid.Base = Mid.Haste
		
Mid.Cure = {main="Iridal Staff",head="Gendewitha Caubeen",neck="Phalaina Locket",ear2="Novia earring",
body="Gendewitha Bliaut",hands="Bokwus Gloves",legs="Brd. Cannions +2",feet="Bokwus Boots"}
		
Mid.Stoneskin = {head="Marduk's Tiara +1",body="Marduk's Jubbah +1",hands="Marduk's Dastanas +1",
legs="Shedir Seraweels",feet="Bokwus Boots"}
	
----Engaged DD set
TP.DD = {main="Mandau",sub="Twashtar",ammo="Vanir Battery",head="Lithelimb Cap",neck="Asperity Necklace",
body="Bihu Justaucorps",hands="Aetosaur Gloves +1",ring1="K'ayres Ring",ring2="Rajas Ring",
back="Atheling Mantle",waist="Cetl Belt",legs="Aetosaur Trousers +1",feet="Vanir Boots"}

----Engaged Accuracy set
TP.ACC = {main="Mandau",sub="Twashtar",ammo="Vanir Battery",head="Lithelimb Cap",neck="Asperity Necklace",
body="Bihu Justaucorps",hands="Aetosaur Gloves +1",ring1="K'ayres Ring",ring2="Rajas Ring",
back="Atheling Mantle",waist="Cetl Belt",legs="Aetosaur Trousers +1",feet="Vanir Boots"}

----Engaged Refresh set
TP.REF = {main="Eminent Staff",sub="Oneiros Grip",ammo="Incantor Stone",head="Wivre Hairpin",
neck="Twilight Torque",ear1="Black Earring",ear2="Darkness Earring",body="Gendewitha Bliaut",
hands="Serpentes Cuffs",ring1="Dark Ring",ring2="Dark Ring",back="Cheviot Cape",
waist="Slipor Sash",legs="Tatsu. Sitagoromo",feet="Serpentes Sabots"}
	
----Engaged Magic Damage Taken - set
TP.MDT = {neck="Twilight Torque"}

----Engaged Physical Damage Taken - set
TP.PDT = {neck="Twilight Torque"}

----Engaged Damage Taken - set
TP.DT = {neck="Twilight Torque"}

----Idle Refresh set
Idle.REF = {main="Terra's Staff",sub="Oneiros Grip",ammo="Incantor Stone",head="Wayfarer circlet",neck="Wiglen Gorget",
ear1="Black Earring",ear2="Darkness Earring",body="Wayfarer robe",hands="Wayfarer cuffs",ring1="Defending Ring",
ring2="Dark Ring",back="Iximulew Cape",waist="Cetl Belt",legs="Wayfarer slops",feet="Wayfarer clogs"}
	
----Idle Regen set
Idle.REG = set_combine(Idle.REF, {neck="Wiglen Gorget",ring1="Paguroidea Ring",ring2="Sheltered Ring"})

----Idle Magic Damage Taken - set
Idle.MDT = {ring1="Dark Ring",ring2="Dark Ring"}

----Idle Physical Damage Taken - set
Idle.PDT = {ring1="Dark Ring",ring2="Dark Ring"}

----Idle Damage Taken - set
Idle.DT = {ring1="Dark Ring",ring2="Dark Ring"}

----Idle Fishing set
Idle.Fish = {main="empty",sub="empty",range="Ebisu Fishing Rod",
ammo="Minnow",ammo="Sinking Minnow",ammo="Sardine Ball",ammo="Slice of Bluetail",
head="Wivre Hairpin",neck="Fisher's Torque",ear1="empty",ear2="empty",body="Fisherman's Smock",
hands="Fsh. Gloves",ring1="Puffin Ring",ring2="Noddy Ring",back="Nexus Cape",
waist="empty",legs="Fisherman's Hose",feet="Waders"}

----Engaged is a variable
E = TP.DD

----Idle is a variable
I = Idle.REF

---- Daurdabla Songs
DaurdSongs = T{'Water Carol','Water Carol II','Ice Carol','Ice Carol II','Herb Pastoral','Goblin Gavotte'}

timer_reg={}
	
pianissimo_cycle = false

end

function pretarget(spell)
	if spell.type == 'BardSong' 
	and spell.target.type 
	and spell.target.type == 'PLAYER' 
	and not buffactive.pianissimo 
	and not spell.target.charmed 
	and not pianissimo_cycle then
	cancel_spell()
	pianissimo_cycle = true
	send_command('input /ja "Pianissimo" <me>;wait 1.5;input /ma "'..spell.name..'" '..spell.target.name..';')
	return
	end
	if spell.name ~= 'Pianissimo' then
	pianissimo_cycle = false
	end
end

function precast(spell)
	if spell.type == 'BardSong' then
		if buffactive.nightingale then
			equip(FC[(spell.element)])equip_song_gear(spell)
			return
		else
			equip_song_gear(spell)
			equip(FC[(spell.element)]),FC.Song)
		end
	elseif spell.action_type == 'Magic' then
		equip(FC[(spell.element)]),FC.Normal)
		if string.find(spell.english,'Cur') and spell.name ~= 'Cursna' then
			equip(FC[(spell.element)]),FC.Cure)
		end
	elseif spell.type == 'WeaponSkill' then
		if WS[spell.english] then
			equip(WS[spell.english])
		end
	end
end

function midcast(spell)
	if spell.type == 'BardSong' then
		equip_song_gear(spell)
	elseif string.find(spell.english,'Cur') then
		equip(Mid.Base,Mid.Cure)
	elseif spell.english=='Stoneskin' then
		equip(Mid.Base,Mid.Stoneskin)
	end
end

function aftercast(spell)
	if spell.type and spell.type == 'BardSong' and spell.target and spell.target.type:upper() == 'SELF' then
		local t = os.time()
		
		-- Eliminate songs that have already expired
		local tempreg = {}
		for i,v in pairs(timer_reg) do
			if v < t then tempreg[i] = true end
		end
		for i,v in pairs(tempreg) do
			timer_reg[i] = nil
		end
		
		local dur = calculate_duration(spell.name)
		if timer_reg[spell.name] then
			if (timer_reg[spell.name] - t) <= 120 then
				send_command('timers delete "'..spell.name..'"')
				timer_reg[spell.name] = t + dur
				send_command('timers create "'..spell.name..'" '..dur..' down')
			end
		else
			local maxsongs = 2
			if player.equipment.range == 'Daurdabla' then
				maxsongs = maxsongs+2
			end
			if buffactive['Clarion Call'] then
				maxsongs = maxsongs+1
			end
			if maxsongs < table.length(timer_reg) then
				maxsongs = table.length(timer_reg)
			end
			
			if table.length(timer_reg) < maxsongs then
				timer_reg[spell.name] = t+dur
				send_command('timers create "'..spell.name..'" '..dur..' down')
			else
				local rep,repsong
				for i,v in pairs(timer_reg) do
					if t+dur > v then
						if not rep or rep > v then
							rep = v
							repsong = i
						end
					end
				end
				if repsong then
					timer_reg[repsong] = nil
					send_command('timers delete "'..repsong..'"')
					timer_reg[spell.name] = t+dur
					send_command('timers create "'..spell.name..'" '..dur..' down')
				end
			end
		end
	end
	if player.status == 'Engaged' then
		equip(E)
	else
		equip(I)
	end
end

function status_change(new,old)
	if new == 'Engaged' then
		equip(E)
	elseif T{'Idle','Resting'}:contains(new) then
		equip(I)
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
    if I==Idle.Fish then I=Idle.PDT add_to_chat(200, 'Gearswap: Idle now Physical Damage Taken -')equip(I)
elseif I==Idle.PDT then I=Idle.MDT add_to_chat(200, 'Gearswap: Idle now Magic Damage Taken -')equip(I)
elseif I==Idle.MDT then I=Idle.DT add_to_chat(200, 'Gearswap: Idle now Damage Taken -')equip(I)
elseif I==Idle.DT then I=Idle.REG add_to_chat(200, 'Gearswap: Idle now Regen')equip(I)
elseif I==Idle.REG then I=Idle.REF add_to_chat(200, 'Gearswap: Idle now Refresh')equip(I)
elseif I==Idle.REF then I=Idle.Fish add_to_chat(200, 'Gearswap: Idle now Fishing')equip(I)

elseif cmd == 'midact' then
midaction(false)end end 
end 


function equip_song_gear(spell)
	if DaurdSongs:contains(spell.english) then
		equip(Mid.Base,Mid.DBuff)
	else
		if spell.target.type == 'MONSTER' then
			equip(Mid.Base,Mid.Debuff,Mid.GBuff)
			if string.find(spell.english,'Finale') then equip(Mid.Finale) end
			if string.find(spell.english,'Lullaby') then equip(Mid.Lullaby) end
		else
			equip(Mid.Base,Mid.Buff,Mid.GBuff)
			if string.find(spell.english,'Ballad') then equip(Mid.Ballad) end
			if string.find(spell.english,'Scherzo') then equip(Mid.Scherzo) end
		end
	end
end

function calculate_duration(name)
	local mult = 1
	if player.equipment.range == 'Daurdabla' then mult = mult + 0.3 end
	if player.equipment.range == "Gjallarhorn" then mult = mult + 0.4 end
	
	if player.equipment.neck == "Aoidos' Matinee" then mult = mult + 0.1 end
	if player.equipment.feet == "Brioso Slippers" then mult = mult + 0.1 end
	if player.equipment.body == "Aoidos' Hngrln. +2" then mult = mult + 0.1 end
	if player.equipment.legs == "Mdk. Shalwar +1" then mult = mult + 0.1 end
	if player.equipment.main == "Carnwenhan" then mult = mult + 0.5 end
	
	if string.find(name,'March') and player.equipment.hands == 'Ad. Mnchtte. +2' then mult = mult + 0.1 end
	if string.find(name,'Minuet') and player.equipment.body == "Aoidos' Hngrln. +2" then mult = mult + 0.1 end
	if string.find(name,'Madrigal') and player.equipment.head == "Aoidos' Calot +2" then mult = mult + 0.1 end
	if string.find(name,'Ballad') and player.equipment.legs == "Aoidos' Rhing. +2" then mult = mult + 0.1 end
	if string.find(name,'Scherzo') and player.equipment.feet == "Aoidos' Cothrn. +2" then mult = mult + 0.1 end
	
	if buffactive.Troubadour then
		mult = mult*2
	end
	if string.find(name,'Scherzo') and buffactive['Soul Voice'] then
		mult = mult*2
	elseif string.find(name,'Scherzo') and buffactive.marcato then
		mult = mult*1.5
	end
	
	return mult*120
end
