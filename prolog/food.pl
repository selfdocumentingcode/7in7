food_type(velveeta, cheese). % velveeta, the food, is of type cheese
food_type(ritz, cracker).
food_type(spam, meat).
food_type(sausage, meat).
food_type(jolt, soda).
food_type(twinkie, dessert).
 
flavor(sweet, dessert). % sweet flavor is a characteristic of dessert
flavor(savory, meat).
flavor(savory, cheese).
flavor(sweet, soda).
 
food_flavor(X, Y) :- food_type(X, Z), flavor(Y, Z).
