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

    $ rails g localized_active_record user name:string --locale=es de

As you can see, all files where generated as if you would use the model generator except the three YML files in /config/locale.
These files contain the Active Record translations, which can be used immediatelly in your views.

If you always have the same languages, you need to translate, you can preset those in your application configuration (/config/application.rb):

    config.generators.locale = %w(de,es)

Btw: the english localization file is always included!

Finally, if you want to use this model generator also in your scaffold generator, you have to add the following in your application configuration (/config/application.rb):

    config,gen.orm = localized_active_record

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
