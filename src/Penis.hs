{-# LANGUAGE Safe #-}

module Penis (Penis (..)) where

import Prelude (Eq, (==), Bool (..))

-- | The core penis data type exported by the API. An "Eq" instance is provided
-- for quick, easy, and efficient comparing of values.
--
-- >>> B==D
-- True
data Penis
  = B   -- ^ Balls
  | D   -- ^ Dickhead

-- | Note that "Eq" instance of "Penis" does not satisfy reflexivity or
-- symmetry. This is by design to ensure malformed penis does not result in a
-- truth value.
--
-- >>> B==D
-- True
-- >>> D==B
-- False
instance Eq Penis where
  B==D = True
  _==_ = False
