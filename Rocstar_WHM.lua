function get_sets() 			

send_command('@input /macro book 1;wait .1;input /macro set 1') 
add_to_chat(200, 'Gearswap: toggle DT sets ALT+F7') 
add_to_chat(200, 'toggle refresh sets ALT+F8') 
add_to_chat(200, 'toggle auto stun ALT+F9') 
send_command('bind !f7 gs c f') 
send_command('bind !f8 gs c i') 
send_command('bind !f9 gs c s')

pre = {}

pre.Benediction = {body="Cleric's Briault +2"} 
pre['Afflatus Solace'] = {body="Orison Bliaud +2"} 
pre.Devotion = {head="Cleric's Cap +2"} 
pre.Martyr = {hands="Cleric's Mitts +2"}

pre.enhancing = {waist="Siegel Sash"}

pre.Stoneskin = set_combine(pre.enhancing, {head="Umuthi Hat",hands="Carapacho Cuffs"}) 

pre.cast = {ammo="Impatiens",head="Haruspex Hat",neck="Orison Locket",
ear1="Gifted Earring",ear2="Loquacious Earring",body="Marduk's Jubbah +1",hands="Gendewitha Gages",
ring1="Prolix Ring",ring2="Veneficium Ring",back="Ogapepo Cape",waist="Witful Belt",
legs="Orvail Pants +1",feet="Chelona Boots"}

pre.healing = {legs="Orison Pantaloons +2"}

pre.cure = set_combine(pre.healing, {head="Cleric's Cap +2",neck="Aceso's Choker",body="Heka's Kalasiris",
ring1="Prolix Ring",ring2="Veneficium Ring",back="Pahtli Cape",feet="Cure Clogs"})

pre.Retribution = {} 
pre['Spirit Taker'] = {neck="Twilight Torque"}

pre.Earth = {main="Vishrava I"} 
pre.Fire = {main="Atar I"} 
pre.Water = {main="Haoma I"} 
pre.Wind = {main="Vayuvata I"} 
pre.Ice = {main="Vourukasha I"} 
pre.Thunder = {main="Apamajas I"} 
pre.Light = {main="Arka I"} 
pre.Dark = {main="Xsaeta I"}

mid = {}

mid.enhancing = {main="Beneficus",hands="Dynasty Mitts",waist="Olympus Sash",
legs="Cleric's pantaloons +2",feet="Theo. Duckbills"} 

mid.Fire = {waist='Karin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
mid.Earth = {waist='Dorin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
mid.Water = {waist='Suirin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
mid.Wind = {waist='Furin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
mid.Ice = {waist='Hyorin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
mid.Thunder = {waist='Rairin Obi',back='Twilight Cape',ring1='Zodiac Ring'} 
mid.Light = {waist='Korin Obi',back='Twilight Cape'} 
mid.Dark = {waist='Anrin Obi',back='Twilight Cape'}

mid.nuke = {sub="Zuuxowu Grip",ammo="Memoria Sachet",head="Buremte Hat",
neck="Quanpur Necklace",ear1="Friomisi Earring",ear2="Hecate's Earring",body="Bokwus Robe",
hands="Otomi Gloves",ring1="Demon's Ring",ring2="Demon's Ring",back="Toro Cape",
waist="Othila Sash",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}

mid.MND_Enfeeb = {legs="Orvail Pants +1",feet="Cleric's duckbills +2"}

mid.INT_Enfeeb = {legs="Orvail Pants +1",feet="Cleric's duckbills +2"}

mid.Cure = {main="Arka IV",sub="Verse Strap +1",ammo="Incantor Stone",
head="Gendewitha Caubeen",neck="Orison Locket",ear1="Gifted Earring",ear2="Loquacious Earring",
body="Orison Bliaud +2",hands="Bokwus Gloves",ring1="Prolix Ring",ring2="Sirona's Ring",
back="Orison Cape",waist="Witful Belt",legs="Orison Pantaloons +2",feet="Wayfarer Clogs"}

mid.removal = {main="Yagrush",head="Orison Cap +2",legs="Orison Pantaloons +2"} 

mid.Regen = set_combine(mid.enhancing, {body="Cleric's Briault +2",
hands="Orison Mitts +2",legs="Theophany pantaloons"})

mid.Cursna = {main="Beneficus",sub="Genbu's Shield",head="Hyksos Khat",
neck="Malison medallion",body="Orison Bliaud +2",hands="Hieros mittens",ring1="Ephedra ring",
ring2="Ephedra ring",back="Mending cape",legs="Theophany pantaloons"}

mid.Stoneskin = set_combine(mid.enhancing, {waist="Siegel Sash"})

mid.bar = {main="Beneficus",head="Orison Cap +2",body="Orison Bliaud +2",
hands="Orison Mitts +2",legs="Cleric's Pantaloons +2",feet="Orison Duckbills +2"}

mid.bar_no_Solace = set_combine(mid.bar, {body="Blessed Briault"})

mid.Shell = set_combine(mid.enhancing, {ring2="Sheltered Ring",legs="Cleric's pantaloons +2"})

mid.Pro = set_combine(mid.enhancing, {ring2="Sheltered Ring",feet="Cleric's duckbills +2"})

mid.Stun = {main="Apamajas II"}

refresh = {main="Terra's Staff",sub="Oneiros Grip",ammo="Shadow Sachet",
head="Wivre Hairpin",neck="Wiglen Gorget",ear1="Black Earring",ear2="Darkness Earring",
body="Gendewitha Bliaut",hands="Serpentes Cuffs",ring1="Dark Ring",ring2="Dark Ring",
back="Cheviot Cape",waist="Slipor Sash",legs="Tatsumaki Sitagoromo",feet="Serpentes Sabots"}

wayfarer = {main="Terra's Staff",sub="Oneiros Grip",ammo="Shadow Sachet",
head="Wayfarer Circlet",neck="Wiglen Gorget",ear1="Black Earring",ear2="Darkness Earring",
body="Wayfarer Robe",hands="Wayfarer Cuffs",ring1="Paguroidea Ring",ring2="Sheltered Ring",
back="Cheviot Cape",waist="Slipor Sash",legs="Wayfarer slops",feet="Wayfarer Clogs"}

HMP = {main="Numen Staff",ammo="Clarus Stone",head="Orvail Corona",
neck="Eidolon Pendant",ear1="Magnetic Earring",ear2="Relaxing Earring",body="Chelona Blazer",
hands="Nares Cuffs",ring1="Angha Ring",ring2="Star Ring",back="Vita Cape",
waist="Austerity Belt",legs="Menhit Slacks",feet="Chelona Boots"}

fish = {range="Ebisu Fishing Rod",head="Wivre Hairpin",neck="Fisher's Torque",
body="Fisherman's Smock",hands="Fsh. Gloves",ring1="Puffin Ring",ring2="Noddy Ring",
back="Nexus Cape",legs="Fisherman's Hose",feet="Waders"}

ACC = {}

MDT = {neck="Twilight Torque"}

PDT = {neck="Wiglen Gorget"}

BDT = {neck="Twilight Torque"}

DT = {neck="Twilight Torque"}

DD = set_combine(mid.nuke, {main="Xsaeta I"})

e = DD

i = wayfarer

stun = false

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
 elseif S{'WeaponSkill','JobAbility'}:contains(spell.type) then
  render(spell)
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
 elseif spell.skill == 'Enfeebling Magic' then
  if spell.english == 'Blind' then
   equip(mid.INT_Enfeeb)
  else
   equip(mid.MND_Enfeeb)
  end
 elseif spell.skill == 'Dark Magic' then
  render(spell)
  if not mid[spell.english] then
   equip(mid.nuke, pre[spell.element])
  end
 elseif S{'Elemental Magic', 'Divine Magic'}:contains(spell.skill) then
  equip(mid.nuke, pre[spell.element])
 end
end

function aftercast(spell)
 if player.status == 'Engaged' then
  equip(e)
 else
  equip(i)
 end 
end

function status_change(new)
 if new == 'Engaged' then
  equip(e)
 elseif new == 'Resting' then
  equip(HMP)
 else
  equip(i)
 end 
end

function render(spell)
 if pre[spell.english] then
  equip(pre[spell.english])
 elseif mid[spell.english] then
  equip(mid[spell.english])
 end 
end

function self_command(command)
--[[ Toggle DT ( ALT F7 ) or ( //gs c f ) ]]--	
 if windower.wc_match(command, 'f|F|full|Full|FULL|ei|ie|e i|i e|engaged idle|idle engaged') then
  if e == PDT then
   i = MDT
   e = MDT
   add_to_chat(200, 'Gearswap: engaged and idle now MDT')
   status_change(new)
  elseif e == MDT then
   i = BDT
   e = BDT
   add_to_chat(200, 'Gearswap: engaged and idle now BDT')
   status_change(new)
  elseif e == BDT then
   i = DT
   e = DT
   add_to_chat(200, 'Gearswap: engaged and idle now DT')
   status_change(new)
  elseif e == DT then
   i = refresh
   e = DD
   add_to_chat(200, 'Gearswap: engaged now DD idle Refresh')
   status_change(new)
  elseif e == DD then
   i = PDT
   e = PDT
   add_to_chat(200, 'Gearswap: engaged and idle now PDT')
   status_change(new)
  end

--[[ Toggle idle refresh ( ALT F8 ) or ( //gs c i ) ]]--		
 elseif windower.wc_match(command, 'i|I|idle|Idle') then
  if i ~= wayfarer then
   i = wayfarer
   add_to_chat(200, 'Gearswap: Idle set to Wayfarer')
   status_change(new)
  elseif i == wayfarer then
   i = refresh
   add_to_chat(200, 'Gearswap: Idle set to Refresh')
   status_change(new)
  end

--[[ Toggle Auto Stun ( ALT F9 ) or ( //gs c s ) ]]--  
 elseif windower.wc_match(command, 's|S|stun|Stun|stun mode|Stun Mode') then
  if stun == false then
   stun = S{7,8} add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting')
  elseif stun == S{7,8} then
   stun = S{7} add_to_chat(200, 'Gearswap: Auto Stun now TP')
  elseif stun == S{7} then
   stun = S{8} add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting')
  elseif stun == S{8} then
   stun = false add_to_chat(200, 'Gearswap: Auto Stun now Disabled')
  end

--[[ macro or typed commands ( /console gs c stun tp ) or ( //gs c stun tp ) (ect..) ]]--  
 elseif command == 'stun tp' then
  if stun ~= S{7} then
   stun = S{7} 
   add_to_chat(200, 'Gearswap: Auto Stun now TP')
  end

 elseif command == 'stun ma' then
  if stun ~= S{8} then
   stun = S{8} 
   add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting')
  end

 elseif windower.wc_match(command, 'on|go|On|Go|stun on|stun go|Stun On|Stun Go|stun all|Stun All') then
  if stun ~= S{7,8} then
   stun = S{7,8} 
   add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting')
  end

 elseif windower.wc_match(command, 'off|stop|Stop|Stop|stun off|stun stop|Stun Off|Stun Stop') then
  if stun ~= false then
   stun = false 
   add_to_chat(200, 'Gearswap: Auto Stun now Disabled')
  end

 elseif windower.wc_match(command, 'pdt|PDT') then
  i = PDT
  e = PDT
  add_to_chat(200, 'Gearswap: engaged and idle now PDT')
  status_change(new)

 elseif windower.wc_match(command, 'mdt|MDT') then
  i = MDT
  e = MDT
  add_to_chat(200, 'Gearswap: engaged and idle now MDT')
  status_change(new)

 elseif windower.wc_match(command, 'bdt|BDT') then
  i = BDT
  e = BDT
  add_to_chat(200, 'Gearswap: engaged and idle now BDT')
  status_change(new)

 elseif windower.wc_match(command, 'dt|DT') then
  i = DT
  e = DT
  add_to_chat(200, 'Gearswap: engaged and idle now DT')
  status_change(new)

 elseif windower.wc_match(command, 'iw|i w|IW|I W|idlewayfarer|IdleWayfarer|idle wayfarer|Idle Wayfarer') then
  i = wayfarer
  add_to_chat(200, 'Gearswap: Idle now Wayfarer')
  status_change(new)

 elseif windower.wc_match(command, 'ir|i r|IR|I R|idlerefresh|IdleRefresh|idle refresh|Idle Refresh') then
  i = refresh
  add_to_chat(200, 'Gearswap: Idle now Refresh')
  status_change(new)

 elseif command == 'fish' then
  equip(fish) 
  add_to_chat(200, 'Gearswap: equip fishing set')

 end 
end

windower.register_event('action', function(_)
 if stun ~= false then
 local m = windower.ffxi.get_mob_by_target('bt')
  if _.target_count ~= 0 then
   if _.targets[1].action_count ~= 0 then
    if _.targets[1].actions[1].message ~= 0 then
     if (m and m.is_npc and m.id == _.actor_id) and stun:contains(_.category) then
     auto_stun()
     end
    end
   end
  end
 end 
end)

function auto_stun()
 send_command('input /ma Stun <bt>')
end

function file_unload() 
  send_command('unbind !f7') 
  send_command('unbind !f8')  
  send_command('unbind !f9')
end 
