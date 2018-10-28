Agile Rails 5.2.1, 
10/27/2018, Sat

1.  git init
    git add .
    git commit -m "init"
2. heroku create
    Creating app... done, ⬢ immense-lowlands-87233
    https://immense-lowlands-87233.herokuapp.com/ | https://git.heroku.com/immense-lowlands-87233.git
3. git config --list | grep heroku
4. create Procfile
    web: bundle exec puma -C config/puma.rb
5. rails g scaffold Product title:string description:text image_url:string price:decimal
6. rails db:migrate
7. git add .
   git commit -m "message"
   git push heroku master
   heroku open
