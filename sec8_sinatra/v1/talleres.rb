# http://localhost:4567
# http://sinatrarb.com/intro.html

# sinatra ve la carpeta 'views' por defecto
require 'sinatra'

def workshop_content(name)
  File.read("workshops/#{name}.txt")
rescue Errno::ENOENT
  return nil
end

def save_workshop(name, description)
  File.open("workshops/#{name}.txt", "w") do |file|
    file.print(description)
  end
end

def delete_workshop(name)
  File.delete("workshops/#{name}.txt")
end

#--------------------------------------------------------------------------------------------

get '/' do
  @files = Dir.entries("workshops")

  erb :home, layout: :main

  #dentro de los archivos erb tenemos:
  # tag de <% %> es para agregar código
  # tag de salida <%= %> para imprimir en el html
end

#--------------------------------------------------------------------------------------------

get '/create' do 
  erb :create, layout: :main
end

post '/create' do
  save_workshop(params["name"], params["description"])
  @name = params["name"]
  @message = "creado"

  erb :done, layout: :main
end

#--------------------------------------------------------------------------------------------

get '/:name' do
  @name = params[:name]
  @description = workshop_content(@name)

  erb :workshop, layout: :main
end

put '/:name' do
  save_workshop(params[:name], params["description"])

  redirect URI.escape("/#{params[:name]}")
end

delete '/:name' do
  @name = params[:name]
  delete_workshop(@name)
  @message = "eliminado"

  erb :done, layout: :main
end

#--------------------------------------------------------------------------------------------

get '/:name/edit' do
  @name = params[:name]
  @description = workshop_content(@name)

  erb :edit, layout: :main
end

#--------------------------------------------------------------------------------------------