import Data.Char
main = print =<< sum . map digitToInt <$> getLine
