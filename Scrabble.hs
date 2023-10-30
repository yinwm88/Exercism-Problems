module Scrabble (scoreLetter, scoreWord) where
import Data.Char (toUpper)

type ListaChar = [Char]

onept :: ListaChar
onept = ['A','E','I','O','U','L','N','R','S','T']

twopts :: ListaChar
twopts = "DG"

threepts :: ListaChar
threepts = "BCMP"

fourpts :: ListaChar
fourpts = "FHVWY"

fivepts :: ListaChar
fivepts = "K"

eightpts :: ListaChar
eightpts = "JX"

tenpts :: ListaChar
tenpts = "QZ"

scoreLetter :: Char -> Integer
scoreLetter letter 
 | elem(toUpper letter) onept = 1
 | elem(toUpper letter) twopts = 2
 | elem(toUpper letter) threepts = 3
 | elem(toUpper letter) fourpts = 4
 | elem(toUpper letter) fivepts = 5
 | elem(toUpper letter) eightpts = 8
 | elem(toUpper letter) tenpts = 10
 | otherwise = 0

scoreWord :: String -> Integer
scoreWord = sum . map scoreLetter

main :: IO ()
main = do
    let score = scoreLetter('a')
    putStrLn("Puntaje de un caracter: " ++ show score)
    let score = scoreWord("Cacatua")
    putStrLn("Puntaje de un palabra: " ++ show score)