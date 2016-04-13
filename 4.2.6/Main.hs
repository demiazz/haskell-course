data Result' = Success' | Fail' Int

instance Show Result' where
    show Success'  = "Success"
    show (Fail' n) = "Fail: " ++ show n

doSomeWork' :: SomeData -> Result'
doSomeWork' d = case doSomeWork d of
  (Success, _) -> Success'
  (Fail, code) -> Fail' code
