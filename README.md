# Dashboard Cafeteria 

The present project involves the implementations of graphics to display business information of a Cafeteria.

## Table of Contents

* [Ruby & Rails version](#ruby---rails-version)
* [Ruby & Rails Gems](#ruby---rails-gems)
* [Incorporating Bootstrap](#incorporating-bootstrap)
* [Defining the models](#defining-the-models)
    
## Ruby & Rails version

* ruby '2.5.3'
* gem 'rails', '~> 5.2.6'

## Ruby & Rails Gems

```ruby
gem "faker", "~> 2.19"
gem "chartkick", "~> 4.0"
gem "groupdate", "~> 5.2"
gem "bootstrap", "~> 5.1"
gem "jquery-rails", "~> 4.4"
```

## Incorporating Bootstrap

In the Gemfile is added:

```ruby
# gemfile.rb

gem "bootstrap", "~> 5.1"
gem "jquery-rails", "~> 4.4"
```

Then, called from the JavaScript manifest:

```javascript
// application.js

//= require jquery3
//= require popper
//= require bootstrap
```

And called from the stylesheets:

```css
/* dashboard.scss */

@import 'bootstrap';
```

## Defining the models

![coffi](app/assets/images/coffee.png)

As it can be seen above, the relation it is a *has_many* association and the models are generated as it follows:

```console
rails g model Coffe name price:integer origin blend
rails g model Sale amount:integer coffe:references
```

In the models the relation is added as:

```ruby
class Coffi < ApplicationRecord
    has_many :sales
end
```

```ruby
class Sale < ApplicationRecord
  belongs_to :coffe
end
```

It is checked in the Rails console as:

```console
Coffi.new.sales
Sale.new.coffi
```

Also, the controller is generated as:

```console
rails g controller Dashboard index
```