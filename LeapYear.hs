module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year 
    | (year `mod` 4) == 0 && (year `mod` 100) /= 0 = True
    | (year `mod` 100) == 0 && (year `mod` 400) == 0 =True
    | otherwise = False

main :: IO ()
main = do
    putStrLn "Entrada"
    let resultado =  isLeapYear(2100)
    putStrLn("2100 mod 100: " ++ show resultado)
