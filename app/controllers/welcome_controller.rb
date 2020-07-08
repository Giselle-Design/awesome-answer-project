class WelcomeController < ApplicationController
    def hello_world
        render(plain: "hello world")
    end

    def root 
        # because of Rails convention every one of these actions will
        # automatically render a template. 
        # the template it renders is inside of views/controller_name/method_name.html.erb
        # so in this case root action will render out the view 'views/welcome/root.html.erb'
    end
end
