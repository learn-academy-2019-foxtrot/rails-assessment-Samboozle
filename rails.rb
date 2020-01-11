# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'
puts nil, "Question 1:", nil

# def hello_world lang = 'en'
#   lang = lang.downcase
#   if lang == 'en'
#     "Hello, world!"
#   elsif lang == 'es'
#     "Hola, mundo!"
#   elsif lang == 'de'
#     "Hallo, welt!"
#   elsif lang == 'ru'
#     "Privet, mir"
#   elsif lang == 'ja'
#     "Kon'nichiwa sekai!"
#   else
#     "Hello, wherever you are!"
#   end
# end

#refactored

def hello_world lang = 'en'
  valid_codes = {
    "en" => "Hello, world!",
    "es" => "Hola, mundo!",
    "de" => "Hallo, welt!",
    "ru" => "Privet, mir!",
    "ja" => "Kon'nichiwa sekai!"
  }
  valid_codes[lang.downcase] || "Hello, wherever you are!"
end

puts hello_world      #"Hello, world!"
puts hello_world 'de' #"Hello, world!"
puts hello_world 'rU' #"Privet, mir"
puts hello_world 'lol' #"Hello, wherever you are!"

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'
puts nil, "Question 2a:", nil

def assign_grade n
  case n #like switch! fun fun
  when 100
    "A plus!"
  when 90...100 #.. includes upper limit, ... does not
    "A"
  when 80...90
    "B"
  when 70...80
    "C"
  when 60...70
    "D"
  when 0...60
    "F... wow"
  end
end
puts assign_grade 91.66 # floats work => "A"
puts assign_grade 80 # "B"
puts assign_grade 59 # "F... wow"


# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.
puts nil, "Question 2b:", nil

def assign_grade_stretch n
  case n #like switch! fun fun
  when 100
    "A plus!"
  when 90...100 # .. includes upper limit, ... does not
    "A"
  when 80...90
    "B"
  when 70...80
    "C"
  when 60...70
    "D"
  when 0...60
    "F... wow"
  else
    "invalid"
  end
end

puts assign_grade_stretch 100
puts assign_grade_stretch 100.001

# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'
puts nil, "Question 3a:", nil

def pluralizer n, w
  n == 1 ? "#{n} #{w}" : "#{n} #{w}s"
end

puts pluralizer 5, "cat"
puts pluralizer 1, "unicorn"

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
puts nil, "Question 3b:", nil

def pluralizer_stretch n, w
  special_nouns = {
    "goose" => "geese",
    "family" => "families",
    "cactus" => "cacti"
  }
  n == 1 ? "#{n} #{w}" : special_nouns.key?(w) ? "#{n} #{special_nouns[w]}" : "#{n} #{w}s"
end

puts pluralizer_stretch 5, "goose"
puts pluralizer_stretch 1, "goose"
puts pluralizer_stretch 0, "cat"
puts pluralizer_stretch 1, "family"
puts pluralizer_stretch 1, "dog"
puts pluralizer_stretch 6, "cactus"
