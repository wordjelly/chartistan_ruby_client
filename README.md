# ChartistanRubyApi

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/chartistan_ruby_api`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chartistan_ruby_api'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install chartistan_ruby_api

## Usage

### Authentication:
To authenticate visit https://www.chartistan.com. Once there, sign up using Google. Navigate to your profile, and copy your API Key.

The following table lists the available api calls

| URL                               	| METHOD 	| SAMPLE API CALL                                                                                                                                                                                                                                                                         	| PURPOSE            	|   	|
|-----------------------------------	|--------	|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|--------------------	|---	|
| /datasets.json?user_token=API_KEY 	| POST   	| {   "dataset" : {      "name" : "My first dataset",      "description" : "My first dataset description",      "license" : "",      "license_url" : "",      "public" : "yes/no",      "blobs_attributes" : [            {               "file" : FILE_OBJECT            }       ]   } } 	| CREATE NEW DATASET 	|   	|
|                                   	|        	|                                                                                                                                                                                                                                                                                         	|                    	|   	|
|                                   	|        	|                                                                                                                                                                                                                                                                                         	|                    	|   	|


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/chartistan_ruby_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/chartistan_ruby_api/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the ChartistanRubyApi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/chartistan_ruby_api/blob/master/CODE_OF_CONDUCT.md).
