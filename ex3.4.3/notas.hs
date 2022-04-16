import Data.List
import Graphics.Rendering.OpenGL (VariableType(Float'))

media_aluno :: (Fractional a, Foldable t) => t a -> a
media_aluno x =(foldr (+) 0 x )/(foldr (\ _ -> (+1)) 0 x) 
--calcularemos a média foldr nos ajudará tanto nas 
--somas entre as notas quando na divisão para não ser de tamanho fixo

notas :: [[Float]]
notas=[[9.0,7.00],[9.0,8.0],[8.5,7.8],[10.0,5.0],[10.0,10.0],[5.0,4.0]]--nossas notas com listas dentro de lista
main = do
    print(notas)
    print(map media_aluno notas) -- criará uma nova lista com a média das notas
    print(filter (<7) $map media_aluno notas) --veremos quem está de recuperação(abaixo de 7) de acordo com a lista de média
    print(foldr min 10  $map media_aluno notas) --o aluno com a menor nota será chamado pelo orientador