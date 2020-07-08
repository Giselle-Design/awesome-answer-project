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
  get "/", to: "welcome#root"
end
