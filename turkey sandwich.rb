def make
  play ingredients
  print "make sandwich"
end
def ingredients
  play bread
  play mayo
  if no_turkey? == true
    play use_chicken
  else
    play turkey
  end
  play cheese
  play bacon
end
def bread
  sample :ambi_dark_woosh
  sleep(2)
end
def mayo
  sample :ambi_glass_hum
  sleep(2)
end
def turkey
  print "turkey"
  sample :drum_snare_hard
  sleep(2)
end
def cheese
  sample :ambi_sauna
  sleep(2)
end
def bacon
  sample :drum_cymbal_soft
  sleep(2)
end

def eat(sandwich)
  sample :ambi_piano
  print "eat sandwich"
  sleep(2)
end
def no_turkey?
  result = [true,false].sample
  print result
  result
end
def use_chicken
  print "chicken"
  play sample :ambi_drone
end
4.times do
  play make
  play eat(60)
end
