-- AverageCalculator.hs
-- Program to calculate the average of a list of numbers

-- Define the 'average' function
average :: [Double] -> Double -- Function type declaration
average xs = sum xs / fromIntegral (length xs) 
-- ^ Calculate the average: sum the list and divide by its length

-- Main function: the entry point of the program
main :: IO () -- Indicates an IO action returning nothing (Unit type)
main = do
    putStrLn "Enter a list of numbers separated by spaces:" -- Prompt the user
    input <- getLine -- Read a line from the console
    putStrLn "" -- Print an empty line for spacing
    let numbers = map read . words $ input -- Convert the input string to a list of numbers
    putStrLn $ "Average: " ++ show (average numbers) -- Print "Average: " followed by the calculated average



