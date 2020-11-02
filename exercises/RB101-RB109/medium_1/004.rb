# 4) 1000 LIGHTS:
# You have a bank of switches before you, numbered from 1 to n.  Each switch
# is connected to exactly one light that is initially off.  You walk down
# the row of switches and toggle every one of them.  You go back to the
# beginning, and on this second pass, you toggle switches 2, 4, 6, and so on.
# On the third pass, you go back again to the beginning and toggle switches
# 3, 6, 9, and so on.  You repeat this process and keep going until you have
# been through n repetitions.  Write a method that takes one argument, the
# total number of switches, and returns an Array that identifies which
# lights are on after n repetitions.
# --------------------------------------------------------------------------- #

def toggle_switch(state)
  case state
  when "on"  then "off"
  when "off" then "on"
  end
end

def switch_lights(num)
  light_bank = Array.new(num, "on")
  iteration = 2
  
  num.times do
    light_bank.map!.with_index do |state, idx|
      (idx + 1) % iteration == 0 ? (toggle_switch(state)) : (state)
    end
    iteration += 1
  end

  results = []
  light_bank.each.with_index do |light, idx|
    results << idx + 1 if light == "on"
  end

  results
end

# EXAMPLES: ----------------------------------------------------------------- #
# with n = 5 lights:
p switch_lights(5) == [1, 4]

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The return value is [1, 4].

p switch_lights(10) == [1, 4, 9]
# The return value is [1, 4, 9].

p switch_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
