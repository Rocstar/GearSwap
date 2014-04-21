function get_sets() pre = {} 

--[[ Change Macros ]]--

  send_command('input /macro book 2;wait .1;input /macro set 1') 
  
--[[ Key Binds ]]--

  send_command('bind F9 gs c e') -- toggle Engaged mode ( F9 )
  send_command('bind !F9 gs c i') -- toggle Idle mode ( ALT F9 )
  send_command('bind ^F9 gs c w') -- toggle Weapon Skill mode ( CTRL F9 )
  
--[[ Job Abilities ]]--

  pre.Rampart = {head="Caballarius Coronet +1"} 
  
  pre.Fealty = {body="Caballarius Surcoat +1"} 
  
  pre.Chivalry = {hands="Caballarius Gauntlets +1"} 
  
  pre.Invincible = {legs="Caballarius Breeches +1"} 
  
  pre.Sentinel = {feet="Caballarius Leggings +1"} 
  
  pre.Cover = {head="Reverence Coronet +1"} 

  pre['Holy Circle'] = {feet="Reverence Leggings +1"} 
  
  pre['Curing Waltz'] = {ammo="",head="",
    neck="",ear1="",
    ear2="",body="",
    hands="",ring1="",
    ring2="",back="",
    waist="",legs="",
    feet=""} 

  pre['Curing Waltz II'] = pre['Curing Waltz'] 

  pre['Curing Waltz III'] = pre['Curing Waltz'] 
   
--[[ Fast Cast ]]--

  pre.cast = {ammo="",head="",
    neck="",ear1="",
    ear2="",body="",
    hands="",ring1="",
    ring2="",back="",
    waist="",legs="",
    feet=""} 
	
--[[ Weapon SkillS ]]--

  pre.Atonement = {neck="Light Gorget",waist="Light Belt"} 

  pre["Chant du Cygne"] = {neck="Light Gorget",waist="Light Belt"} 

  pre["Knights of Round"] = {neck="Light Gorget",waist="Light Belt"} 
  
  pre.Requiescat = {neck="Shadow Gorget",waist="Shadow Belt"} 

  pre["Sanguine Blade"] = {} 
  
--[[ Variables ]]--

  ACC = {ammo="",head="",
    neck="",ear1="",
    ear2="",body="",
    hands="",ring1="",
    ring2="",back="",
    waist="",legs="",
    feet=""} 
 
  DD = {ammo="",head="",
    neck="",ear1="",
    ear2="",body="",
    hands="",ring1="",
    ring2="",back="",
    waist="",legs="",
    feet=""} 
	
  MDT = {ammo="",head="",
    neck="",ear1="",
    ear2="",body="",
    hands="",ring1="",
    ring2="",back="",
    waist="",legs="",
    feet=""} 

  PDT = {ammo="",head="",
    neck="",ear1="",
    ear2="",body="",
    hands="",ring1="",
    ring2="",back="",
    waist="",legs="",
    feet=""} 

  BDT = {ammo="",head="",
    neck="",ear1="",
    ear2="",body="",
    hands="",ring1="",
    ring2="",back="",
    waist="",legs="",
    feet=""} 

  DT = {ammo="",head="",
    neck="",ear1="",
    ear2="",body="",
    hands="",ring1="",
    ring2="",back="",
    waist="",legs="",
    feet=""} 
  
  Aftermath = {ammo="",head="",
    neck="",ear1="",
    ear2="",body="",
    hands="",ring1="",
    ring2="",back="",
    waist="",legs="",
    feet=""} 
	
  Regen = {ammo="",head="",
    neck="",ear1="",
    ear2="",body="",
    hands="",ring1="",
    ring2="",back="",
    waist="",legs="",
    feet=""} 

  weapon_skill = ACC 
  
  engaged = PDT 
  
  idle = PDT 
  
end 

function precast(spell) 
  if spell.action_type == 'Magic' then 
    equip(pre.cast)
  elseif spell.type == 'WeaponSkill' then 
    if pre[spell.english] then 
      equip(weapon_skill, pre[spell.english]) 
    end
  else 
    equip(pre[spell.english]) 
  end 
end 

function aftercast(spell) 
  if player.status == 'Engaged' then 
    equip(engaged)
  else 
    equip(idle) 
  end 
end

function status_change(new,old) 
  if new == 'Engaged' then 
    equip(engaged) 
  else
    equip(idle) 
  end 
end 

function buff_change(buff, gain) 
  if buff == 'Divine Emblem' then 
    if gain then 
      equip({feet="Creed Sabatons +2"}) 
        if player.equipment.feet == "Creed Sabatons +2" then 
          disable('feet') 
        end
    else 
      enable('feet') 
    end
  elseif buff == 'Aftermath: Lv.3' then 
    if gain then 
      engaged = Aftermath
      equip(engaged) 
    else 
      engaged = PDT
      equip(engaged) 
    end
  end 
end

function self_command(command) 

--[[ Toggle Weapon Skill ACC ( CTRL F9 ) or ( //gs c w ) ]]--	
  if command == 'w' then 
    if weapon_skill == ACC then 
      weapon_skill = DD 
    elseif weapon_skill == DD then 
      weapon_skill = ACC 
    end 
	
--[[ Toggle Idle ( ALT F9 ) or ( //gs c i ) ]]--		
  elseif command == 'i' then 
    if idle == PDT then 
      idle = MDT 
        if player.status ~= 'Engaged' then 
          equip(idle) 
	end 
    elseif idle == MDT then 
      idle = PDT 
        if player.status ~= 'Engaged' then 
          equip(idle) 
        end 
    end 
	
--[[ Toggle Engaged ( F9 ) or ( //gs c e ) ]]--	
  elseif command == 'e' then 
    if engaged == PDT then 
      engaged = MDT 
        if player.status == 'Engaged' then 
          equip(engaged) 
	end 
    elseif engaged == MDT then 
      engaged = BDT 
        if player.status == 'Engaged' then 
          equip(engaged) 
	end 
    elseif engaged == BDT then 
      engaged = DT 
        if player.status == 'Engaged' then 
	  equip(engaged) 
	end 
    elseif engaged == DT then 
      engaged = DD 
        if player.status == 'Engaged' then 
	  equip(engaged) 
	end 
    elseif engaged == DD then 
      engaged = PDT 
        if player.status == 'Engaged' then 
	  equip(engaged) 
	end 
    end 
  end
end 

function file_unload() 
  send_command('unbind F9')
  send_command('unbind !F9')
  send_command('unbind ^F9')
end 
