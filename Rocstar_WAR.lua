function get_sets() 
add_to_chat(200, 'Gearswap: Engaged ALT+F7') 
add_to_chat(200, 'Gearswap: Idle ALT+F8') 
add_to_chat(200, 'Gearswap: Engaged and Idle ALT+F9') 
add_to_chat(200, 'Gearswap: Auto-Stun ALT+F10') 

send_command('bind !f7 gs c engaged') 

send_command('bind !f8 gs c idle') 

send_command('bind !f9 gs c engaged idle') 

send_command('bind !f10 gs c stun') 

pre = {} 
-- Job Abilities: 
pre["Mighty Strikes"] = {hands="Warrior's Mufflers +2"} 
pre["Warrior's Charge"] = {legs="Warrior's Cuisses +2"} 
pre["Blood Rage"] = {body="Ravager's Lorica +2"} 
pre.Retaliation = {hands="Pummeler's mufflers +1",feet="Ravager's Calligae +2"} 
pre.Restraint = {head="Ravager's Mufflers +2"} 
pre.Warcry = {head="Warrior's Mask +2"} 
pre.Aggressor = {head="Pummeler's mask +1",body="Warrior's Lorica +2"} 
pre.Tomahawk = {feet="Warrior's Calligae +2"} 
pre.Berserk = {main="Conqueror",body="Pummeler's lorica +1",feet="Warrior's Calligae +2"} 
pre.Waltz = {head="Twilight Helm"} 

-- Weapon Skills: 
ws = {} 

ws.str_over_100_percent = {} 
ws.str_80_percent = {}
ws.str_60_percent = {} 
ws.str_60_percent_and_vit_60_percent = {} 
ws.str_50_percent = {} 
ws.str_50_percent_and_vit_50_percent = {} 
ws.vit_73_to_85_percent = {} 

-- Great Axe: 
--------------------------------------------------------------------------------------------------------------------------
pre.Upheaval = set_combine(ws.vit_73_to_85_percent, {neck="Shadow Gorget",waist="Shadow Belt"}) 
pre["Ukko's Fury"] = set_combine(ws.str_80_percent, {neck="Breeze Gorget",waist="Breeze Belt"}) 
pre["Fell Cleave"] = set_combine(ws.str_60_percent, {neck="Breeze Gorget",waist="Breeze Belt"}) 
pre["King's Justice"] = set_combine(ws.str_50_percent, {neck="Breeze Gorget",waist="Breeze Belt"}) 
pre["Metatron Torment"] = set_combine(ws.str_80_percent, {neck="Light Gorget",waist="Light Belt"}) 
pre["Steel Cyclone"] = set_combine(ws.str_60_percent_and_vit_60_percent, {neck="Breeze Gorget",waist="Breeze Belt"}) 
pre["Full Break"] = set_combine(ws.str_50_percent_and_vit_50_percent, {neck="Aqua Gorget",waist="Aqua Belt"}) 
pre["Raging Rush"] = set_combine(ws.str_50_percent, {neck="Aqua Gorget",waist="Aqua Belt"}) 
pre["Weapon Break"] = set_combine(ws.str_60_percent_and_vit_60_percent, {neck="Thunder Gorget",waist="Thunder Belt"}) 
pre["Keen Edge"] = set_combine(ws.str_over_100_percent, {neck="Shadow Gorget",waist="Shadow Belt"}) 
pre["Armor Break"] = set_combine(ws.str_60_percent_and_vit_60_percent, {neck="Thunder Gorget",waist="Thunder Belt"}) 
pre.Sturmwind = set_combine(ws.str_60_percent, {neck="Aqua Gorget",waist="Aqua Belt"}) 
pre["Iron Tempest"] = set_combine(ws.str_60_percent, {neck="Soil Gorget",waist="Soil Belt"}) 
pre["Shield Break"] = set_combine(ws.str_60_percent_and_vit_60_percent, {neck="Thunder Gorget",waist="Thunder Belt"}) 

acc = {main="",sub="",ammo="",head="",neck="",ear1="",ear2="",body="",hands="",ring1="",ring2="",back="",waist="",legs="",feet=""} 

bdt = {main="",sub="",ammo="",head="",neck="",ear1="",ear2="",body="",hands="",ring1="",ring2="",back="",waist="",legs="",feet=""} 

dd = {main="Castigation",sub="Tzacab Grip",ammo="Oneiros Pebble",
head="Felistris Mask",neck="",ear1="Bladeborn Earring",ear2="Steelflash Earring",
body="Xaddi Mail",hands="Mikinaak Gauntlets",ring1="Rajas Ring",ring2="Cho'j Band",
back="Atheling Mantle",waist="Cetl Belt",legs="Mikinaak Cuisses",feet="Cizin Greaves"} 

dt = {main="",sub="",ammo="",head="",neck="",ear1="",ear2="",body="",hands="",ring1="",ring2="",back="",waist="",legs="",feet=""} 
mdt = {main="",sub="",ammo="",head="",neck="",ear1="",ear2="",body="",hands="",ring1="",ring2="",back="",waist="",legs="",feet=""} 
pdt = {main="",sub="",ammo="",head="",neck="",ear1="",ear2="",body="",hands="",ring1="",ring2="",back="",waist="",legs="",feet=""} 
ref = {main="",sub="",ammo="",head="",neck="",ear1="",ear2="",body="",hands="",ring1="",ring2="",back="",waist="",legs="",feet=""} 

reg = set_combine(tp, {neck="Wiglen Gorget",ring1="Paguroidea Ring",ring2="Sheltered Ring",back="Iximulew Cape"}) 

max_reg = set_combine(tp,reg, {head="Otomi Helm"}) 

rr = {head="Twilight Helm",body="Twilight Mail"} 

fish = {range="Ebisu Fishing Rod",head="Wivre Hairpin",neck="Fisher's Torque",
body="Fisherman's Smock",hands="Fsh. Gloves",ring1="Puffin Ring",ring2="Noddy Ring",
back="Nexus Cape",legs="Fisherman's Hose",feet="Waders"} 

tp = dd 

idle = reg 

stun = false 

speed_feet = true 

end 

function precast(spell) 
  if windower.wc_match(spell.type, 'JobAbility|WeaponSkill') then 
    if pre[spell.english] then 
	  equip(pre[spell.english]) 
	else 
	  if spell.english == 'Spectral Jig' and buffactive.sneak then 
        send_command('cancel 71') 
	  end 
	  if spell.type == 'WeaponSkill' and not pre[spell.english] then 
	    equip(ws.str_over_100_percent) 
	  end 
	end 
  elseif windower.wc_match(spell.type, 'Step|Flourish1') then 
    equip(acc) 
  end 
end 

function aftercast(spell) 
  if player.status == 'Engaged' then 
    equip(tp) 
  else 
    equip(idle) 
  end 
end 

function status_change(new) 
  if new == 'Engaged' then 
    equip(tp) 
  elseif new == 'Idle' then 
    if player.hpp > 75 then 
	  idle = reg 
	else 
	  idle = max_reg 
	end 
	if speed_feet ~= false then 
      equip(idle,({feet="Hermes' Sandals +1"})) 
	else 
	  equip(idle) 
	end 
  end 
end 
 

function self_command(command) 
-- toggle idle and engaged "//gs c ei" ect... 
  if windower.wc_match(command, 'ei|ie|e i|i e|engaged idle|idle engaged|ENGAGED IDLE|IDLE ENGAGED') then 
    if tp == dd then 
	  tp = dt 
	  idle = dt 
	  add_to_chat(200, 'Gearswap: engaged and idle now DT') 
	  status_change(new) 
	elseif tp == dt then 
	  tp = mdt 
	  idle = mdt 
	  add_to_chat(200, 'Gearswap: engaged and idle now MDT') 
	  status_change(new) 
	elseif tp == mdt then 
	  tp = pdt 
	  idle = pdt 
	  add_to_chat(200, 'Gearswap: engaged and idle now PDT') 
	  status_change(new) 
	elseif tp == pdt then 
	 tp = bdt 
	 idle = bdt 
	 add_to_chat(200, 'Gearswap: engaged and idle now BDT') 
	 status_change(new) 
    elseif tp == bdt then 
	  tp = rr 
	  idle = rr 
	  add_to_chat(200, 'Gearswap: engaged and idle now Auto-Reraise') 
	  status_change(new) 
	elseif tp == rr then 
	  tp = acc 
	  idle = reg 
	  add_to_chat(200, 'Gearswap: engaged now Accuracy and idle Regen') 
	  status_change(new) 
	elseif tp == acc then 
	  tp = dd 
	  idle = reg 
	  add_to_chat(200, 'Gearswap: engaged now DD and idle Regen') 
	  status_change(new) 
	end 
	
-- Toggle Engaged "//gs c e" ect... 
  elseif windower.wc_match(command, 'e|E|Engaged|engaged') then 
    if tp == dd then 
	  tp = acc 
	  add_to_chat(200, 'Gearswap: Engaged now Accuracy') 
	  status_change(new) 
	elseif tp == acc then 
	  tp = dt 
	  add_to_chat(200, 'Gearswap: Engaged now DT -') 
	  status_change(new) 
	elseif tp == dt then 
	  tp = mdt 
	  add_to_chat(200, 'Gearswap: Engaged now MDT -') 
	  status_change(new) 
	elseif tp == mdt then 
	  tp = pdt 
	  add_to_chat(200, 'Gearswap: Engaged now PDT -') 
	  status_change(new) 
	elseif tp == pdt then 
	  tp = bdt 
	  add_to_chat(200, 'Gearswap: Engaged now BDT -') 
	  status_change(new) 
	elseif tp == bdt then 
	  tp = rr 
	  add_to_chat(200, 'Gearswap: Engaged now Auto-Reraise') 
	  status_change(new) 
	elseif tp == rr then 
	  tp = reg 
	  add_to_chat(200, 'Gearswap: Engaged now Regen') 
	  status_change(new) 
	elseif tp == reg then 
	  tp = ref 
	  add_to_chat(200, 'Gearswap: Engaged now Refresh') 
	  status_change(new) 
	elseif tp == ref then 
	  tp = acc 
	  add_to_chat(200, 'Gearswap: Engaged now Accuracy') 
	  status_change(new) 
	end 
	
-- Toggle Idle "//gs c i" ect...
  elseif windower.wc_match(command, 'i|I|idle|Idle') then 
    if idle == reg then 
	  idle = dt 
	  add_to_chat(200, 'Gearswap: idle now DT -') 
	  status_change(new) 
	elseif idle == dt then 
	  idle = mdt 
	  add_to_chat(200, 'Gearswap: idle now MDT -') 
	  status_change(new) 
	elseif idle == mdt then 
	  idle = pdt 
	  add_to_chat(200, 'Gearswap: idle now PDT -') 
	  status_change(new) 
	elseif idle == pdt then 
	  idle = bdt 
	  add_to_chat(200, 'Gearswap: idle now BDT -') 
	  status_change(new) 
	elseif idle == bdt then 
	  idle = rr 
	  add_to_chat(200, 'Gearswap: idle now Auto-Reraise') 
	  status_change(new) 
	elseif idle == rr then 
	  idle = ref 
	  add_to_chat(200, 'Gearswap: idle now Refresh') 
	  status_change(new) 
	elseif idle == ref then 
	  idle = acc 
	  add_to_chat(200, 'Gearswap: idle now Accuracy') 
	  status_change(new) 
	elseif idle == acc then 
	  idle = dd 
	  add_to_chat(200, 'Gearswap: idle now DD') 
	  status_change(new) 
	elseif idle == dd then 
	  idle = reg 
	  add_to_chat(200, 'Gearswap: idle now Regen') 
	  status_change(new) 
	end 
	
-- Set Idle "//gs c idt" ect...
  elseif windower.wc_match(command, 'idt|IDT|i dt|I DT|idle dt|IDLE DT') then 
    if idle ~= dt then 
      idle = dt 
	  add_to_chat(200, 'Gearswap: idle now DT -') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'imdt|IMDT|i mdt|I MDT|idle mdt|IDLE MDT') then 
    if idle ~= mdt then 
      idle = mdt 
	  add_to_chat(200, 'Gearswap: idle now MDT -') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'ipdt|IPDT|i mdt|I PDT|idle pdt|IDLE PDT') then 
    if idle ~= pdt then 
      idle = pdt 
	  add_to_chat(200, 'Gearswap: idle now PDT -') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'ibdt|IBDT|i bdt|I BDT|idle bdt|IDLE BDT') then 
    if idle ~= bdt then 
      idle = bdt 
	  add_to_chat(200, 'Gearswap: idle now BDT -') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'irr|IRR|i rr|I RR|idle rr|IDLE RR') then 
    if idle ~= rr then 
      idle = rr 
	  add_to_chat(200, 'Gearswap: idle now Auto-Reraise') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'iref|IREF|i ref|I REF|idle ref|IDLE REF') then 
    if idle ~= ref then 
      idle = ref 
	  add_to_chat(200, 'Gearswap: idle now Refresh') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'iacc|IACC|i acc|I ACC|idle acc|IDLE ACC') then 
    if idle ~= acc then 
      idle = acc 
	  add_to_chat(200, 'Gearswap: idle now Accuracy') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'idd|IDD|i dd|I DD|idle dd|IDLE DD') then 
    if idle ~= dd then 
      idle = dd 
	  add_to_chat(200, 'Gearswap: idle now DD') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'ireg|IREG|i reg|I REG|idle reg|IDLE REG') then 
    if idle ~= reg then 
      idle = reg 
	  add_to_chat(200, 'Gearswap: idle now Regen') 
	  status_change(new) 
	end 
	
-- Set Engaged 
  elseif windower.wc_match(command, 'edt|EDT|e dt|E DT|engaged dt|ENGAGED DT') then 
    if tp ~= dt then 
      tp = dt 
	  add_to_chat(200, 'Gearswap: Engaged now DT -') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'emdt|EMDT|e mdt|E MDT|engaged mdt|ENGAGED MDT') then 
    if tp ~= mdt then 
      tp = mdt 
	  add_to_chat(200, 'Gearswap: Engaged now MDT -') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'epdt|EPDT|e pdt|E PDT|engaged pdt|ENGAGED PDT') then 
    if tp ~= pdt then 
      tp = pdt 
	  add_to_chat(200, 'Gearswap: Engaged now PDT -') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'ebdt|EBDT|e bdt|E BDT|engaged bdt|ENGAGED BDT') then 
    if tp ~= bdt then 
      tp = bdt 
	  add_to_chat(200, 'Gearswap: Engaged now BDT -') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'err|ERR|e rr|E RR|engaged rr|ENGAGED RR') then 
    if tp ~= rr then 
      tp = rr 
	  add_to_chat(200, 'Gearswap: Engaged now Auto-Reraise') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'eref|EREF|e ref|E REF|engaged ref|ENGAGED REF') then 
    if tp ~= ref then 
      tp = ref 
	  add_to_chat(200, 'Gearswap: Engaged now Refresh') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'eacc|EACC|e acc|E ACC|engaged acc|ENGAGED ACC') then 
    if tp ~= acc then 
      tp = acc 
	  add_to_chat(200, 'Gearswap: Engaged now Accuracy') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'edd|EDD|e dd|E DD|engaged dd|ENGAGED DD') then 
    if tp ~= dd then 
      tp = dd 
	  add_to_chat(200, 'Gearswap: Engaged now DD') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'ereg|EREG|e reg|E REG|engaged reg|ENGAGED REG') then 
    if tp ~= reg then 
      tp = reg 
	  add_to_chat(200, 'Gearswap: Engaged now Regen') 
	  status_change(new) 
	end 
  elseif windower.wc_match(command, 'f|F|fish|Fish|FISH') then
    equip(fish) 
    add_to_chat(200, 'Gearswap: equip fishing set') 
	
-- Toggle Auto-Stun
  elseif windower.wc_match(command, 's|S|stun|Stun|STUN') then 
    if stun == false then 
	  stun = S{7,8} 
	  add_to_chat(200, 'Gearswap: Auto Stun now TP and Spellcasting') 
	elseif stun == S{7,8} then 
      stun = S{7} 
	  add_to_chat(200, 'Gearswap: Auto Stun now TP') 
	elseif stun == S{7} then 
      stun = S{8} 
	  add_to_chat(200, 'Gearswap: Auto Stun now Spellcasting') 
	elseif stun == S{8} then 
      stun = false 
	  add_to_chat(200, 'Gearswap: Auto Stun now Disabled') 
	end
  end 
end 

windower.register_event('action', function(auto_stun) 
  if stun ~= false then 
    local mob = windower.ffxi.get_mob_by_target('t')
    if auto_stun.target_count ~= 0 then 
      if auto_stun.targets[1].action_count ~= 0 then 
        if auto_stun.targets[1].actions[1].message ~= 0 then 
          if (mob and mob.is_npc and mob.id == auto_stun.actor_id) and 
            stun:contains(auto_stun.category) then 
            auto_violent_flourish() 
          end 
        end 
      end 
    end 
  end 
end) 

function auto_violent_flourish() 
  send_command('input /ja "Violent Flourish" <t>') 
end 

function file_unload() 
  send_command('unbind !f7') 
  send_command('unbind !f8') 
  send_command('unbind !f9') 
  send_command('unbind !f10') 
end 
