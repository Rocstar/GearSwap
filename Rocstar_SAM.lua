function file_unload() 
    send_command('unbind !-')
    send_command('unbind !=')
    send_command('unbind f10')
end

function get_sets() pre={}

----Macro Book Change
send_command('@input /macro book 1;wait .1;input /macro set 8')

----Key Binds
send_command('bind !- gs c -')
send_command('bind != gs c =')
send_command('bind f10 gs c f10')

----Message to display when loading the file
add_to_chat(200, 'Gearswap: Engaged DD (ALT -) Idle Regen (ALT =)')
add_to_chat(200, 'Gearswap: Auto Stun (F10) //gs c ? for Help')

--Weapon Skill sets
pre['Tachi: Fudo'] = {neck="Light Gorget",waist="Light Belt"}

pre['Tachi: Rana'] = {neck="Shadow Gorget",waist="Shadow Belt"}

pre['Tachi: Kaiten'] = {neck="Light Gorget",waist="Light Belt"}

pre['Tachi: Shoha'] = {neck="Shadow Gorget",waist="Shadow Belt"}

pre['Tachi: Kasha'] = {neck="Light Gorget",waist="Light Belt"}

pre['Tachi: Gekko'] = {neck="Aqua Gorget",waist="Aqua Belt"}

pre['Tachi: Ageha'] = {neck="Shadow Gorget",waist="Shadow Belt"}

pre['Namas Arrow'] = {neck="Light Gorget",waist="Light Belt"}

pre['Apex Arrow'] = {neck="Light Gorget",waist="Light Belt"}

pre.Stardiver = {neck="Shadow Gorget",waist="Shadow Belt"}

--Job Ability sets
pre['Meikyo Shisui'] = {feet="Sakonji Sune-ate +1"} 

pre.Shikikoyo = {legs="Sakonji Haidate +1"} 

pre['Blade Bash'] = {hands="Sakonji Kote +1"} 

pre.Meditate = set_combine(pre['Blade Bash'], {head="Wakido Kabuto +1"}) 

pre.Hasso = {hands="Wakido Kote +1",legs="Unkai Haidate +2"} 

pre.Seigan = {head="Unkai Kabuto +2"}

pre.Sengikori = {feet="Unkai Sune-Ate +2"} 

pre.Sekkanoki = {hands="Unkai Kote +2"}

--Damage Dealing set
DD = {main="Tsurumaru",sub="Claymore Grip",ammo="Hagneia Stone",
head="Otomi Helm",neck="Asperity Necklace",ear1="Steelflash Earring",ear2="Bladeborn Earring",
body="Mikinaak Breastplate",hands="Mikinaak Gauntlets",ring1="Rajas Ring",ring2="Ulthalam's Ring",
back="Atheling Mantle",waist="Cetl Belt",legs="Otronif Brais",feet="Whirlpool Boots"}

--Regen set
REG = {head="Twilight Helm",neck="Wiglen Gorget",ring1="Paguroidea Ring",ring2="Sheltered Ring"}

--Accuracy set
ACC = {}
	
--Magic Damage Taken - set
MDT = {}

--Physical Damage Taken - set
PDT = {head="Otronif Mask",neck="Wiglen Gorget",body="Otronif Harness",hands="Otronif Gloves",ring1="Defending Ring",
ring2="Dark Ring",back="Mollusca Mantle",waist="Flume Belt",legs="Otronif Brais",feet="Otronif Boots"}

--Breath Damage Taken - set
BDT = {}

--Damage Taken - set
DT = {neck="Twilight Torque",ring1="Defending Ring",ring2="Dark Ring",back="Mollusca Mantle"}

----Healing HP set
Rest = {}

--Fishing set
FISH = {main="empty",sub="empty",range="Ebisu Fishing Rod",ammo="Slice of Bluetail",
head="Wivre Hairpin",neck="Fisher's Torque",ear1="empty",ear2="empty",body="Fisherman's Smock",
hands="Fsh. Gloves",ring1="Puffin Ring",ring2="Noddy Ring",back="Nexus Cape",
waist="empty",legs="Fisherman's Hose",feet="Waders"}

----Engaged is a variable
E = DD

----Idle is a variable
I = REG

----Auto Swap is a variable
A = false

windower.register_event('action', function(a)
  local m = windower.ffxi.get_mob_by_target('t')
  if A ~= false then 
    if a.target_count ~= 0 then 
      if a.targets[1].action_count ~= 0 then 
        if a.targets[1].actions[1].message ~= 0 then 
          if (m and m.is_npc and m.id == a.actor_id) and A:contains(a.category) then 
            windower.send_command('input /ja "Violent Flourish" <t>')
			end 
		  end 
		end 
	  end 
	end 
  end)
end

function precast(spell)
  if pre[spell.english]and buffactive['Meikyo Shisui']then 
    equip(pre[spell.english],pre['Meikyo Shisui'])
  else equip(pre[spell.english])
	end 
end

function aftercast(spell)
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
local mode = player.status
    if command=='e reg'then E=REG add_to_chat(200, 'Gearswap: Engaged now Regen')if mode == 'Engaged'then equip(E)end
elseif command=='e acc'then E=ACC add_to_chat(200, 'Gearswap: Engaged now Accuracy')if mode == 'Engaged'then equip(E)end
elseif command=='e pdt'then E=PDT add_to_chat(200, 'Gearswap: Engaged now PDT -')if mode == 'Engaged'then equip(E)end
elseif command=='e mdt'then E=MDT add_to_chat(200, 'Gearswap: Engaged now MDT -')if mode == 'Engaged'then equip(E)end
elseif command=='e bdt'then E=BDT add_to_chat(200, 'Gearswap: Engaged now BDT -')if mode == 'Engaged'then equip(E)end
elseif command=='e dt' then E=DT add_to_chat(200, 'Gearswap: Engaged now DT -')if mode == 'Engaged'then equip(E)end
elseif command=='e dd' then E=DD add_to_chat(200, 'Gearswap: Engaged now DD')if mode == 'Engaged'then equip(E)end 

elseif command=='i fish'then I=FISH add_to_chat(200, 'Gearswap: Idle now Fishing')if mode ~= 'Engaged'then equip(I)end
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
    if E==DD then E=ACC add_to_chat(200, 'Gearswap: Engaged now Accuracy')if mode == 'Engaged'then equip(E)end
elseif E==ACC then E=REG add_to_chat(200, 'Gearswap: Engaged now Regen')if mode == 'Engaged'then equip(E)end
elseif E==REG then E=PDT add_to_chat(200, 'Gearswap: Engaged now PDT -')if mode == 'Engaged'then equip(E)end
elseif E==PDT then E=MDT add_to_chat(200, 'Gearswap: Engaged now MDT -')if mode == 'Engaged'then equip(E)end
elseif E==MDT then E=BDT add_to_chat(200, 'Gearswap: Engaged now BDT -')if mode == 'Engaged'then equip(E)end
elseif E==BDT then E=DT add_to_chat(200, 'Gearswap: Engaged now DT -')if mode == 'Engaged'then equip(E)end
elseif E==DT then E=DD add_to_chat(200, 'Gearswap: Engaged now DD')if mode == 'Engaged'then equip(E)end end

elseif command=='i'then
    if I==DD then I=ACC add_to_chat(200, 'Gearswap: Idle now Accuracy')if mode ~= 'Engaged'then equip(I)end
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
