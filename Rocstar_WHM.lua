function get_sets() pre = {} mid = {} 

--[[ Start Message ]]--

  add_to_chat(200, 'Gearswap: Idle Wayfarer ( F9 )') 
  add_to_chat(200, 'Gearswap: Engaged Darkness Damage ( ALT F9 ) ') 
--[[ Change Macros ]]--

  send_command('@input /macro book 1;wait .1;input /macro set 1') 
  
--[[ Key Binds ]]--

  send_command('bind !f9 gs c e') 
  send_command('bind f9 gs c ei') 

--[[ Job Abilities ]]--

  pre.Benediction = {body="Cleric's Briault +2"} 
  
  pre['Afflatus Solace'] = {body="Orison Bliaud +2"} 
  
  pre.Devotion = {head="Cleric's Cap +2"} 

  pre.Martyr = {hands="Cleric's Mitts +2"} 

--[[ Enhancing Spellcasting ]]--

  pre.enhancing = {waist="Siegel Sash"} 

--[[ Stoneskin Spellcasting ]]--

  pre.Stoneskin = set_combine(pre.enhancing, {head="Umuthi Hat",hands="Carapacho Cuffs"}) 

--[[ Fast Cast ]]--

  pre.cast = {ammo="Impatiens",head="Haruspex Hat",
    neck="Orison Locket",ear1="Gifted Earring",
    ear2="Loquacious Earring",body="Marduk's Jubbah +1",
    hands="Gendewitha Gages",ring1="Prolix Ring",
    ring2="Veneficium Ring",back="Ogapepo Cape",
    waist="Witful Belt",legs="Orvail Pants +1",
    feet="Chelona Boots +1"} 
	
  pre.healing = {legs="Orison Pantaloons +2"} 
  
--[[ Cure Spellcasting ]]--

  pre.cure = set_combine(pre.healing, {head="Cleric's Cap +2",neck="Aceso's Choker",
    body="Heka's Kalasiris",ring1="Prolix Ring",
    ring2="Veneficium Ring",back="Pahtli Cape",
	feet="Cure Clogs"}) 

--[[ Weapon Skills ]]--

  pre.Retribution = {neck="Twilight Torque"} 

  pre['Spirit Taker'] = {neck="Twilight Torque"} 

--[[ Affinity Spellcasting ]]--

  pre.Earth = {main="Vishrava I"} 
  pre.Fire = {main="Atar I"} 
  pre.Water = {main="Haoma I"} 
  pre.Wind = {main="Vayuvata I"} 
  pre.Ice = {main="Vourukasha I"} 
  pre.Thunder = {main="Apamajas I"} 
  pre.Light = {main="Arka I"} 
  pre.Dark = {main="Xsaeta I"} 
  
--[[ Enhancing Duration ]]--

  mid.enhancing = {main="Beneficus",hands="Dynasty Mitts",
    waist="Olympus Sash",legs="Cleric's pantaloons +2",
    feet="Theo. Duckbills"} 

--[[ Weather Day ]]--
  mid.Fire = {waist='Karin Obi',back='Twilight Cape',
    ring1='Zodiac Ring'} 
  mid.Earth = {waist='Dorin Obi',back='Twilight Cape',
    ring1='Zodiac Ring'} 
  mid.Water = {waist='Suirin Obi',back='Twilight Cape',
    ring1='Zodiac Ring'} 
  mid.Wind = {waist='Furin Obi',back='Twilight Cape',
    ring1='Zodiac Ring'} 
  mid.Ice = {waist='Hyorin Obi',back='Twilight Cape',
    ring1='Zodiac Ring'} 
  mid.Thunder = {waist='Rairin Obi',back='Twilight Cape',
    ring1='Zodiac Ring'} 
  mid.Light = {waist='Korin Obi',back='Twilight Cape'} 
  mid.Dark = {waist='Anrin Obi',back='Twilight Cape'} 

--[[ Midcast Nuke ]]--

  mid.nuke = {sub="Zuuxowu Grip",
    ammo="Memoria Sachet",head="Buremte Hat",
    neck="Quanpur Necklace",ear1="Friomisi Earring",
    ear2="Hecate's Earring",body="Bokwus Robe",
    hands="Otomi Gloves",ring1="Demon's Ring",
    ring2="Demon's Ring",back="Toro Cape",
    waist="Othila Sash",legs="Gendewitha Spats",
    feet="Gendewitha Galoshes"}  

--[[ MND Enfeeb ]]--
  mid.MND_Enfeeb = {} 

--[[ INT Enfeeb ]]--
  mid.INT_Enfeeb = {} 

--[[ Cure Potency ]]--
  mid.Cure = {main="Arka IV",sub="Verse Strap +1",
    ammo="Incantor Stone",head="Gendewitha Caubeen",
    neck="Orison Locket",ear1="Gifted Earring",
    ear2="Loquacious Earring",body="Orison Bliaud +2",
    hands="Bokwus Gloves",ring1="Prolix Ring",
    ring2="Sirona's Ring",back="Orison Cape",
    waist="Witful Belt",legs="Orison Pantaloons +2",
    feet="Wayfarer Clogs"} 

--[[ Status Removal ]]--
  mid.removal = {main="Yagrush",head="Orison Cap +2",legs="Orison Pantaloons +2"} 

--[[ Midcast Regen ]]--
  mid.Regen = set_combine(mid.enhancing, {body="Cleric's Briault +2",hands="Orison Mitts +2",
    legs="Theophany pantaloons"}) 

--[[ Midcast Cursna ]]--
  mid.Cursna = {main="Beneficus",sub="Genbu's Shield",
    head="Hyksos Khat",neck="Malison medallion",
    body="Orison Bliaud +2",hands="Hieros mittens",
    ring1="Ephedra ring", ring2="Ephedra ring",
    back="Mending cape",legs="Theophany pantaloons"} 

--[[ Midcast Stoneskin ]]--
  mid.Stoneskin = set_combine(mid.enhancing, {waist="Siegel Sash"}) 

--[[ Bar Element ]]--
  mid.bar = {main="Beneficus",head="Orison Cap +2",
    body="Orison Bliaud +2",hands="Orison Mitts +2",
    legs="Cleric's Pantaloons +2",feet="Orison Duckbills +2"} 

--[[ No Solace ]]--
  mid.bar_no_Solace = set_combine(mid.bar, {body="Blessed Briault"}) 

--[[ Midcast Shell ]]--
  mid.Shell = set_combine(mid.enhancing, {ring2="Sheltered Ring",legs="Cleric's pantaloons +2"}) 

--[[ Midcast Protect ]]--
  mid.Pro = set_combine(mid.enhancing, {ring2="Sheltered Ring",feet="Cleric's duckbills +2"}) 
  
  mid.Stun = {main="Apamajas II"} 
  
--[[ Refresh ]]--
  REF = {main="Terra's Staff",sub="Oneiros Grip",
    ammo="Shadow Sachet",head="Wivre Hairpin",
    neck="Wiglen Gorget",ear1="Black Earring",
    ear2="Darkness Earring",body="Gendewitha Bliaut",
    hands="Serpentes Cuffs",ring1="Dark Ring",
    ring2="Dark Ring",back="Cheviot Cape",
    waist="Slipor Sash",legs="Tatsumaki Sitagoromo",
    feet="Serpentes Sabots"} 
	
--[[ Regen ]]--

  REG = {main="Terra's Staff",sub="Oneiros Grip",
    ammo="Shadow Sachet",head="Wayfarer Circlet",
    neck="Wiglen Gorget",ear1="Black Earring",
    ear2="Darkness Earring",body="Wayfarer Robe",
    hands="Wayfarer Cuffs",ring1="Paguroidea Ring",
    ring2="Sheltered Ring",back="Cheviot Cape",
    waist="Slipor Sash",legs="Wayfarer slops",
    feet="Wayfarer Clogs"} 
	
--[[ Accuracy ]]--

  ACC = {} 
  
--[[ Magic Damage taken - ]]--

  MDT = {} 
  
--[[ Physical Damage taken - ]]--

  PDT = {} 
  
--[[ Breath Damage taken - ]]--

  BDT = {} 
  
--[[ Damage taken - ]]--

  DT = {} 
  
--[[ Melee ]]--

  DD = set_combine(mid.nuke, {main="Xsaeta I"}) 
  
--[[ Resting ]]--

  rest = {} 
  
--[[ Engaged ]]--

  engaged = DD 
  
--[[ Idle ]]--

  idle = Wayfarer 

end 

function precast(spell)
  if spell.skill == 'Healing Magic' then 
    if windower.wc_match(spell.english, 'Cura*|Cure*') then  
      equip(pre.cast, pre.cure, pre[spell.element]) 
	else 
	  equip(pre.cast, pre.healing, pre[spell.element]) 
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
  else 
    equip(pre.cast, pre[spell.element]) 
  end 
end 

function midcast(spell) 
  if spell.skill == 'Healing Magic' then 
    if windower.wc_match(spell.english, 'Cura*|Cure*') then 
      equip(mid.Cure)  
    elseif spell.english:endswith('na') and spell.english ~= 'Cursna' then 
      equip(mid.removal) 
    elseif spell.english == 'Cursna' then 
      equip(mid.Cursna)
    end 
  elseif spell.skill == 'Enhancing Magic' then
    if not windower.wc_match(spell.english, 'Erase|Bar*|Regen*|Protect*|Shell*|Stoneskin') then 
      equip(mid.enhancing) 
    elseif spell.english == 'Erase' then 
      equip(mid.removal) 
    elseif spell.english:startswith('Bar')then 
      if buffactive['Afflatus Solace'] then 
        equip(mid.bar) 
      else 
        equip(mid.bar_no_Solace) 
      end 
    elseif spell.english:startswith('Reg') then 
      equip(mid.Regen) 
    elseif spell.english:startswith('Pro') then 
      equip(mid.Pro) 
    elseif spell.english:startswith('She') then 
      equip(mid.Shell) 
    elseif spell.english == 'Stoneskin' then 
      equip(mid.Stoneskin) 
    elseif spell.english == 'Sneak' and spell.target.name == player.name and buffactive.sneak then 
      send_command('cancel 71') 
    elseif spell.english == 'Blink' and buffactive.blink then 
      send_command('cancel 36') 
    end 
  elseif spell.skill == 'EnfeeblingMagic' then 
    if spell.english == 'Blind' then 
      equip(mid.INT_Enfeeb) 
    else 
      equip(mid.MND_Enfeeb) 
    end 
  elseif spell.skill == 'DarkMagic' then 
    if mid[spell.english] then 
      equip(mid[spell.english]) 
    else 
      equip(mid.nuke, pre[spell.element]) 
    end 
  elseif S{'DivineMagic','ElementalMagic'}:contains(spell.skill)then 
    equip(mid.nuke, pre[spell.element]) 
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
  elseif new == 'Resting' then 
    equip(rest) 
  else 
    equip(idle) 
  end 
end 

function self_command(command) 

--[[ Toggle idle refresh ( ALT F9 ) or ( //gs c i ) ]]--		
  if windower.wc_match(command, 'i|idle') then 
    if idle ~= Wayfarer then 
      idle = Wayfarer 
      add_to_chat(200, 'Gearswap: Idle set to Wayfarer')
      aftercast(spell)
    elseif idle == REG then 
      idle = REF 
      add_to_chat(200, 'Gearswap: Idle set to Refresh') 
      aftercast(spell)
    end 
	
--[[ Toggle DT ( F9 ) or ( //gs c ei ) ]]--	
  elseif windower.wc_match(command, 'ei|ie|e i|i e|engaged idle|idle engaged') then 
    if engaged == PDT then 
      idle = MDT 	
      engaged = MDT 
      add_to_chat(200, 'Gearswap: engaged and idle now MDT') 
      aftercast(spell)
    elseif engaged == MDT then 
      idle = BDT 	
      engaged = BDT
      add_to_chat(200, 'Gearswap: engaged and idle now BDT') 
      aftercast(spell)
    elseif engaged == BDT then 
      idle = DT 	
      engaged = DT 
      add_to_chat(200, 'Gearswap: engaged and idle now DT')
      aftercast(spell)
    elseif engaged == DT then 
      idle = REF 	
      engaged = DD 
      add_to_chat(200, 'Gearswap: engaged now DD idle Refresh')
      aftercast(spell)
    elseif engaged == DD then  
      idle = PDT 	
      engaged = PDT 
      add_to_chat(200, 'Gearswap: engaged and idle now PDT')
      aftercast(spell)
    end 
	
  elseif windower.wc_match(command, 'mdt|MDT') then
    idle = MDT 	
    engaged = MDT 
    add_to_chat(200, 'Gearswap: engaged and idle now MDT') 
    aftercast(spell)
  end 
end 

function file_unload() 
  send_command('unbind !f9') 
  send_command('unbind f9') 
end 
