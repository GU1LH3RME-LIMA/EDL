foldlt :: (a -> b -> a) -> a -> [b] -> a
 foldlt op r [] = r
  foldlt op r (a:x) = strict (foldlt op) (op r a) x
                     where
                     strict f x = seq x (f x)


l=[1,2,3,4,5]
f3 x y=4*x + (*y)
r=foldlt f3 0 l