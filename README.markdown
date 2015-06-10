# Mad Libs

## About

Best of Ruby Quiz, Chapter 1

This Ruby Quiz is to write a program that presents the user with that favorite childhood game, Mad Libs... A Mad Libs is a story with several placeholders.

Given a string

    Our favorite language is ((gem:a gemstone)). We think ((gem)) is better than ((a gemstone)).

The program should ask for two gemstones, then substitute the one designated by `((gem:...))` at `((gem))`.

Expected results: 

    Our favorite language is Ruby. We think Ruby is better than Emerald. 

## Requirements

Ruby 2.2.2

## Usage

`$ ruby madlibs.rb format1.txt`

## Learning points

- instead of `gets`, use `STDIN.gets`, because `gets` fails when there are arguments to the script.
- remember to `require 'erb'`

## License

This code is released under the [MIT License](http://www.opensource.org/licenses/MIT)