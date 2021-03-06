{-# LANGUAGE DeriveGeneric       #-}
{-# LANGUAGE StandaloneDeriving  #-}
{-# LANGUAGE GADTs               #-}

module CannotDoRep2 where

import GHC.Generics

-- We do not support GADTs
data Term a where
  Int :: Term Int

deriving instance Generic (Term a)
