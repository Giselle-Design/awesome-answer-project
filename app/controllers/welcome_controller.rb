class WelcomeController < ApplicationController
    def hello_world
        render(plain: "hello world")
    end
end
