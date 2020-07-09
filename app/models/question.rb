class Question < ApplicationRecord
    # This is the Question model. We generate this 
    # file with the command:
    # rails g model question title:string body:text
    # This command also genrates a migration file 
    # in db/migrate

    # Rails will add attr_accessors for all columns 
    # of the table (i.e. title, body, created_at, updated_at, view_count)

    # A C T I V E   R E C O R D
    # fetch all question
    # questions = Question.all 👈 this will give us back the list of questions as an object
    # the object behaves like an array so you can call methods on it like (.each) and you 
    # can also chain it with other methods to do other types of operations or querying for example:
    # Question.all.count

    # Creating a new question
    # To create a new question object in memory do:
    # q = Question.new
    # you can also pass in a hash to the new method as in:
    # q = Question.new({title: 'To be or not to be', body: 'is that a question?', view_count: 0 })
    # or for short:
    # q = Question.new title: 'To be or not to be', body: 'is that a question?', view_count: 0

    # Saving a record in database after initializing it or creating it in memory
    # to save a record in database we call the (.save) method on the instantiated object
    # q = Question.new title: "My last question"
    # q.save

    # Creating a record in database directly
    # you can create a record right away in the DB using (.create) mthod as in:
    # Question.create({ title: "My Question Title ", body: "My question body", view_count: 0 })

    
end
