-- !!! testing hGetLine on a file without a final '\n'.

-- According to the Haskell 98 report, getLine should discard a line without a
-- closing newline character (see implementation of getLine). 
--
-- However, we don't believe that this is the right behaviour.

import IO

main = catch loop (\e -> print e)

loop = do 
  l <- hGetLine stdin
  putStrLn l
  loop
