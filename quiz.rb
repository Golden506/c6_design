while true do
  puts"If an individual's close family was diagnosed with clinical depression, would they be at greater risk of depression?"
  puts"A: No, their risk would be similar to everyone else.\nB: Yes, they would almost certainly be afflicted. \nC: Yes, but they might not be afflicted."
  input = gets.chomp
  input.downcase!
  case
  when input == "c"
    a1 = true
    break
  when
    input == "a" || input == "b"
    a1 = false
    break
  else
    puts "Unrecognized input."
  end
end
while true do
  puts"Which of the following answers is the most common effect of depression?"
  puts"A: Inability to think clearly \nB: Lethargy and loss of interest \nC: Distrust of friends and family \nD: Habitual substance abuse"
  input = gets.chomp
  input.downcase!
  case
  when input == "b"
    a2 = true
    break
  when
  input == "a" || input == "d" || input == "d"
    a2 = false
    break
  else
    puts "Unrecognized input."
  end
end
while true do
  puts"True or false: Men are more likely to be depressed than women."
  puts"A: True\nB: False"
  input = gets.chomp
  input.downcase!
  case
  when input == "b"
    a3 = true
    break
  when
  input == "a"
    a3 = false
    break
  else
    puts "Unrecognized input."
  end
end
while true do
  puts"Is short term sadness/grief considered clinical depression?"
  puts"A: Yes\nB: No"
  input = gets.chomp
  input.downcase!
  case
  when input == "b"
    a4 = true
    break
  when
  input == "a"
    a4 = false
    break
  else
    puts "Unrecognized input."
  end
end
while true do
  puts"Can depression be influenced by environmental conditions?"
  puts"A: Yes\nB: No"
  input = gets.chomp
  input.downcase!
  case
  when input == "b"
    a5 = true
    break
  when
  input == "a"
    a5 = false
    break
  else
    puts "Unrecognized input."
  end
end
while true do
  puts"Which of these is not a possible cause of depression?"
  puts"A: Excess Vitamin D and/or vitamin E\nB: Faulty mood regulation by the brain\nC: Unhealthy diet"
  input = gets.chomp
  input.downcase!
  case
  when input == "a"
    a6 = true
    break
  when
  input == "b" || input == 'c'
    a6 = false
    break
  else
    puts "Unrecognized input."
  end
end
while true do
  puts"Which of these is not a common effect of depression?"
  puts"A: Excessive tiredness or insomnia\nB: Suicidal thoughts\nC: Weight gain/loss\nD: Difficulty empathizing"
  input = gets.chomp
  input.downcase!
  case
  when input == "d"
    a7 = true
    break
  when
  input == "b" || input == 'c' || input == "a"
    a7 = false
    break
    else
    puts "Unrecognized input."
  end
end


