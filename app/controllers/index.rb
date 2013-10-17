get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/color' do

  #Create and return a JSON object with the random cell and color given below.

        # erb :cell, layout: false
  cell= rand(1..9)
  color= "#" + "%06x" % (rand * 0xffffff)
  content_type :JSON
  {cell: cell, color: color}.to_json
end