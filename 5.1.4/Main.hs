data Point3D a = Point3D a a a deriving Show

instance Functor Point3D where
  fmap f (Point3D x y z) = Point3D (f x) (f y) (f z)

data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a)

instance Functor GeomPrimitive where
  fmap f (Point a)         = Point $ fmap f a
  fmap f (LineSegment a b) = LineSegment (fmap f a) (fmap f b)
