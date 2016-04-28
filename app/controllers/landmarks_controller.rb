class LandmarksController < ApplicationController

  get('/landmarks') {erb :"landmarks/index"}

  get('/landmarks/new') {erb :"landmarks/new"}

  get('/landmarks/:id') {@landmark = Landmark.find_by_id(params[:id]);erb :'landmarks/show'}

  post('/landmarks') {Landmark.create(params["landmark"]);erb :"/landmarks/index"}


  get('/landmarks/:id/edit'){@landmark = Landmark.find_by_id(params[:id]);erb :'landmarks/edit'} 

  post('/landmarks/:id'){@landmark = Landmark.find_by_id(params[:id]);@landmark.update(params[:landmark]);@landmark.save;erb :'/landmarks/#{@landmark.id}'}
  
end
