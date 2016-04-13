instance (Printable a, Printable b) => Printable (a, b) where
  toString t = "(" ++ (toString $ fst t) ++ "," ++ (toString $ snd t) ++ ")"
