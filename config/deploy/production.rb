role :web, "64.27.79.253" # Your HTTP server, Apache/etc
role :app, "64.27.79.253" # This may be the same as your `Web` server
role :db, "64.27.79.253", :primary => true # This is where Rails migrations will run