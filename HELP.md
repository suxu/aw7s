
    git clone git://github.com/heroku/ruby-sample.git
    cd ruby-sample
    heroku create
    git push heroku master
    heroku open




[remote "heroku"]
        url = git@107.21.95.3:gentle-basin-2560.git
        fetch = +refs/heads/*:refs/remotes/heroku/*



git remote add heroku git@heroku.com:aw7s.git

git remote add heroku git@107.21.95.3:aw7s.git

vpn:dylanv587


heroku login

 input email & password

heroku apps:create aw7s
 
 git remote add heroku git@heroku.com:aw7s.git

git push heroku master
	

heroku run rake db:migrate --app aw7s

heroku run rake assets:precompile --app aw7s

heroku run rake db:seed --app aw7s