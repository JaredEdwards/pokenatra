
#home page listing all artists
get "/pokemon" do
  @pokes = Pokemon.all
  erb (:"pokemon/index")
end

# this creates a new poke'
get "/pokemon/new" do
  erb(:"pokemon/new")
end

# create
post "/pokemon" do
  @poke = Pokemon.create!(params[:pokemon])
  redirect("/pokemon/#{@poke.id}")
end

#show
get "/pokemon/:id" do
  @poke = Pokemon.find(params[:id])
  erb (:"pokemon/show")
end

# route to edit poke
get "/pokemon/:id/edit" do
  @poke = Pokemon.find(params[:id])
  erb (:"pokemon/edit")
end

#to update poke
put "/pokemon/:id" do
  @poke = Pokemon.find(params[:id])
  @poke.update(params[:poke])
  redirect("/pokemon/#{@poke.id}")
end

#destroy the poke :(
delete "/pokemon/:id" do
  @poke = Pokemon.find(params[:id])
  @poke.destroy
  redirect to("/pokemon")
end
