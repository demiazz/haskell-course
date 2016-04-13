newtype Maybe' a = Maybe' { getMaybe :: Maybe a }
  deriving (Eq,Show)

instance Monoid a => Monoid (Maybe' a) where
  mempty                                      = Maybe' $ Just mempty
  mappend (Maybe' Nothing) _                  = Maybe' Nothing
  mappend _ (Maybe' Nothing)                  = Maybe' Nothing
  mappend (Maybe' (Just m)) (Maybe' (Just n)) = Maybe' $ Just $ m `mappend` n
