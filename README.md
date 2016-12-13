README

# Setup

```
https://rvm.io/rvm/install
```

* Install ruby:
```
rvm install ruby-2.2.3 && ruby use ruby-2.2.3
```

* Ubuntu essentials
```
sudo apt-get update
sudo apt-get install imagemagick --fix-missing
```

* Get code
```
git clone git@github.com:heri/LifeRecipe.git
cd NutritionReference && bundle install
```

* Secret `set_secret_base`
```
rake secret
```
Setup `vi config/config.yml`
```
production:
  secret_key_base: # add secret
```

* Setup `vi config/database.yml`

* Setup db
```
RAILS_ENV=production rake db:create
RAILS_ENV=production rake db:schema:load
```

* Setup `settings` + `payment_gateways`
```
RAILS_ENV=production rake db:seed
```

# Update after git pull

* Update assets
```
RAILS_ENV=production rake assets:precompile
```

* Set Permission (if assets)
```
chown -R rails:rails /home/rails/LifeRecipe
```

* Config nginx/unicorn
```
vi /etc/nginx/sites-enabled/rails
```
Unicorn :
```
vi /etc/defaut/unicorn
```

* Reload web server
```
service nginx reload
service unicorn restart
