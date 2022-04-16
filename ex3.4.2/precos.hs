import Data.List
import Graphics.Rendering.OpenGL (VariableType(Float'))

impostoRPRJ::Float->Float 
impostoRPRJ x = x+(x*(15/100)) --imposto sobre roupas

precoNovo=map impostoRPRJ [55.90,39.15,100,74.50]
main = do
    
    print(precoNovo) --mostrará o novo preço dos produtos de acordo com a nova politica de imposto
    print(filter (<60.00) precoNovo) --o preço dos produtos que estão abaixo da media de inflação
    print(foldr max 0 precoNovo) --o produto mais caro da loja
