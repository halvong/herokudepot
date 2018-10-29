Agile Rails 5.2.1, 
10/28/2018, Sun

#database
sudo systemctl start postgresql

#Step-by-step
1. rails db:seed
2. heroku run rails db:seed
3.



#Heroku
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
7. heroku run rake db:migrate
8. git add .
   git commit -m "message"
   git push heroku master
   heroku open
   heroku run rake db:migrate (optional)
9. heroku addons
    heroku-postgresql (postgresql-lively-22683)  hobby-dev  free   created
     └─ as DATABASE
10. heroku config
    DATABASE_URL:  postgres://ozfmbwvvlwpdju:46c4f98d68d6eda81af2fd0b1ffc20e2ed4b63896e1909bdad29052bf6ab3f1b@ec2-23-23-80-20.compute-1.amazonaws.com:5432/df6d3luug94ugn
11. heroku ps:scale web=1

