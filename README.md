# JSQueue

A simple queue data structure in Ruby.

## Installation

Install with
```
gem install JSQueue
```

Or in your gems file
```
gem 'JSQueue'
```

## Usage

First, require the gem:
```ruby
require 'JSQueue'
```

You can create new queues with any datatype you'd like. Just do:
```ruby
queue = JSQueue.new 'Something I need in the queue'
```

You can add items to the queue like so:
```ruby
queue.enqueue ['an array', 'of things']
```

And you can remove and return a value from the front of the queue:
```ruby
queue.dequeue
# => 'Something I need in the queue'
```

## Documentation
View the full docs at [here](http://www.rubydoc.info/gems/JSQueue/1.0.1/JSQueue).

## Support

Please [open an issue](https://github.com/joshsaintjacque/jsqueue/issues/new) for support.

## Contributing

Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and [open a pull request](https://github.com/joshsaintjacque/jsqueue/compare/).