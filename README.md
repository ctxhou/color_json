# ColorJson

Easy way to show your `sass/scss/less` color list.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'color_json'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install color_json

## Usage

    color_json build <filename>

then you would got your `color.json` file!

### Example

#### Basic usage
`no_group.scss`:

```scss
$aqua:  #7FDBFF;
$blue:  #0074D9;
$navy:  #001F3F;
$teal:  #39CCCC;
```

it would generate:

`color.json`:

```json    
"color": {
  "$aqua": "  #7FDBFF;",
  "$blue": "  #0074D9;",
  "$navy": "  #001F3F;",
  "$teal": "  #39CCCC;"
}
```
#### Group usage

You can use `//**` to label your color usage. 

`group.scss`:

```scss
//** main color
$aqua:  #7FDBFF;
$blue:  #0074D9;

//** other
$yellow:  #FFDC00;
$orange:  #FF851B;
```

it would generate:

`color.json`:
```json
"color": {
  "main color": {
    "$aqua": "  #7FDBFF;",
    "$blue": "  #0074D9;"
  },
  "other": {
    "$yellow": "  #FFDC00;",
    "$orange": "  #FF851B;"
  }
}
```

## What the color.json can do?

`color.json` can combine with [canner](http://github.com/canner/canner) and help you show your color list very quickly.


## Issue

This gem now only support `scss`. It has many needs for imporvement.

Feel free to fork it and pull request.

## License

[@ctxhou](http://github.com/ctxhou) MIT