import Data.List
import System.IO
import System.Directory

getSubstring :: IO String
getSubstring = do
  putStr "Substring: "
  hFlush stdout
  getLine

deleteFile :: FilePath -> IO ()
deleteFile filePath = do
  putStrLn $ "Removing file: " ++ filePath
  removeFile filePath

deleteFiles ""     = do putStrLn "Canceled"
deleteFiles substr = do
  allFiles <- getDirectoryContents "."
  files    <- return $ filterFiles substr allFiles
  mapM_ deleteFile files

filterFiles substr = filter predicate where
  predicate str = (str /= ".") && (str /= "..") && (isInfixOf substr str)

main' :: IO ()
main' = getSubstring >>= deleteFiles

