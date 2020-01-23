# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer: Model defines features and associations of an object;
               Controller defines handling of requests for an object;
               View defines the presentation of information to a user

  Researched answer: Model => data-related logic;
                     View => UI logic;
                     Controller => Model-View communication



2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the ?route? in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the controller in the file app/controllers
  /statics_controller.rb
  ```
  class StaticsController < ApplicationController
    def about
      render 'about.html.erb'
    end
  end
  ```

  Step 3: Create the View in the file app/views/statics/about.html.erb
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of each route.

/users/       method="GET"     # :controller => 'users', :action => 'index'

calls index (or get-all) method from UsersController

/users/1      method="GET"     # :controller => 'users', :action => 'show'

calls show (or get-one) method from UsersController, passing :id as params

/users/new    method="GET"     # :controller => 'users', :action => 'new'

calls new method, which renders the view (get) for posting (see next)

/users/       method="POST"    # :controller => 'users', :action => 'create'

calls create (post) method, which attempts to add an object to the database

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'

calls edit method, which pulls an existing object into a view (get) where it
can be edited (takes :id param)

/users/1      method="PUT" (or PATCH) # :controller =>'users', :action=>'update'

calls update method, which sends whatever was in the /edit view form to patch
the existing object

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'

calls destroy method, which attempts to delete the object with the :id param

3b. Which of the above routes must always be passed params and why?

  Show needs to know what _single_ item to show;
  Update needs to know what _single_ item to alter;
  Destroy needs to know what _single_ item to delete; etc...

  (also, you need params for whatever validates based on params)

4. What is the public folder used for in Rails?

  Your answer: Boilerplate or rote circumstances (during production, mostly?).

  Researched answer: Serves default stuff?



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

  get '/game/:guess' => 'main#game'


6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: The action references method to be called, which may have an
  attached HTTP verb designated in the routes.

  Researched answer: This connection is best seen with 'rails routes' in bash.


7. Name two rails generator commands and what files they create:

  rails g controller things
    => app/controllers/things_controller.rb
    => app/views/things
    => app/helpers/things_helper.rb
    => app/assets/stylesheets/things.scss

  rails g migration do_things_to_things
    => db/migrage/datetime_do_things_to_things.rb



8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. Validations can be written as model methods or as models themselves
(extending ActiveModel validators)

2. db:rollback 😎

3. Minor distinctions between Model.new vs Model.create (more minutae)
