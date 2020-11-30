**Prerequisite**
* Docker Desktop installed - [Docker Desktop](https://www.docker.com/products/docker-desktop)

**Setup**
* `docker-compose build`
* `docker-compose run web bundle exec rails db:create db:setup`
* `docker-compose up`

**Activity**

You can create new questions at `http://localhost:3000`.

You can see question and response activity at `http://localhost:3000/dashboard`

**A note on testing views**

In an effort to keep this repo simple to set up and run, we have not added any tools for integration testing, such as Capybara. If you do want to make assertions about what is rendered, it may be helpful to use [Rspec's `render_views` macro](https://relishapp.com/rspec/rspec-rails/v/3-9/docs/controller-specs/render-views#render-views-on-and-off-in-nested-groups).
