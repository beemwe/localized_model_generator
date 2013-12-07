# LocalizedModelGenerator

With this gem you can automatically implement the localized files when you generate a new model. 

## Installation

Add this line to your application's Gemfile:

    gem 'localized_model_generator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install localized_model_generator

## Usage

After installation you can create a new model with 

    $ rails g localized_active_record user first_name:string last_name:string email:string blah:reference --locale=de
      create  db/migrate/20131207124707_create_users.rb
      create  app/models/user.rb
      invoke  test_unit
      create    test/unit/user_test.rb
      create    test/fixtures/users.yml
      create  config/locales/user.en.yml
      create  config/locales/user.de.yml

As you can see, all files where generated as if you would use the model generator except the two YML files in /config/locale. (The english version ist created automatically.)
These files contain the Active Record translations, which can be used immediatelly in your views.

If you always have the same languages, you need to translate, you can preset those in your application configuration (/config/application.rb):

    config.generators.locale = %w(de,es)

Finally, if you want to use this model generator also in your scaffold generator, you have to add the following in your application configuration (/config/application.rb):

    config,generators.orm = localized_active_record

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
