
# require modules here
require "yaml"
# path = 'lib/emoticons.yml'
require 'pry'

def load_library(path)
  # code goes here
  library = YAML.load_file(path)
  translations = library.map do |meaning, values| 
    #binding.pry
    [
      meaning,
      { english: values[0], japanese: values[1] }
    ]
  end
  translations.to_h
  #binding.pry
end

def get_japanese_emoticon(library, emoticon)
  # code goes here
  translations = load_library(library)
  value = translations.to_a.find do |meaning, values|
    if values[:english] == emoticon
       true
    else 
       false 
    end 
  end 
  #binding.pry
<<<<<<< HEAD
   if value
     value[1][:japanese]
   else
     "Sorry, that emoticon was not found"
   end 
end 

def get_english_meaning(library, emoticon)
  translations = load_library(library)
  value = translations.to_a.find do |meaning, values|
    if values[:japanese] == emoticon
      true
    else
      false
    end
  end
  #binding.pry
    if value
      value[0]
    else 
      "Sorry, that emoticon was not found"
    end
end
=======
   if value 
     values[:japanese]
   else 
     "Sorry the emoticon is not found"
   end 
end 
  
      
  
  
  
  
  
  
  
  
  
  
  
  
  #binding.pry
  # result = translations.find do |meaning, translation|
  # binding.pry
  #   if result
  #     result[1][:japanese] == emoticon
  #   else
  #     'Sorry, that emoticon was not found'
  #   end
  # end 
end

def get_english_meaning(library, emoticon)
  # code goes here
  translations = load_library(library)
  result = translations.find do |meaning, translation|
    if result
      result[1][:english] == emoticon
    else
      'Sorry, that emoticon was not found'
    end
  end 
end 
>>>>>>> 2aa16dbeab57a87ead7b1126c7fc99b45fe0e0bc
