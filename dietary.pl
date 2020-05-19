%Eryn Kelsey-Adkins
%CS 3210
%Prolog
%Dietary Database

protein(steak).
protein(hot_dog).
protein(beans).
protein(peanut_butter).
protein(egg).
protein(chicken).
protein(tofu).
protein(ham).
protein(bacon).

soup(stew).
soup(tomato_soup).

hotdish(casserole).

breakfast(egg).
breakfast(bacon).
breakfast(hashbrowns).
breakfast(toast).
breakfast(cereal).

vegetable(broccoli).
vegetable(cauliflower).
vegetable(carrot).
vegetable(green_bean).
vegetable(bell_pepper).
vegetable(cabbage).
vegetable(greens).
vegetable(peas).
vegetable(squash).

starch(potato).
starch(corn).
starch(bread).
starch(rice).
starch(pasta).
starch(tortilla).

fruit(apple).
fruit(blue_berry).
fruit(raspberry).
fruit(pineapple).
fruit(grape).
fruit(durian_fruit).
fruit(peach).
fruit(pear).

dessert(cake).
dessert(cookie).
dessert(ice_cream).
dessert(pudding).
dessert(flan).

snack(pretzel).
snack(popcorn).
snack(chips).
snack(nuts).
snack(cheese).

beverage(water).
beverage(milk).
beverage(juice).
alcohol(beer).
alcohol(wine).

meal(P, V, V_2, S):-protein(P), vegetable(V), vegetable(V_2), starch(S), V\=V_2.
meal(S):-soup(S); hotdish(S); alcohol(S).
is_snack(X):-snack(X); fruit(X); vegetable(X).
snacks(X):-snack(X); fruit(X); vegetable(X).
best_part_of_day(X):-dessert(X); alcohol(X).
is_sandwich(P, B):-protein(P), B = bread.
make_sandwich(X, B):-protein(X), B = bread.
is_bad_day(M):-meal(M).
need_a_drink(B):-beverage(B); alcohol(B).
is_breakfast(X):-breakfast(X).


%is_sunday_dinner(M):-meal(X, Y, Z, A).
