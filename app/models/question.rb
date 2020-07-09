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

    # Fetching Records 
    # .first 
    # Question.first 👈 fetches the first record ordered by the id in an ascending order 
    # The sql equivalent:
    # SELECT "questions".* FROM "questions" ORDER BY "questions"."id" ASC LIMIT 1;

    # .last
    # Question.last 👈 fetches the last record ordered by the id in an ascending order 
    # The sql equivalent:
    # SELECT "questions".* FROM "questions" ORDER BY "questions"."id" DESC LIMIT 1;

    # .find
    # Question.find(1) 👈 finding records by their primary key which is likely id

    # .find_by_x which x is the column name
    # Question.find_by_title("One more Question") 👈 this finds a question with title
    # exactly "One more Question"

    # .where
    # Question.where( {title: "My Question Title", body: "My question body" })

    # WILDCARD SEARCHING 
    # You can perform wildcard searching with ActiveRecord using LIKE within where method
    # Question.where(['title LIKE ?', '%more%'])
    # if you are using Postgres client, you can use ILIKE for case-insensitive searching:
    # Question.where(['title ILIKE ?', '%more%'])
    # Note that in above queries we used a syntax that uses '?' to insert variable into a SQL
    # query. this is important to avoid having SQL injection if the variable component is 
    # actually a suer input such as search term.

    # .limit 
    # Question.limit(10) 👈 this will give us back 10 first question that are returned 
    # from the query

    # .order 
    # Question.order(:created_at) 👈 this will order the fetched records by 
    # created_at by default in ASC and if you want them in descending order do:
    # Question.order(created_at: :DESC)

    # Chaining
    # you can chain the where, limit, order, offset, and many others to compose
    # more sophisticated queries for example:
    # Question.where(['view_count > ?', 10]).where(['title ILIKE ?', '%a%']).order(id: :DESC).limit(10).offset(10)
    # Note: offset will skip first 10 records 
    # SELECT "questions".* FROM "questions" WHERE (view_count > 10) AND (title ILIKE '%a%') ORDER BY id DESC LIMIT 10 OFFSET 10;

    # UPDATE RECORDS
    # once you've select one or more records, you have ability to update them
    # Manually setting attributes
    # q = Question.find 10
    # q.title = "UPDATED TITLE"
    # q.view_count = 10
    # q.save

    # Using .update_attribute, .update_attributes, or .update
    # q = Question.find 11
    # q.update({ title: 'UPDATED TITLE', body: 'UPDATED BODY' }) or 
    # q.update_attribute({ title: 'UPDATED TITLE' }) or 
    # q.update_attributes({ title: 'UPDATED TITLE', body: 'UPDATED BODY' }) or 

    # DELETING RECORDS
    # using .destroy 
    # q = Question.find 10
    # q.destroy

    # using .delete
    # q = Question.find 11
    # q.delete

    # using .delete skips executing callback methods after_destroy and before_destroy
    # and also skips deleting or nullifying associated records in the :dependent option
    # with associations. Generally, avoid using .delete in favor of .destroy.
    # There are very few cases when you want to use .delete

    # Aggregate Functions 
    # .count
    # Question.count 👈 counts the number of records in question model 
    # SQL Equivalent:
    # SELECT COUNT(*) FROM "questions";

    # .group
    # Question.select('avg(view_count) as count').group('title')

    # CALLING RAW QUERIES
    # connection = ActiveRecord::Base.connection
    # result = connection.execute('SELECT * FROM questions WHERE id = 20;')
    # result.first 👈 because the result is an array of hashes

end
