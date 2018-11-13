# README

This is a sample Rails 5.2 application that you can use as a starting point for your own
Rails project on [Render](https://render.com).

The sample app is deployed at [https://rails.app.render.com](https://rails.app.render.com).

## Deployment
1. Create a new PostgreSQL database in Render.

2. Create a new web service in Render using your version of this repo, and the following values:
    * Build Command: `./build.sh`
    * Start Command: `./start.sh`
    * Under the 'Advanced' section, add a new environment variable named `SECRET_KEY_BASE` and set the value to a sufficiently strong secret. You can generate a value locally by running `bundle exec rake secret`.

3. While the project is building, under **Environment**, link the database created in step 1 to your web service.

That's it! Your web service will be live on your Render URL as soon as the build finishes.
