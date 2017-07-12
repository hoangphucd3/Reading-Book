## AntiPattern: Spaghetti SQL

Many times we’ve come across code like the following:

```ruby
class PetsController < ApplicationController def show
  @pet = Pet.find(params[:id])
  @toys = Toy.where(:pet_id => @pet.id, :cute => true) end
end
```

One of the issues with this action is that it's doing a custom find call that rightfully belongs on the _Toy_ model.
You should fix this quickly so we can dig into the real underlying issue:

```ruby
class PetsController < ApplicationController def show
  @pet = Pet.find(params[:id])
  @toys = Toy.find_cute_for_pet(@pet) end
end

class Toy < ActiveRecord::Base 
  def self.find_cute_for_pet(pet)
    where(:pet_id => pet.id, :cute => true) end
  end
end
```

The fundamental problem with this code should now be apparent:
The person who wrote this code wasn’t aware of or was uncomfortable with the full range of options 
that Active Record associations provide.