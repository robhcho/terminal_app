require 'unirest'


while true

  p "What word would you like to look up?"
  user_word = gets.chomp

  if user_word == "q"
    break
  else

  response = Unirest.get("http://api.wordnik.com/v4/word.json/#{user_word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

  dictionary_definition = response.body
  definition = dictionary_definition[0]["text"]
  
  response2 = Unirest.get("http://api.wordnik.com/v4/word.json/#{user_word}/topExample?useCanonical=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")
  
  dictionary_example = response2.body
  top_example = dictionary_example["text"]

  response3 = Unirest.get("http://api.wordnik.com/v4/word.json/#{user_word}/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")
  
  dictionary_pron = response3.body
  pronunciations = dictionary_pron[0]["raw"]
  
  p "definition: #{definition}"
  p "top_example: #{top_example}"
  p "pronunciation: #{pronunciation}"

  end
end