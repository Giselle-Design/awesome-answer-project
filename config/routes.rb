Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # our application is running on localhost:3000
  # Inside of this file is where we define what resources we want to be
  # available to users 

  # URL: http://localhost:3000/path 
  # HTTP Request are used to interact with  our server. They are made up of a 
  # HTTP VERB and PATH
  # VERB  PATH          CONTROLLER  PUBLIC METHOD
  # 👇    👇                👇        👇
   get("/hello_world", to: "welcome#hello_world") # when someone sends a GET
  # request to "/hello_world" path, they are routed (sent) to welcome controller,
  # hello_world action (method).

  # GET "/" WelcomeController.root method
  get "/", to: "welcome#root", as: 'root'

  # GET "/contact_us"
  get("/contact_us", to: "welcome#contact_us")

  # POST "/process_contact"
  post("/process_contact", to: "welcome#process_contact")

  # Question Related Routes
  # question new page
  # when someone sends a GET request to /questions/new, it will be handled by the new actions 
  # inside questions controller
  get '/questions/new', {to: 'questions#new', as: :new_questions }

  # handles submission of new questions form
  post '/questions', {to: 'questions#create', as: :questions }
  
  # question show page
  get '/questions/:id', { to: 'questions#show', as: :question }

  # questions index page
  get '/questions', { to: 'questions#index' }

  # question edit page
  get '/questions/:id/edit', { to: 'questions#edit', as: :edit_question}
  
  # handles submission of form on the question edit page
  patch '/questions/:id', { to: 'questions#update' }

  # delete a question
  delete '/questions/:id', { to: 'questions#destroy' }

  # Below line builds all of the above routes for us :)
  # resources :questions

end
