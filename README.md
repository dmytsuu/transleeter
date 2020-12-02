# Transleeter

Write English word using Cyrillic letters

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'transleeter'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install transleeter

## Usage

`irb`
```
require 'transleeter'
word = Transleeter::Word.new('BackToBack')
word.transleetable?
word.transleet
```
