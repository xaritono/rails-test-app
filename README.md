# Rails Test App
#### Requirements:

* Ruby/Rails versions
    * ruby ~> '2.4.1'
    * rails ~> '5.0.2'

* System dependencies
    * PostgreSQL
    * Node.js ~> '6.0'
    * Yarn
    * Elasticsearch ~> '5.0'
    * Redis

* Services
    * Sidekiq

* Configuration
    * you need to copy a versions of `config/*.yml.example` to `config/*.yml`
      and change the values according to your system configuration

#### Deploy Tips
  * Webpack
    * Use `./bin/yarn install --production` to install all required npm dependencies.
    * Precompile packs only when something updated in `config/webpack` or `app/javascript`.
    * Check [Webpacker](https://github.com/rails/webpacker) documentation for further information.
    
*Version 27 March 2017 by JetRuby Agency*

