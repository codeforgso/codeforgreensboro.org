[![Stories in Ready](https://badge.waffle.io/codeforgso/codeforgreensboro.org.png?label=ready&title=Ready)](https://waffle.io/codeforgso/codeforgreensboro.org)

## ★ ★ ★ Code for Greensboro ★ ★ ★

_codeforgreensboro.org_

This is the marketing and information site for Code for Greensboro, the Code for America Brigade for the city of Greensboro, NC.

### About

Ruby on Rails is fast, easy to learn, and fits well with the project landscape of Code for America. This application should probably run without a model, or with a very minimal model for page content. We handle static pages with [High Voltage](https://github.com/thoughtbot/high_voltage), which allows us to keep Rails conventions like layouts and views but without the overhead of a dedicated Pages controller.

### Styling

- Uses [SASS](http://sass-lang.com) for CSS processing
- Uses [Bourbon](http://www.bourbon.io), [Neat](http://www.neat.io) and [Bitters](http://www.bitters.io) for mixins, grids, responsive presentation and to manage sane defaults
- Uses [Font Awesome](https://github.com/bokmann/font-awesome-rails) for quick icon goodness

### Serving static files

Since a lot of the site is static or mostly static pages, we're using [High Voltage](https://github.com/thoughtbot/high_voltage) to make this easier.

The essential part of High Voltage is:

Write your static pages and put them in the RAILS_ROOT/app/views/pages directory.

    $ mkdir app/views/pages
    $ touch app/views/pages/about.html.erb

After putting something interesting there, you can link to it from anywhere in your app with:

    link_to 'About', static_path('about')

You can nest pages in a directory structure, if that makes sense from a URL perspective for you:

    link_to 'Q4 Reports', static_path('about/corporate/policies/HR/en_US/biz/sales/Quarter-Four')

Bam.

### Other dependencies (which we may not even be using yet)

- https://github.com/cranieri/meetup_client

### Getting up and running

- You should have [Ruby](https://www.ruby-lang.org/en/) installed, as well as [Rails](http://rubyonrails.org/)
- Clone this repository
- Run _bundle install_
- Make your changes
- Submit a pull request
- Literally save the world

### Future States

- Use [Markdown for views](http://stackoverflow.com/questions/4163560/how-can-i-automatically-render-partials-using-markdown-in-rails-3/10131299#10131299)

### Help

If you get stuck, send us a message on [Slack](http://slack.codeforgreensboro.org).

### Using Docker for the Database

If you don't want to install Postgresql locally you can use Docker.

```
docker run -p 8080:5432 --name cfgso-postgress -e POSTGRESS_PASSWORD=password -d postgres
# Update the database.yml password and port to match your password and port
rake db:create
# Or RAILS_ENV=production rake db:create
```

### Generate static site using wget

#### Run the app in production mode

```
bin/rails s -e production
wget -r -l inf -k -nc -nH -p -E -e robots=off -P ./static_codforgreensboro.org http://localhost:3000
```
