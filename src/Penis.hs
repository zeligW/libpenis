{-# LANGUAGE Safe #-}

module Penis (Penis (..)) where

import Prelude (Eq, (==), Bool (..))

-- | The core penis data type exported by the API. An Eq instance is provided
-- for quick, easy, and efficient comparing of values.
--
-- >>> B==D
-- True
--
-- Note: malformed penis is not allowed, thus the following won't compare.
--
-- >>> B==B
-- False
data Penis
  = B   -- ^ Balls
  | D   -- ^ Dickhead

instance Eq Penis where
  B==D = True
  _==_ = False
