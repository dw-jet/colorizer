# Colorizr
## Overview
Colorizer is a ruby gem that adds a splash of color to terminal output.

## Installation
1. Clone this repo
2. Run `gem install colorizr-0.0.3.gem` from the directory you cloned.

## Useage
To use the gem simply require it at the top of your ruby code.
```ruby
include 'colorizr'
```
Once it's included you can see a text list of colors by calling `String.colors`. 
To see an example of what each color looks like use `String.sample_colors`
```ruby
puts String.colors
String.sample_colors
```
Colorizing your own strings is easy. Simply call one of the built in color methods.
```ruby
puts "Hello World".red
```
Available colors are
* red
* green
* yellow
* blue
* pink
* light_blue
* white
* light_grey
* black
