# update_in_batches

This gem adds a class/scope method to your ActiveRecord models, that gives you the same functionality of `update_all` but using the batching behavior of `find_in_batches`.

It is a short cut for:

```ruby
Model.find_in_batches do |batch|
  ids = batch.map(&:id)
  Model.where(id: ids).update_all
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'update_in_batches'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install update_in_batches

## Usage

```ruby
class Project < ActiveRecord::Base
end

Project.where(active: true).update_in_batches(active: false)
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/update_in_batches/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
