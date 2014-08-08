function get_sets()
--  "--" not needed. used to end a line
---- Values
JA={}FC={}WS={}pre={}Mid={} 

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
ear2="Liminus Earring",body="Marduk's Jubbah +1",hands={name="Gendewitha Gages",order=8},
ring1="Defending ring",ring2={name="Prolix Ring",order=7},back="Swith Cape",
waist="Aoidos' Belt",legs={name="Gendewitha Spats",order=9},feet="Brd. Slippers +2"}
		
FC.Normal = {head="Haruspex Hat",neck="Orunmila's Torque",ear1="Loquac. Earring",body="Marduk's Jubbah +1",
		hands="Gendewitha Gages",ring2="Prolix Ring",back="Swith Cape",waist="Siegel Sash",legs="Orvail Pants +1",
		feet="Chelona Boots +1"}
		
FC.Cure = {body="Heka's Kalasiris",legs="Nabu's Shalwar",back="Pahtli Cape"}

  pre.Earth = {main="Vishrava I"} 
  
  pre.Fire = {main="Atar I"} 
  
  pre.Water = {main="Haoma I"} 
  
  pre.Wind = {main="Vayuvata I"} 
  
  pre.Ice = {main="Vourukasha I"} 
  
  pre.Thunder = {main="Apamajas I"} 
  
  pre.Light = {main="Arka I"} 
  
  pre.Dark = {main="Xsaeta I"} 
	
WS['Mordant Rime'] = {range="Gjallarhorn",
		head="Nahtirah Hat",neck="Aqua Gorget",ear1="Aoidos' Earring",
		body="Bard's Justaucorps +2",hands="Brioso Cuffs +1",ring1="Veela Ring",ring2="Thundersoul Ring",
		back="Atheling Mantle",waist="Aqua Belt",legs="Gendewitha Spats",feet="Brioso slippers"}
	
---- Midcast Sets
	
		
Mid.Haste = {head={name="Nahtirah Hat",order=6},
neck="Orunmila's Torque",ear1="Loquac. Earring",ear2={name="Gifted Earring",order=7},
body={name="Hedera Cotehardie",order=5},hands={name="Gendewitha Gages",order=11},
ring2={name="Prolix Ring",order=10},back={name="Rhapsode's Cape",order=8},
waist="Phasmida Belt",legs="Byakko's Haidate",feet={name="Chelona Boots +1",order=9}}

Mid.Debuff = {main="Legato Dagger",sub="Genbu's Shield",range="Gjallarhorn",
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
	
	----Engaged Damage Dealing set
  DD = {main="Izhiikoh",head="Wayfarer Circlet",
  neck="Asperity Necklace",ear1="Bladeborn Earring",
  ear2="Steelflash Earring",body="Wayfarer Robe",
  hands="Wayfarer Cuffs",ring1="Ulthalam's Ring",
  ring2="Rajas Ring",back="Atheling Mantle",
  waist="Cetl Belt",legs="Wayfarer slops",
  feet="Wayfarer Clogs"}

  ACC = {main="Izhiikoh"}

----Idle Refresh set
  
REF = {main="Terra's Staff",sub="Oneiros Grip",ammo="Shadow Sachet",
head="Wivre Hairpin",neck="Wiglen Gorget",ear1="Lifestorm Earring",ear2="Psystorm Earring",
body="Gendewitha Bliaut",hands="Serpentes Cuffs",ring1="Defending Ring",ring2="Sheltered Ring",
back="Iximulew Cape",waist="Flume Belt",legs="Wayfarer slops",feet="Aoidos' Cothurnes +2"}
	
----Engaged is a variable
E = DD

----Idle is a variable
I = REF

---- Daurdabla Songs
DaurdSongs = T{'Lightning Carol II','Lightning Carol','Wind Carol II','Wind Carol','Herb Pastoral','Goblin Gavotte'}

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
			equip_song_gear(spell)
			return
		else
			equip_song_gear(spell)
			equip(FC.Song)
		end
	elseif spell.action_type == 'Magic' then
		equip(FC.Normal)
		if string.find(spell.english,'Cur') and spell.name ~= 'Cursna' then
			equip(FC.Cure)
		end
	elseif spell.type == 'WeaponSkill' then
		if WS[spell.english] then
			equip(WS[spell.english])
		end
	end
	
	if pre[tostring(spell.element)] then equip(pre[tostring(spell.element)]) end
	if JA[spell.english] then equip(JA[spell.english]) end
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
if cmd == 'midact' then
midaction(false)end 
end 


function equip_song_gear(spell)
	if DaurdSongs:contains(spell.english) then
		equip(Mid.Buff,Mid.DBuff)
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
