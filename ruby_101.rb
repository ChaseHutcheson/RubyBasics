# Projects

def calculator
    system('cls')
    puts "**************************"
    puts "*     Cool Calculator    *"
    puts "**************************"
    puts


    # Methods
    def addition(num1, num2)
        return num1 + num2
    end

    def subtraction(num1, num2)
        return num1 - num2
    end

    def multiplication(num1, num2)
        return num1 * num2
    end

    def division(num1, num2)
        return num1 / num2
    end


    # Input
    print "Enter the first number: "
    first_number = gets.to_f
    puts

    print "Enter the second number: "
    second_number = gets.to_f
    puts

    puts "(A) Addition"
    puts "(S) Subtraction"
    puts "(M) Multiplication"
    puts "(D) Division"
    print "Choose an operation: "
    operation = gets.chomp.downcase
    puts

    # Conditions

    case operation
        when "a"
            print "Result: " + addition(first_number, second_number).to_s
        when "s"
            print "Result: " + subtraction(first_number, second_number).to_s
        when "m"
            print "Result: " + multiplication(first_number, second_number).to_s
        when "d"
            print "Result: " + division(first_number, second_number).to_s
        else
            print "ERROR: Invalid Operation. Operator: #{operation}"
    end
end

def guessing_game
    system('cls')
    puts "**************************"
    puts "*      Guessing Game    *"
    puts "**************************"
    puts

    secret_words = [
      "Abandon", "Abbreviate", "Aberration", "Abhor", "Abject", "Abrasive", "Abscond", "Absolve", "Abstruse", "Abyss",
      "Acclaim", "Accord", "Accrue", "Acerbic", "Acquiesce", "Admonish", "Aegis", "Affable", "Aggrandize", "Alacrity",
      "Allay", "Alleviate", "Aloof", "Ambiguous", "Ameliorate", "Amiable", "Anomaly", "Antipathy", "Aplomb", "Apocryphal",
      "Arbitrary", "Ascendancy", "Assuage", "Astringent", "Audacious", "Auspicious", "Avarice", "Bane", "Beguile", "Belie",
      "Belligerent", "Benign", "Bequeath", "Berate", "Bereft", "Brevity", "Bucolic", "Cacophony", "Cajole", "Callous",
      "Candor", "Capitulate", "Capricious", "Catalyst", "Catharsis", "Censure", "Chagrin", "Chastise", "Circumvent", "Clairvoyant",
      "Clamor", "Cloying", "Coalesce", "Cognizant", "Collusion", "Complacent", "Conciliate", "Conflate", "Conundrum", "Copious",
      "Corpulent", "Cower", "Credulous", "Curtail", "Debilitate", "Debunk", "Decimate", "Deferential", "Defile", "Deleterious",
      "Delineate", "Demure", "Denigrate", "Deprecate", "Deride", "Derivative", "Despondent", "Detrimental", "Devious", "Dichotomy",
      "Diffident", "Disparate", "Disseminate", "Dissipate", "Dormant", "Dubious", "Eccentric", "Effervescent", "Elicit", "Eloquent",
      "Emaciate", "Embezzle", "Empirical", "Endemic", "Enervate", "Enigmatic", "Ephemeral", "Epiphany", "Epitome", "Equivocal",
      "Ethereal", "Eulogy", "Euphoria", "Evanescent", "Exacerbate", "Exalt", "Exasperate", "Exemplify", "Exorbitant", "Expedite",
      "Exonerate", "Exorbitant", "Extemporaneous", "Exuberant", "Facetious", "Fathom", "Fawn", "Fervent", "Fiasco", "Flagrant",
      "Flippant", "Foment", "Forbearance", "Forlorn", "Forsake", "Fortuitous", "Fractious", "Furtive", "Galvanize", "Garish",
      "Genial", "Gesticulate", "Glean", "Gluttony", "Grandiloquent", "Gratuitous", "Gregarious", "Guile", "Hackneyed", "Harangue",
      "Harbinger", "Harrowing", "Haughty", "Hedonist", "Heretic", "Hiatus", "Homogeneous", "Hubris", "Hypocrisy", "Iconoclast",
      "Idiosyncrasy", "Ignoble", "Illicit", "Imbue", "Immutable", "Impasse", "Impecunious", "Impede", "Imperative", "Imperious",
      "Impervious", "Impetuous", "Impinge", "Implacable", "Implicit", "Impute", "Inane", "Ineffable", "Inexorable", "Infamous",
      "Ineffable", "Inefficacious", "Ingratiate", "Inimical", "Innate", "Inscrutable", "Insipid", "Insuperable", "Intercede",
      "Intractable", "Intransigent", "Inundate", "Inure", "Inveigle", "Inveterate", "Irascible", "Juxtapose", "Jubilant", "Jocular",
      "Juxtapose", "Kaleidoscope", "Ken", "Kowtow", "Labyrinthine", "Lament", "Languish", "Laud", "Levity", "Lethargy",
      "Lithe", "Loquacious", "Lucid", "Lugubrious", "Macabre", "Magnanimous", "Malaise", "Malleable", "Maverick", "Mellifluous",
      "Menagerie", "Mendacious", "Meticulous", "Mirth", "Mitigate", "Modicum", "Mollify", "Monolithic", "Morose", "Mundane",
      "Myriad", "Nadir", "Nebulous", "Nefarious", "Nepotism", "Noxious", "Nuance", "Obfuscate", "Oblique", "Obsequious",
      "Obtuse", "Ominous", "Opulent", "Ostentatious", "Overwrought", "Pacify", "Palpable", "Panacea", "Paradox", "Parsimonious",
      "Peculiar", "Pedantic", "Pejorative", "Penchant", "Pensive", "Pernicious", "Peruse", "Pervasive", "Petulant", "Phlegmatic",
      "Pinnacle", "Pithy", "Placate", "Plausible", "Plethora", "Poignant", "Pragmatic", "Preamble", "Precarious", "Precipice",
      "Predilection", "Pretentious", "Proclivity", "Prodigious", "Profuse", "Prolific", "Propensity", "Prosaic", "Prowess", "Pugnacious",
      "Pulchritude", "Quaint", "Quell", "Querulous", "Quixotic", "Rancor", "Rapacious", "Recluse", "Redolent", "Refute",
      "Relegate", "Relinquish", "Remonstrate", "Rendition", "Replete", "Repudiate", "Resilient", "Resplendent", "Reticent", "Retrograde",
      "Reverie", "Rhapsody", "Rife", "Ruminate", "Sagacious", "Salient", "Sanguine", "Sardonic", "Savvy", "Scrupulous",
      "Scurrilous", "Serendipity",

     "Serenity", "Sibilant", "Soporific", "Sordid", "Specious", "Sporadic", "Spurious", "Squalid",
      "Stalwart", "Staunch", "Sycophant", "Taciturn", "Tangible", "Tantalize", "Tendentious", "Tenuous", "Timorous", "Trepidation",
      "Truncate", "Ubiquitous", "Umbrage", "Unctuous", "Undulate", "Upbraid", "Urbane", "Usurp", "Vacillate", "Vapid",
      "Vehement", "Venerable", "Voracious", "Wane", "Wary", "Wistful", "Wily", "Winsome", "Writhe", "Xenophobia",
      "Yield", "Zephyr", "Zealous", "Zenith", "Zephyr"
    ]

    random = rand(0..(secret_words.length - 1)).to_i
    answer = secret_words[random]
    guess = ""
    guesses = 0
    guess_limit = 3
    out_of_guesses = false
    common_letters = []
    puts "World Length: #{answer.length}"
    puts secret_words
    puts

    common_letters = []

    while guess != answer and !out_of_guesses
        if guesses < guess_limit
            puts "Guesses Left: #{guess_limit - guesses}"
            print "Guess a word: "
            guess = gets.chomp.downcase

            # Find and store common letters
            common_letters = guess.chars.select { |char| answer.include?(char) }

            # Break out of the loop if the guess is correct
            break if guess == answer

            puts "Common Letters: #{common_letters.join(", ")}"
            guesses += 1
        else
            out_of_guesses = true
        end
    end

    if out_of_guesses
        puts "Answer: #{answer}"
        print "You Lose"
    else
        puts "You Win"
    end
end

# Title and Choice
puts "**************************"
puts "*      Ruby Projects     *"
puts "*------------------------*"
puts "*  By: Chase Hutcheson   *"
puts "*  Date: Feb 6, 2024     *"
puts "**************************"
puts

puts "Please Choose a Project"
puts "(1) Calculator"
puts "(2) Guessing Game"
choice = gets.chomp.to_i

case choice
    when 1
        calculator()
    when 2
        guessing_game()
end