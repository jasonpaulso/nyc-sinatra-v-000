class LandmarksController < ApplicationController

  get ('/landmarks') {erb :"landmarks/index"}

  get('/landmarks/new') {erb :"landmarks/new"}

  get('/landmarks/:id') {@landmark = Landmark.find_by_id(params[:id]);erb :'landmarks/show'}

  post '/landmarks' do
    Landmark.create(params["landmark"])
    erb :"/landmarks/index"
  end 

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find_by_id(params[:id])
    erb :'landmarks/edit'
  end

  post '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])
    @landmark.update(params[:landmark])
    @landmark.save
    erb :'/landmarks/#{@landmark.id}'
  end
end
