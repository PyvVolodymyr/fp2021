func1 :: Double -> Double -> Double -> Double
func1 x y z = min x (min y z)

func2 :: (Double, Double, Double) -> Double
func2 (x,y,z) = min x (min y z)