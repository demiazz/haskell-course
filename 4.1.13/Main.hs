processData :: SomeData -> String
processData d = case doSomeWork d of
  (Success, _) -> "Success"
  (Fail, code) -> "Fail: " ++ show code
