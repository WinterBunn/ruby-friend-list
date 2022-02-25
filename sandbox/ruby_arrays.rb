#array -ordered list of items/elements - mantains an index
a = [1,2,3,4,5,6,7,8,9]

p a.last #returns last element of an array

b = 1..100 #creates a range
b = (1..100).to_a # Creates an array from a range

z= ("a".."z").to_a # Same as beffore but with letters

z << "ab" #insert an element to the array

z.unshift("ac") #inserts at the beggining 
z.append("ad") #inserts at the end

z.uniq! #method to remove duplicates

a.include?("ac") #Checks if the array includes an item

a.push("new item") #insert to the end of the array

a.pop #returns the last item  but also removes it from the array

a.join #takes the elements of the array and converts it into an strig

b = a.join(", ") #same as above but adds the item in between

b.split(",") #divides an string and returns an array separated by the item given

#iterator
c = (1..10).to_a
#what we usually would use
#for i in z
#print i
#z

#ruby preferred way

c.each do |this|
    print this.to_s + " "
end

c.each {|food| print food.to_s + " "} #this sintax is prefered

d = (1..100).to_a.shuffle
e = []

d.select {|number| number.odd?}