-- To get the type of this function you can run on the hgci interpreter
-- prelude > :t f
-- This will returns the inferred type of the function
-- In this case: f :: Int -> (Int, Int, Int, Int, Int)q

f :: Int -> (Int, Int, Int, Int, Int)
f x =
  let s = mod x 60
      m' = div x 60
      -- o bien (s, m') = (mod x 60, div x 60)
      -- la operación divMod, te da cociente y resto (mola!)
      (h', m) = divMod m' 60
      (d', h) = divMod h' 24
      (a, d)  = divMod d' 365
  in (a, d, h, m, s)

-- test on the terminal: $ f (365*24*60*60)
