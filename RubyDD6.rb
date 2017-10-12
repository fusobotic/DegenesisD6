#command line application for Degenesis Dice Rolling

currentnum = 0

loop{
  i = 0
  fails = 0
  successes = 0
  triggers = 0
  botchnum = 0

  puts "How many dice?"
  dicenum = gets.chomp.downcase
  if dicenum == "q" || dicenum == "quit"
    exit
  end
  dicenum = dicenum.to_i
  if dicenum > 12 || dicenum < 1
    puts "Enter valid number."
  else
    print "Dice Results: "
    while i < dicenum do
        r = rand(1..6)
        print r.to_s + " "
        if r == 6
          triggers += 1
          successes += 1
        elsif r < 6 && r > 3
          successes += 1
        elsif r > 1
          fails += 1
        else
          fails += 1
          botchnum += 1
        end
        i +=1
    end
    puts ""
    if botchnum > successes
      puts "BOTCHED!"
    end
    puts "Fails: " + fails.to_s
    puts "Successes: " + successes.to_s
    puts "Triggers: " + triggers.to_s
    puts " "
  end
  currentnum = dicenum
}
