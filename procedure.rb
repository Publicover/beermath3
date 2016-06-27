1. install ruby, rails and SQLite
   # on Mac, Ruby comes standard. download SQLite, then run

    $ gem install rails

2. create bare bones rails app
   #rails new <app_name>

    $ rails new beermath3

3. switch to folder

  cd beermath3

4. start git depository

  git init
  git add .
  git commit -m "initial commit"

  #then go to github and create repo with same name
  #copy and paste commands they give you

    git remote add origin https://github.com/Publicover/beermath3.git
    git push -u origin master

5. start rails server, get app up on page

  rails s
  #then on browser URL
    localhost:3000

6. create dashboard controller
   # i'm going to user a plural because i don't like singular controllers

   $ rails generate controller dashboards index

7. set resources and root route
   #app/config/routes.rb

         Rails.application.routes.draw do
           resources :beers
           get 'dashboards/index'
           root 'dashboards#index'
         end

8. generate beers controller
   #need actions

   rails generate controller beers new create
   #or just rails generate controller
    #with new HTML files for each action
      #e.g. app/views/beers/new.html.erb

9. use form_for in new

      #  <%= form_for :article do |f| %>
      #    <p>
      #      <%= f.label :title %><br>
      #      <%= f.text_field :title %>
      #    </p>

      #    <p>
      #      <%= f.label :text %><br>
      #      <%= f.text_area :text %>
      #    </p>

      #    <p>
      #      <%= f.submit %>
      #    </p>
      #  <% end %>

10. generate beers model

  rails generate model Beer name:string brewer:string price:integer ounce:integer calorie:integer rating:integer

11. migrate info to database

  rake db:migrate

12. add code that lets you save info in the controller, including strong params

        def new
        end

        def create
          @beer = Beer.new(article_params)

          @beer.save
          redirect_to @beer
        end

        private
          def article_params
            params.require(:beer).permit(:name, :brewer, :price, :ounce, :calorie, :rating)
          end

13. add show action to controller

          def show
            @beer = Beer.find(params[:id])
          end




















#
