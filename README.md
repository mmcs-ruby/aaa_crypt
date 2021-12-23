[![Maintainability](https://api.codeclimate.com/v1/badges/57410da6163563cdd537/maintainability)](https://codeclimate.com/github/mmcs-ruby/aaa_crypt/maintainability)

# AAACrypt
Hi!  This is a library, written in Ruby, that allows you to encrypt and decrypt data of various types using the most popular encryption methods. This project is being developed by students of the Institute of Mathematics, Mechanics and Computer Science.

![](https://c.tenor.com/esCBwJ7Tq4UAAAAd/pc-hack.gif)

# Encryption types
1. Morse code
2. Caesar's cipher
3. ROT13
4. Replacement Cipher
5. RSA (asymmetric cryptography)
6. hashing
7. digital signature
8. Richard Sorge cipher
9. Vernam cipher
10. Vigenère cipher
11. Binary code

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'aaa_crypt'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install aaa_crypt

## Usage
```ruby
#Morse encrypt
morse = Morse::encrypt("Hello World!") #".... . ._.. ._.. ___ _ .__ ___ ._. ._.. _.. __..__"
decruptmorse = Morse::decrypt(morse) #"hello world!"

#Cesar encrypt
ces = Caesar.encrypt("hello world!", 3) #"khoor zruog!"
cesDec = Caesar.decrypt("khoor zruog!", 3) #"hello world!"

#Visener encrypt
vis = Visener.encrypt("Hello World!", "world") #"dscwr sciwg!"
visDec = Visener.decrypt("dscwr sciwg!", "world") #"hello world!"

#ROT13 encrypt
rot13 = Rot13::encrypt("hello world!") #"uryy? }?.yqb"
decryptrot13 = Rot13::decrypt("uryy? }?.yqb") #"hello world!"

#Binary encrypt
Binary::encrypt("hello world") # "1101000 1100101 1101100 1101100 1101111 100000 1110111 1101111 1110010 1101100 1100100 100001"

#Richard Zorge encrypt
zorg = Zorge.encrypt("HI") #981!"
zorgDec = Zorge.decrypt("981") #"Hi!"
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mmcs-ruby/aaa_crypt. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/aaa_crypt/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the AaaCrypt project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/aaa_crypt/blob/master/CODE_OF_CONDUCT.md).
