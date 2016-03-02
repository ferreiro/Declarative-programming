-- Exercise 2.
-- Implement maths formulas in Haskell using Curry notification (https://en.wikipedia.org/wiki/Currying)

-- f x y = 2 * x - y * x
-- g x = f (f 2 x) (f x 1)
-- h x y z = f  (5 - g(z) - y)
