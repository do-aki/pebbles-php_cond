# Pebbles::PhpCond

PhpCond is emulate PHP condition in ruby


## Installation

Add this line to your application's Gemfile:

    gem 'pebbles-php_cond'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pebbles-php_cond

## Usage

### bool method 
cast to boolean that used if statements in php.

```ruby
puts Pebbles::PhpCond.bool(1)   # true

puts Pebbles::PhpCond.bool(0)   # false
puts Pebbles::PhpCond.bool('0') # false
puts Pebbles::PhpCond.bool('')  # false
puts Pebbles::PhpCond.bool([])  # false
```

### equal? method
emulate php's equal (==) operator. 

```ruby
puts Pebbles::equal?(0, 0)       # true
puts Pebbles::equal?('0', 0)     # true
puts Pebbles::equal?('0', false) # true
puts Pebbles::equal?('0', nil)   # false
puts Pebbles::equal?(nil, false) # true
puts Pebbles::equal?(nil, [])    # true
```


### identical? method
emulate php's identical (===) operator.

```ruby
puts Pebbles::identical?(0, 0)       # true
puts Pebbles::identical?('0', 0)     # false
puts Pebbles::identical?('0', false) # false
puts Pebbles::identical?('0', nil)   # false
puts Pebbles::identical?(nil, false) # false
puts Pebbles::identical?(nil, [])    # false
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
B
5. Create new Pull Request
