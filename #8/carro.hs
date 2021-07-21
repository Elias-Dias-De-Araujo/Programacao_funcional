import Debug.Trace ( trace )
import Data.Function ( (&) )

data Car = Car  { pass :: Int
                , maxPass :: Int
                , gas :: Int
                , maxGas :: Int
                , km :: Int
                } deriving (Eq, Show, Read)

data Op = Op { name :: String
             , result :: Bool
             } deriving (Eq, Show, Read)

data Info = Info { car :: Car
                 , op  :: Op
                 } deriving (Eq, Show, Read)


toString (Info (Car pass maxPass gas maxGas km) (Op name result)) =
                "Car pass: " ++ show pass ++ "/" ++ show maxPass
                 ++ " gas: " ++ show gas  ++ "/" ++ show maxGas
                 ++  " km: " ++ show km
                 ++ " Operation: " ++ name ++ " Result: " ++ show result

resume :: Info -> Info
resume info = trace (toString info) info

createCar x y = Info (Car 0 x 0 y 0) (Op "createCar" True )

embark (Info (Car pass maxPass gas maxGas km) op) = Info (Car currentPass maxPass gas maxGas km) (Op "embark" sucess )
    where
        sucess = if currentPass == pass then False else True
        currentPass = if pass == maxPass then pass else pass + 1

disembark (Info (Car pass maxPass gas maxGas km) op)
    | pass == 0 = Info (Car pass maxPass gas maxGas km) (Op "disembark" False )
    | otherwise = Info (Car (pass - 1) maxPass gas maxGas km) (Op "disembark" True )
    

fuel x (Info (Car pass maxPass gas maxGas km) op) 
    | gas == maxGas = Info (Car pass maxPass gas maxGas km) (Op "fuel" False )
    | otherwise =  Info (Car pass maxPass (currentGas - diff) maxGas km) (Op "fuel" True )
    where 
        diff = if currentGas > maxGas then currentGas - maxGas else 0
        currentGas = gas + abs x

drive x (Info (Car pass maxPass gas maxGas km) op) 
    | pass == 0 = Info (Car pass maxPass gas maxGas km) (Op "drive" False )
    | gas == 0 = Info (Car pass maxPass gas maxGas km) (Op "drive" False )
    | otherwise = Info (Car pass maxPass restGas maxGas totalKmRun) (Op "drive" test )
    where
      totalKmRun = if restGas > 0 then km + x else km + gas
      restGas = if x > gas then 0 else gas - x
      test = if gas < x then False else True
      
      


main = do 
    let res = createCar 2 50 
            & resume & embark
            & resume & disembark
            & resume & disembark
            & resume & drive 10
            & resume & embark
            & resume & embark
            & resume & embark
            & resume & drive 10
            & resume & fuel 30
            & resume & fuel 30
            & resume & fuel 30
            & resume & drive 30
            & resume & drive 30
            & resume
    print res 