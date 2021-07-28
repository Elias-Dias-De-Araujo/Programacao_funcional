import qualified Data.Map as Map
import Data.Either
import Data.Map
data Estado = Alugado | Livre deriving (Show, Eq)
type Codigo = String
type Armario = (Estado, Codigo)
type Armarios = Map.Map Int (Estado, Codigo)

-- consulta : dado o número de um armário, retorna se ele está alugado ou não
-- retorna Nothing se o armário não existir
consulta :: Int -> Armarios -> Maybe Estado
consulta indice armarios = 
      case Map.lookup indice armarios of   
        Nothing -> Nothing
        Just (estado, codigo) -> Just estado
                                
   

-- dado o número do armário, retorna Right armário ou Left "Armario nao existe"
pegarArmario :: Int -> Armarios -> Either String Armario
pegarArmario indice armarios = 
  case Map.lookup indice armarios of   
        Nothing -> Left $ "Armario " ++ show indice ++ " nao existe"  
        Just (estado, codigo) -> Right (estado, codigo)


-- consultar: dado o número de um armário retorna "Right código"
-- Se não existir, retorna "Left Armario não existe", se já estiver alugado retorna "Left ja esta ocupado"
-- Utilize a função pegarArmario para obter o armário e verificar se ele existe
-- Não reescreva a mesma mensagem de erro, utilize a invocação do pegarArmário
pegarCodigo :: Int -> Armarios -> Either String Codigo
pegarCodigo indice armarios = 
  case pegarArmario indice armarios of
     Left string -> Left $ string
     Right (estado, codigo) -> if estado /= Alugado 
                              then Right codigo 
                              else Left $ "Armario " ++ show indice ++ " ja esta ocupado"
       

 
-- aluguel - se o armário existir e estiver desocupado, o estado do armário no mapa é alterado para alugado
-- reaproveite a função pegarCodigo para obter a chave atual e os erros de "não existe" e "está ocupado"
aluguel :: Int -> Armarios -> Either String Armarios
aluguel indice armarios = 
  case pegarCodigo indice armarios of
    Left string -> Left $ string
    Right (codigo) -> Right (Map.insert indice (Alugado, codigo) armarios) 

    


-- para devolver um armário é necessário que ele exista, que esteja alugado e que o código esteja correto
-- utilize a função pegar armário para verificar a existência.
-- Se o armário não estiver alugado ou se o código estiver incorreto avise utilizando o Left.
devolucao :: Int -> Codigo -> Armarios -> Either String Armarios
devolucao indice codigo armarios = 
  case pegarArmario indice armarios of
    Left string -> Left $ string
    Right (estado, code) -> if code /= codigo
                            then Left $ "Codigo incorreto"
                            else 
                              if estado == Livre
                              then Left $ "Armario nao esta alugado"
                              else Right (Map.insert indice (Livre, codigo) armarios) 
      


lockers :: Armarios
lockers = Map.fromList
    [(100,(Alugado,"ZD39I"))
    ,(101,(Livre,"JAH3I"))
    ,(103,(Livre,"IQSA9"))
    ,(105,(Livre,"QOTSA"))
    ,(109,(Alugado,"893JJ"))
    ,(110,(Alugado,"99292"))
    ]

main :: IO ()
main = do
    let armarios = lockers
    print $ armarios
    print $ consulta 100 armarios
    print $ consulta 101 armarios
    print $ consulta 200 armarios
    print $ pegarCodigo 100 armarios
    print $ pegarCodigo 101 armarios
    print $ pegarCodigo 200 armarios
    print $ aluguel 100 armarios
    print $ consulta 101 armarios
    let armarios1 = fromRight armarios $ aluguel 101 armarios
    print $ consulta 101 armarios1
    print $ fromLeft "" $ devolucao 103 "IQSA9" armarios1
    print $ fromLeft "" $ devolucao 101 "ZD39I" armarios1
    let armarios2 = fromRight armarios1 $ devolucao 110 "99292" armarios1
    print $ consulta 110 armarios2
    print $ armarios2 

{--
fromList [(100,(Alugado,"ZD39I")),(101,(Livre,"JAH3I")),(103,(Livre,"IQSA9")),(105,(Livre,"QOTSA")),(109,(Alugado,"893JJ")),(110,(Alugado,"99292"))]
Just Alugado
Just Livre
Nothing
Left "Armario 100 ja esta ocupado"
Right "JAH3I"
Left "Armario 200 nao existe"
Left "Armario 100 ja esta ocupado"
Just Livre
Just Alugado
"Armario nao esta alugado"
"Codigo incorreto"
Just Livre
fromList [(100,(Alugado,"ZD39I")),(101,(Alugado,"JAH3I")),(103,(Livre,"IQSA9")),(105,(Livre,"QOTSA")),(109,(Alugado,"893JJ")),(110,(Livre,"99292"))]

--}