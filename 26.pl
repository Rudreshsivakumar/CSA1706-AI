% Facts about fruits and their colors
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grape, purple).
fruit_color(orange, orange).
fruit_color(strawberry, red).
fruit_color(blueberry, blue).

% Predicate to find the color of a fruit using backtracking
find_color(Fruit, Color) :-
    fruit_color(Fruit, Color).
