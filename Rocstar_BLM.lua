function get_sets() 

  --Values
  pre = {} 
  
  mid = {} 
  
  mid.Ancient = {}
  
  --Change Macros 
  send_command('input /macro book 3;wait .1;input /macro set 1')

  --Key binds
  send_command('bind f9 gs c Nuke') 
  
  --Precast sets
  --Job Ability set
  pre.Manafont = {body="Sorcerer's coat +2"} 
  
  --Weapon Skill sets
  pre.Retribution = {ear1="Bladeborn Earring",ear2="Steelflash Earring"}

  pre['Spirit Taker'] = {ear1="Friomisi Earring",ear2="Hecate's Earring"}

  --Fast Cast set
  pre.cast = {ammo="Impatiens",head="Haruspex Hat",ear1="Loquacious Earring",
    ring1="Prolix Ring",ring2="Veneficium Ring",back="Ogapepo Cape",
    waist="Witful Belt",legs="Orvail Pants +1"}

  --Enhancing Magic Casting time - set
  pre.enhancing = {waist="Siegel Sash"} 

  --Stoneskin Casting time - set
  pre.Stoneskin = set_combine(pre.enhancing, {hands="Carapacho Cuffs"})

  --Cure Casting time - set
  pre.cure = {body="Heka's Kalasiris",back="Pahtli Cape",waist="Capricornian Rope"} 

  --Elemental Magic Casting time - set
  pre.elemental = {head="Goetia Petasos +2",neck="Stoicheion Medal",feet="Spaekona's Sabots +1"}
  
  --Ancient Magic II Casting time - sets
  pre['Quake II'] = {hands="Sorcerer's Gloves +2"} 
  
  pre['Flood II'] = pre['Quake II'] 
  
  pre['Tornado II'] = pre['Quake II'] 
  
  pre['Flare II'] = pre['Quake II'] 
  
  pre['Freeze II'] = pre['Quake II'] 
  
  pre['Burst II'] = pre['Quake II'] 

  --Affinity: Casting time - sets
  pre.Earth = {main="Vishrava I"} 
  
  pre.Fire = {main="Atar I"} 
  
  pre.Water = {main="Haoma I"} 
  
  pre.Wind = {main="Vayuvata I"} 
  
  pre.Ice = {main="Vourukasha I"} 
  
  pre.Lightning = {main="Apamajas I"} 
  
  pre.Light = {main="Arka I"} 
  
  pre.Dark = {main="Xsaeta I"} 
	
  --Midcast sets
  mid.Darkmagic = {} --add Dark Magic gear

  mid.MND_Enfeeb = {main="Atinian Staff",sub="Achaq Grip",
    ammo="Memoria Sachet",head="Wayfarer circlet",
    ear1="Gifted Earring",ear2="Loquacious Earring",
    body="Hagondes Coat",hands="Otomi Gloves",
    ring1="Prolix Ring",ring2="Sirona's Ring",
    back="Bane Cape",waist="Cetl Belt",
    legs="Wayfarer Slops",feet="Spaekona's Sabots +1"} 

  mid.INT_Enfeeb = set_combine(mid.MND_Enfeeb, {}) 

  mid.Cure = {main="Arka IV",sub="Achaq Grip",
    head="Buremte Hat",ear1="Gifted Earring",
    ear2="Loquacious Earring",hands="Bokwus Gloves",
    ring2="Sirona's Ring",legs="Wayfarer Slops"} 
	
  mid.Stoneskin = {} --add Stoneskin gear
  
  mid.ProShell = {ring2="Sheltered Ring"}
  
  mid.Recast = {} --add recast gear

  --Weather and or day sets
  mid.Fire = {waist='Karin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
	
  mid.Earth = {waist='Dorin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
	
  mid.Water = {waist='Suirin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
	
  mid.Wind = {waist='Furin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
	
  mid.Ice = {waist='Hyorin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
	
  mid.Lightning = {waist='Rairin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
	
  mid.Light = {waist='Korin Obi',back='Twilight Cape'} 
	
  mid.Dark = {waist='Anrin Obi',back='Twilight Cape'} 
  
  --Ancient Magic II values
  mid.Ancient['Quake II'] = {} 
  
  mid.Ancient['Flood II'] = {} 
  
  mid.Ancient['Tornado II'] = {} 
  
  mid.Ancient['Flare II'] = {} 
  
  mid.Ancient['Freeze II'] = {} 
  
  mid.Ancient['Burst II'] = {} 
  
  --High Tier Nuke values
  mid.Comet = {}
  
  mid.Stoneja = {} 
  mid['Stone V'] = {} 
  mid['Stone IV'] = {}  
  mid['Stonega III'] = {} 
  
  mid.Waterja = {} 
  mid['Water V'] = {} 
  mid['Water IV'] = {} 
  mid['Waterga III'] = {}
  
  mid.Aeroja = {} 
  mid['Aero V'] = {} 
  mid['Aero IV'] = {} 
  mid['Aeroga III'] = {}
  
  mid.Firaja = {} 
  mid['Fire V'] = {} 
  mid['Fire IV'] = {} 
  mid['Firaga III'] = {}
  
  mid.Blizzaja = {} 
  mid['Blizzard V'] = {} 
  mid['Blizzard IV'] = {} 
  mid['Blizzaga III'] = {} 
  
  mid.Thundaja = {} 
  mid['Thunder V'] = {} 
  mid['Thunder IV'] = {} 
  mid['Thundaga III'] = {} 

  --Stun recast set	
  mid.Stun = {main="Apamajas II",sub="Zuuxowu Grip",
    ammo="Memoria Sachet",head="Haruspex Hat",
    ear1="Loquacious Earring",ring1="Prolix Ring",
    neck="Quanpur Necklace",body="Hagondes Coat",
    hands="Otomi Gloves",back="Swith Cape",
    waist="Witful Belt",legs="Wayfarer Slops",
    feet="Spaekona's Sabots +1"} 
  
  --Low Tier Nuke set
  Low_Tier = {main="Atinian Staff",sub="Zuuxowu Grip",
    ammo="Dosis Tathlum",head="Buremte Hat",
    neck="Quanpur Necklace",ear1="Friomisi Earring",
    ear2="Hecate's Earring",body="Hagondes Coat",
    hands="Otomi Gloves",ring1="Acumen Ring",
    ring2="Demon's Ring",back="Toro Cape",
    waist="Othila Sash",legs="Hagondes Pants",
    feet="Weather. Souliers"} 
	
  High_Tier = {} 
  
  Ancient_Magic = {head="Sorcerer's Petasos +2",feet="Sorcerer's Sabots +2"}
  
  Magic_Accuracy = {} 
  
  --Refresh set
  Refresh = {main="Terra's Staff",sub="Oneiros Grip",
    ammo="Shadow Sachet",head="Wayfarer Circlet",
    neck="Wiglen Gorget",ear1="Black Earring",
    ear2="Darkness Earring",body="Wayfarer Robe",
    hands="Wayfarer Cuffs",ring1="Paguroidea Ring",
    ring2="Sheltered Ring",back="Cheviot Cape",
    waist="Slipor Sash",legs="Wayfarer slops",
    feet="Wayfarer Clogs"} 

  --Regen and Refresh set
  Regen = set_combine(Refresh, {}) 

  Physical_Damage_Taken = {} 

  MDT = {head="Hagondes Hat",body="Hagondes Coat",
    hands="Hagondes Cuffs",back="Pahtli Cape",legs="Hagondes Pants",
    feet="Hagondes Sabots"} 

  Breath_Damage_Taken = {} 

  Damage_Taken = {} 

  Attack = set_combine(Refresh, {main="Atinian Staff"})  

  Accuracy = {} 

  E = Attack 

  I = Regen 

  Nuke = Low_Tier 
end 

function precast(spell) 
  if spell.skill == 'Elemental Magic' then 
    if pre[spell.english] then 
      equip(pre.cast, pre.elemental, pre[spell.english], pre[spell.element]) 
    else 
      equip(pre.cast, pre.elemental, pre[spell.element]) 
    end 
  elseif spell.skill == 'Healing Magic' then 
    if windower.wc_match(spell.english, 'Cura*|Cure*') then  
      equip(pre.cast, pre.cure, pre[spell.element])  
	end
  elseif spell.skill == 'Enhancing Magic' then 
    if spell.english == 'Stoneskin' then 
      equip(pre.cast, pre[spell.english], pre[spell.element]) 
    else 
      equip(pre.cast, pre.enhancing, pre[spell.element]) 
    end 
  elseif windower.wc_match(spell.type, 'WeaponSkill|JobAbility') then 
    if pre[spell.english] then 
      equip(pre[spell.english]) 
	end
  else equip(pre.cast, pre[spell.element])
  end 
end 

function midcast(spell) 
--[[ Elemental Magic ]]-- 
  if spell.skill == 'Elemental Magic' then 
    if mid[spell.english] then 
      if Nuke ~= Magic_Accuracy then 
        Nuke = High_Tier 
        equip(Low_Tier, Nuke, pre[spell.element]) 
      else 
        equip(Nuke) 
      end 
    elseif mid.Ancient[spell.english] then 
      if Nuke ~= Magic_Accuracy then 
        Nuke = Ancient_Magic 
        equip(Low_Tier, Nuke, pre[spell.element]) 
      else 
        equip(Nuke) 
      end 
    elseif Nuke ~= Magic_Accuracy then 
      Nuke = Low_Tier 
      equip(Nuke) 
    else 
      equip(Nuke) 
    end 
	  
--[[ Dark Magic ]]--
  elseif spell.skill == 'Dark Magic' then 
    if mid[spell.english] then 
      equip(mid[spell.english]) 
    else 
      equip(Low_Tier) 
    end 
	
--[[ Enfeebling Magic ]]--
  elseif spell.skill == 'Enfeebling Magic' then
    if spell.english == 'Blind' then 
      equip(mid.INT_Enfeeb) 
    else 
      equip(mid.MND_Enfeeb) 
	end 
	
  elseif spell.english:startswith('Shell') or 
    spell.english:startswith('Pro') then 
    equip(mid.ProShell) 
  elseif spell.english:startswith('Cur') then 
    equip(mid.Cure) 
  elseif spell.english == 'Blink' and buffactive.blink then 
    send_command('cancel 36') 
  elseif spell.english == 'Stoneskin' and buffactive.stoneskin then 
    send_command('cancel 37') 
    equip(mid[spell.english]) 
  elseif spell.english == 'Sneak' and spell.target.name == player.name and buffactive.sneak then 
    send_command('cancel 71') 
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
  else
    equip(I) 
  end 
end 

function self_command(command) 
  if command == 'Nuke' then 
    if Nuke ~= Magic_Accuracy then  
      Nuke = Magic_Accuracy 
      add_to_chat(200, 'Gearswap: Nuke Mode now Magic Accuracy') 
    elseif Nuke == Magic_Accuracy then 
      Nuke = Low_Tier 
      add_to_chat(200, 'Gearswap: Nuke Mode now Magic Damage')
    end	
--[[ Toggle DT ( F9 ) or ( //gs c e i ) ]]--	
  elseif command == 'e i' then 
    if E == PDT then 
      I = MDT 	
      E = MDT 
      add_to_chat(200, 'Gearswap: engaged and idle now MDT') 
      aftercast(spell)
    elseif E == MDT then 
      I = BDT 	
      E = BDT
      add_to_chat(200, 'Gearswap: engaged and idle now BDT') 
      aftercast(spell)
    elseif E == BDT then 
      I = DT 	
      E = DT 
      add_to_chat(200, 'Gearswap: engaged and idle now DT')
      aftercast(spell)
    elseif E == DT then 
      I = REF 	
      E = DD 
      add_to_chat(200, 'Gearswap: engaged now DD idle Refresh')
      aftercast(spell)
    elseif E == DD then  
      I = PDT 	
      E = PDT 
      add_to_chat(200, 'Gearswap: engaged and idle now PDT')
      aftercast(spell)
    end 
	
  elseif windower.wc_match(command, 'mdt|MDT') then
    I = MDT 	
    E = MDT 
    add_to_chat(200, 'Gearswap: engaged and idle now MDT') 
    aftercast(spell)
  end 
end


function file_unload() 
  send_command('unbind f9') 
end 
