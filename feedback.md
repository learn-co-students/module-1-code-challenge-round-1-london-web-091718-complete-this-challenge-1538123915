# code challenge feedback

## Methods that we fixed:

```ruby

#Customer class
def self.find_by_name(name)
  all.find {|c| c.full_name == name}
end

#Restaurant class
def self.customers(restaurant)
  Review.all.select {|r| r.restaurant == restaurant}.uniq
end

def reviews
  Review.all.select {|r| r.restaurant == self}
end

def customers
  reviews.map {|r| r.customer }.uniq
end

#Review class:

# THIS:
def customer
  @customer
end

# is syntactically equal to this:
attr_reader :customer

# casue both are returing the @customer instance variable
```
