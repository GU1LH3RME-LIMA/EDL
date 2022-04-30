raizSegGrau::[Double]->[Double]
raizSegGrau a b c
  | delta < 0 = []
  | x1==x2 = [x1]
  | otherwise=[x1,x2]
  where
    delta = b**2.0 - 4.0*a*c
    x1 = (-b - sqrt delta) / (2.0*a)
    x2 = (-b + sqrt delta) / (2.0*a)
    

l1 :: [[Double]]
l1 = [ [1,12,-13], [1,2,1], [2,-16,-18]]


res=map raizSegGrau l1

main = do
    print l1
    
