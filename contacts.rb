require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddie@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

def remove_strawberry(contacts)
  # your code here!
  contacts.each do |person, contact_details_hash|
    if person == "Freddy Mercury"
      contact_details_hash.each do |attribute,data|

       if attribute == :favorite_ice_cream_flavors
        data.delete_if {|ice_cream| ice_cream =="strawberry"}
       end
       
      end
    end  
  end
end



# print the output to the terminal for inspection
pp remove_strawberry(contacts)


# quiet_and_loud = ["hi", "HI", "shhh", "WHAT?!"]

# quiet_and_loud.find do |word|
#   word == word.upcase 
# end

# puts quiet_and_loud


# lunch_menu = ["pizza", "sandwich", "sushi", "soup", "salad"]

# lunch_menu.each do |lunch_item|
#   puts "#{lunch_item}!"
# end

