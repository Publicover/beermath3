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

7. 























#
