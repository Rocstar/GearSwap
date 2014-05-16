function get_sets()

send_command('input /macro book 7;wait .1;input /macro set 1')

send_command('bind !F7 gs c s') 

send_command('bind !F8 gs c e') 

send_command('bind !F9 gs c w')

pre = {}

pre.waltz = {head="Otronif Mask",body="Otronif Harness",hands="Otronif Gloves",
ring1="Defending Ring",ring2="Dark Ring",back="Iximulew Cape",legs="Otronif Brais",
feet="Otronif Boots"}

pre['Curing Waltz II'] = pre.waltz

pre['Curing Waltz III'] = pre.waltz

pre.Chakra = set_combine(pre.waltz, {hands="Melee Gloves +2"}) 

pre['Hundred Fists'] = {legs="Melee hose +2"}

pre['Formless Strikes'] = {body="Melee Cyclas +2"}

pre['Chi Blast'] = {body="Melee crown +2"}

pre.Footwork = {feet="Tantra Gaiters +2"}

pre.Counterstance = {feet="Melee Gaiters +2"}

pre.Mantra = {feet="Melee Gaiters +2"}

pre.light = {neck="Light Gorget",waist="Light Belt"}

pre['Shijin Spiral'] = pre.light

pre['Victory Smite'] = pre.light

pre['Final Heaven'] = pre.light

pre["Ascetic's Fury"] = pre.light

dd = {main="Oatixur",ammo="Honed Tathlum",head="Manibozho Beret",neck="Asperity Necklace",
ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Manibozho Jerkin",hands="Manibozho Gloves",
ring1="Epona's Ring",ring2="Rajas Ring",back="Atheling Mantle",waist="Cetl Belt",
legs="Manibozho Brais",feet="Manibozho Boots"}

crit_dmg = set_combine(dd, {head="Espial Cap",body="Espial Gambison",hands="Espial Bracers",
legs="Espial Hose",feet="Espial Socks"})

acc = {ammo="Honed Tathlum",head="Manibozho Beret",neck="Ej Necklace",
ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Manibozho Jerkin",hands="Hesychast's Gloves",
ring1="Epona's Ring",ring2="Enlivened Ring",back="Anchoret's Mantle",waist="Cetl Belt",
legs="Manibozho Brais",feet="Manibozho Boots"}

PDT = {main="Oatixur",ammo="Honed Tathlum",head="Otronif Mask",
neck="Wiglen Gorget",ear1="Bladeborn Earring",ear2="Steelflash Earring",body="Otronif Harness",
hands="Otronif Gloves",ring1="Defending Ring",ring2="Dark Ring",back="Atheling Mantle",
waist="Black Belt",legs="Otronif Brais",feet="Otronif Boots"}

MDT = set_combine(PDT, {neck="Twilight Torque",back="Mollusca Mantle"})

DT = set_combine(PDT, {neck="Twilight Torque",back="Mollusca Mantle"})

low = set_combine(PDT, {neck="Wiglen Gorget",ring1="Paguroidea Ring",ring2="Sheltered Ring",back="Iximulew Cape"})

high = set_combine(low, {head="Ocelomeh Headpiece +1",body="Mel. Cyclas +2"})

fish = {range="Ebisu Fishing Rod",neck="Fisher's Torque",body="Fisherman's Smock",
hands="Fsh. Gloves",ring1="Puffin Ring",ring2="Noddy Ring",back="Nexus Cape",
legs="Fisherman's Hose",feet="Waders"}

e = dd

ws = dd

i = low

stun = false

gorget = false

sheltered = false

shell = buffactive['Shell']

pro = buffactive['Protect']

end

function precast(spell)
 if spell.type == 'WeaponSkill' then
  if pre[spell.english] then
   if gorget ~= false then 
   equip(ws, pre[spell.english]) 
   else equip(ws)
   end
  end
 elseif spell.english == 'Spectral Jig' and buffactive.sneak then 
 send_command('cancel 71')
 elseif windower.wc_match(spell.type, 'JobAbility|Waltz') then
  if pre[spell.english] then 
  equip(pre[spell.english])
  end
 elseif windower.wc_match(spell.type, 'Step|Flourish1') then 
 equip(acc)
 end 
end

function aftercast(spell)
 if player.status == 'Engaged' then
  if sheltered ~= false then
   if pro and shell then
   equip(e)
   else
   equip(e,({ring2="Sheltered Ring"}))
   end
  else
  equip(e)
  end
 else
 equip(i)
 end 
end

function status_change(new,old)
 if new == 'Engaged' then
  if sheltered ~= false then
   if pro and shell then
   equip(e)
   else
   equip(e,({ring2="Sheltered Ring"}))
   end 
  else
  equip(e)
  end
 elseif new == 'Idle' then
  if player.hpp <= 80 then
  i = high
  else
  i = low
  end
 equip(i)
 end 
end

function self_command(command)
 if command == 'e' then
  if e == dd then e = PDT add_to_chat(200, 'Gearswap: Engaged now Physical Damage Taken -') equip(e)
  elseif e == PDT then e = MDT add_to_chat(200, 'Gearswap: Engaged now Magic Damage Taken -') equip(e)
  elseif e == MDT then e = DT add_to_chat(200, 'Gearswap: Engaged now Damage Taken -') equip(e)
  elseif e == DT then e = acc add_to_chat(200, 'Gearswap: Engaged now Accuracy') equip(e)
  elseif e == accuracy then e = dd add_to_chat(200, 'Gearswap: Engaged now Damage Dealer') equip(e)
  end
 elseif command == 'ws' then
  if ws == crit_dmg then ws = accuracy add_to_chat(200, 'Gearswap: Weapon Skill now Accuracy') equip(ws)
  elseif ws == accuracy then ws = dd add_to_chat(200, 'Gearswap: Weapon Skill now Damage Dealer') equip(ws)
  elseif ws == dd then ws = crit_dmg add_to_chat(200, 'Gearswap: Weapon Skill now Crit. Damage') equip(ws)
  end
 elseif command == 'r' then
  if sheltered == false then sheltered = true
  add_to_chat(200, 'Gearswap: Using Sheltered Ring while Engaged if no Pro + Shell')
  elseif sheltered == true then sheltered = false
  add_to_chat(200, 'Gearswap: Disabled Sheltered Ring while Engaged if no Pro + Shell')
  end
 elseif command == 'b' then
  if gorget == false then gorget = true add_to_chat(200, 'Gearswap: Using WS Belt and Gorget') 
  elseif gorget == true then gorget = false add_to_chat(200, 'Gearswap: Disabled WS Belt and Gorget') 
  end
 elseif command == 's' then
  if stun == false then stun = S{7,8} add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting')
  elseif stun == S{7,8} then stun = S{7} add_to_chat(200, 'Gearswap: Auto Stun now TP')
  elseif stun == S{7} then stun = S{8} add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting')
  elseif stun == S{8} then stun = false add_to_chat(200, 'Gearswap: Auto Stun now Disabled')
  end
 elseif command == 'fish' then equip(fish) add_to_chat(200, 'Gearswap: equip fishing set') 
 end 
end

windower.register_event('action', function(_)
 if stun ~= false then
 local m = windower.ffxi.get_mob_by_target('t')
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
 send_command('input /ja "Violent Flourish" <t>')
end

function file_unload()
 send_command('unbind !F7')
 send_command('unbind !F8')
 send_command('unbind !F9') 
end
