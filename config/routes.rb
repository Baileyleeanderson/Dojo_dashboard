Rails.application.routes.draw do

  get 'dojo/index' => 'dojo#index'
  
  get 'dojos' => 'dojo#dojos'
  
  get 'dojos/new' => 'dojo#new'
  
  post 'dojo/create' => 'dojo#create'
  
  get 'dojos/:id/edit' => 'dojo#edit'
  
  get 'dojos/:id' => 'dojo#show'
  
  patch 'dojo/:id' => 'dojo#update'
  
  get 'dojos/:id/students/new' => 'students#new'
  
  get 'dojos/:id/students/:student_id' => 'students#index'
  
  post 'students/create' => 'students#create'
  
  get 'dojos/:id/students/:student_id/edit' => 'students#edit'
 
  patch 'dojos/:id/students/:student_id' => 'students#update'

  delete 'student/:student_id' => 'students#destroy'
  
  delete 'dojos/:id' => 'dojo#destroy'

  root 'dojo#index'
end
