newtype Xor = Xor { getXor :: Bool }
  deriving (Eq,Show)

instance Monoid Xor where
  mempty = Xor False
  mappend (Xor False) (Xor False) = Xor False
  mappend (Xor True)  (Xor True)  = Xor False
  mappend _           _           = Xor True
