require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/definition")
require("./lib/word")

get("/") do
  erb(:index)
end

# get('/definitions') do
#   @definitions = Definition.all()
#   erb(:definitions)
# end

# get('/definition/new') do
#   erb(:definitions_form)
# end

# post('/defintions') do
#   definition = params.fetch("definition")
#   definition = Definition.new(definition)
#   definition.save()
#   erb(:success)
# end

# get('/definitions/:id') do
#   @definition = Definition.find(params.fetch("id").to_i())
#   erb(:definition)
# end

get("/words/new") do
  erb(:words_form)
end

get("/words") do
  @words = Word.all()
  erb(:words)
end

post("/words") do
  word_name = params.fetch("word_name")
  word = Word.new(word_name)
  word.save()
  redirect "/words/#{word.id()}"
end

# get("/definitions/:id") do
#   @definition = Definition.find(params.fetch("id").to_i())
#   erb(:definition)
# end

get("/words/:id") do
  @word = Word.find(params.fetch("id").to_i())
  erb(:word)
end

get("/words/:id/definitions/new") do
  @word = Word.find(params.fetch("id").to_i())
  erb(:word_definitions_form)
end

post("/definitions") do
  definition = params.fetch("definition")
  definition = Definition.new(definition)
  # @definition.save() # for this exercise definition only needs to be added to word, not saved on its own
  word = Word.find(params.fetch("word_id").to_i())
  word.add_definition(definition)
  # erb(:success)
  redirect "/words/#{word.id()}"
end
