-- Exercise 1
-- Calculate in miliseconds the year of the universe (13700 millions de years).

years_to_miliseconds x = x * (365 * 30 * 24 * 60 * 60)

-- Given the number of years (or number in seconds) obtain how many
-- remaining days, hours, minutes and seconds are in the inputted number
-- Implemented using bottom to Up idea.

seconds2minutes x   = div x 60  -- Given seconds, convert it to minutes
seconds2hours x  = div (seconds2minutes x) 60
seconds2days x   = div (seconds2hours x) 24
seconds2years x  = div (seconds2days x) 365

remainder_seconds seconds = seconds `mod` 60
remainder_minutes seconds = mod (seconds2minutes seconds) 60
remainder_hours seconds   = mod (seconds2hours seconds) 60
remainder_days seconds    = mod (seconds2days seconds) 365
remainder_years seconds   = mod (seconds2years seconds) 365

output_conversion x = ( remainder_years x, remainder_days x, remainder_hours x, remainder_minutes x, remainder_seconds x)

-- Ejercicio 2

-- f x y = 2 * x - y * x
-- g x = f (f 2 x) (f x 1)
-- h x y z = f  (5 - g(z) - y)
