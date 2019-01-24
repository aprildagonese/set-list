class SetList < Sinatra::Base
  get '/songs' do
    @songs = Song.all
    erb :"songs/index", :locals => { :songs => @songs }
  end

  get '/songs/new' do
    erb :"songs/new"
  end

  get '/songs/:id' do
    @song = Song.find(params[:id])
    erb :"songs/show"
  end

  post '/songs' do
    @song = Song.new(params[:song])
    @song.save
    redirect '/songs'
  end
end
