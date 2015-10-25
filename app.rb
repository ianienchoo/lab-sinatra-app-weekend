class ScotchApp < Sinatra::Base

  get "/" do
    redirect('/scotches')
  end

  get "/scotches" do
    @scotches = Scotch.all
    erb(:"scotches/index")
  end

  post "/scotches" do
    @scotch = Scotch.new(params[:scotch])
    if @scotch.save
      redirect("/scotches/#{@scotch.id}")
    else
      erb(:"scotches/new")
    end
  end

  get "/scotches/new" do
    @scotch = Scotch.new
    erb(:"scotches/new")
  end

  get "/scotches/:id" do
    @scotch = Scotch.find(params[:id])
    erb(:"scotches/show")
  end

  # edit
  get '/scotches/:id/edit' do
    @scotch = Scotch.find(params[:id])
    erb(:"scotches/edit")
  end

  # update
  post '/scotches/:id/update' do
    @scotch = Scotch.find(params[:id])
    if @scotch.update(params[:scotch])
      redirect("/scotches")
    else
      erb(:"scotches/new")
    end
  end

  # destroy
  post '/scotches/:id/delete' do
    @scotch = scotch.find(params[:id])
    if @scotch.destroy
      redirect('/scotches')
    else
      redirect("/scotches/#{@scotch.id}")
    end
  end

end
