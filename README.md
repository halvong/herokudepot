Agile Rails 5.2.1, 
11/03/2018, Sat
p199 

#database
sudo systemctl start postgresql
#misc
heroku logs --tail

#Step-by-step
1. rails db:seed
2. heroku run rails db:seed
3. rails g controller Store index
4. heroku run rails dev:cache
5. rails g scaffold Cart
7. rails db:migrate
8. rails generate scaffold LineItem product:references cart:belongs_to
9.  git push heroku master
10. rails generate migration add_quantity_to_line_items quantity:integer
11. rails db:migrate
12. rails generate migration combine_items_in_cart
13. rails db:migrate - p135
14. rails db:migrate:status  - p138
15. rails g channel products
16. rails generate scaffold Order name address:text email pay_type:integer
17. rails generate migration add_order_to_line_item order:references, p175
18. rails db:migrate, heroku run rails db:migrate
19. rails dbconsole, p188
20. curl --silent http://localhost:5000/products/3/who_bought.atom
    curl --silent https://immense-lowlands-87233.herokuapp.com/products/5/who_bought.atom
21. gem 'webpacker', '~> 3.0'
    bundle install
    rails webpacker:install
    rails webpacker:install:react
    
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
7. heroku run rails db:migrate
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

