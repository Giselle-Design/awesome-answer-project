class Question < ApplicationRecord
    # This is the Question model. We generate this 
    # file with the command:
    # rails g model question title:string body:text
    # This command also genrates a migration file 
    # in db/migrate

    # Rails will add attr_accessors for all columns 
    # of the table (i.e. title, body, created_at, updated_at, view_count)
end
