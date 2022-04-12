import Data.List
import Graphics.Rendering.OpenGL (VariableType(Float'))

vectorLength::(Int,Int)->Float 
vectorLength(x,y) = sqrt(fromIntegral ((x^2)+(y^2))) --modulo do vetor

componenteVector::((Int,Int),(Int,Int))->Float 
componenteVector((x1,y1),(x2,y2)) = fromIntegral(x1*x2+y1*y2)/vectorLength(x1,y1) --componente de um vetor b ao longo de a

compareVectors::((Int,Int),(Int,Int))->((Int,Int),(Int,Int))->Ordering --irá comparar o vetores
compareVectors ((x1,y1),(x2,y2)) ((x3,y3),(x4,y4))
        | componenteVector((x1,y1),(x2,y2)) < componenteVector((x3,y3),(x4,y4)) = LT
        | componenteVector((x1,y1),(x2,y2)) > componenteVector((x3,y3),(x4,y4)) = GT

rever::[((Int, Int),(Int,Int))]->[((Int, Int),(Int,Int))]
rever [] = []
rever (x:xs) = rever xs ++ [x]

sortVectors::[((Int, Int),(Int,Int))]->[((Int, Int),(Int,Int))] --irá fazer a ordenação
sortVectors list = rever(sortBy compareVectors list)



main = do
    print(map componenteVector [((1,4),(2,3)) ,((5,7),(1,8)), ((-5,0),(9,1))]) --mostrará o calculo das componentes
    print(sortVectors[((1,4),(2,3)),((5,7),(1,8)), ((-5,0),(9,1))])--ordenará o calculo das componentes em ordem alfabetica
