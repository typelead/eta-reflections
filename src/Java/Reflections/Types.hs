{-# LANGUAGE DataKinds, TypeFamilies, MultiParamTypeClasses #-}
module Java.Reflections.Types where

import Java
import Java.Array
import Java.Exception
import Data.Typeable
import Interop.Java.Lang

-- Start @org.reflections.ClassLoader[]

data ClassLoaderArray = ClassLoaderArray @org.reflections.ClassLoader[]
  deriving Class

instance JArray ClassLoader ClassLoaderArray

-- End @org.reflections.ClassLoader[]

data Configuration = Configuration @org.reflections.Configuration
  deriving Class

data MetadataAdapter = MetadataAdapter @org.reflections.adapters.MetadataAdapter
  deriving Class

data Scanner = Scanner @org.reflections.scanners.Scanner
  deriving Class

data Serializer = Serializer @org.reflections.serializers.Serializer
  deriving Class

data Reflections = Reflections @org.reflections.Reflections
  deriving Class

data ReflectionsUtils = ReflectionsUtils @org.reflections.ReflectionsUtils
  deriving Class

data Store = Store @org.reflections.serializers.Store
  deriving Class

data ReflectionsException = ReflectionsException @org.reflections.ReflectionsException
  deriving (Class, Typeable)

type instance Inherits ReflectionsException = '[RuntimeException, JException]

data JavaReflectionAdapter = JavaReflectionAdapter @org.reflections.adapters.JavaReflectionAdapter
  deriving Class

data JavassistAdapter = JavassistAdapter @org.reflections.adapters.JavassistAdapter
  deriving Class

data AbstractScanner = AbstractScanner @org.reflections.scanners.AbstractScanner
  deriving Class

data FieldAnnotationScanner = FieldAnnotationScanner @org.reflections.scanners.FieldAnnotationScanner
  deriving Class

data MemberUsageScanner = MemberUsageScanner @org.reflections.scanners.MemberUsageScanner
  deriving Class

data MethodAnnotationsScanner = MethodAnnotationsScanner @org.reflections.scanners.MethodAnnotationsScanner
  deriving Class

data MethodParameterNamesScanner = MethodParameterNamesScanner @org.reflections.scanners.MethodParameterNamesScanner
  deriving Class

data MethodParameterScanner = MethodParameterScanner @org.reflections.scanners.MethodParameterScanner
  deriving Class

data ResourcesScanner = ResourcesScanner @org.reflections.scanners.ResourcesScanner
  deriving Class

data SubTypesScanner = SubTypesScanner @org.reflections.scanners.SubTypesScanner
  deriving Class

data TypeAnnotationsScanner = TypeAnnotationsScanner @org.reflections.scanners.TypeAnnotationsScanner
  deriving Class

data TypeElementsScanner = TypeElementsScanner @org.reflections.scanners.TypeElementsScanner
  deriving Class

data TypesScanner = TypesScanner @org.reflections.scanners.TypesScanner
  deriving Class

data JavaCodeSerializer = JavaCodeSerializer @org.reflections.serializers.JavaCodeSerializer
  deriving Class

data JsonSerializer = JsonSerializer @org.reflections.serializers.JsonSerializer
  deriving Class

data XmlSerializer = XmlSerializer @org.reflections.serializers.XmlSerializer
  deriving Class
