# StringInflection

A yet another Ruby library for string inflection.

## Benefits

* No more Active Support in your Gemfiles/gemspecs only for inflection.
* A clean way - the Ruby's refinement.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'string_inflection'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install string_inflection

## Usage

```ruby
require "string_inflection"
using StringInflection

'foo bar'.to_camel # 'fooBar'
'foo bar'.to_kebab # 'foo-bar'
'foo bar'.to_pascal # 'FooBar'
'foo bar'.to_snake # 'foo_bar'
'data'.to_singular # 'datum'
'child'.to_plural # 'children'
```

## Refinement Modules

For performance improvement, the inflection methods are separated into several modules. Use ones of the modules as needed.

| module | methods |
| :-- | :-- |
| StringInflection::Cases | to_camel, to_kebab, to_pascal, to_snake |
| StringInflection::Singular | to_singular |
| StringInflection::Plural | to_plural |
| StringInflection | all the methods |

## Special Thanks

### [Automatically Generated Inflection Database (AGID)](http://wordlist.aspell.net/agid-readme/)

The handy database by Kevin Atkinson and other authors is significantly useful to generate irregular singular/plural forms. You can see the license in [README](submodules/agid/src/ext/agid/README).

## Authors

[mosop](http://github.com/mosop) - creator, maintainer
