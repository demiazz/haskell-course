cmp :: LogLevel -> LogLevel -> Ordering
cmp Error Error     = EQ
cmp Warning Warning = EQ
cmp Info Info       = EQ
cmp Info _          = LT
cmp Error _         = GT
cmp Warning Error   = LT
cmp Warning _       = GT
