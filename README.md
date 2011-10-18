# Palindrome #

A **palindrome** is a word, phrase, number, or other sequence of units that can 
be read the same way in either direction, with general allowances for 
adjustments to punctuation and word dividers. - [Wikipedia](http://en.wikipedia.org/wiki/Palindrome)

The Palindrome gem extends the String class with the `palindrome?` method.
## Installing ##

    $ gem install palindrome

## Usage ##
irb example:

```ruby
> require 'palindrome'
=> true
> "Go hang a salami, I'm a lasagna hog.".palindrome?
=> true
> "No palindrome here".palindrome?
=> false
```

## License ##

Palindrome gem is released under the MIT license.
    