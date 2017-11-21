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

data Reflections = Reflections @org.reflections.serializers.Reflections
  deriving Class

data ReflectionsUtils = ReflectionsUtils @org.reflections.serializers.ReflectionsUtils
  deriving Class

data Store = Store @org.reflections.serializers.Store
  deriving Class

data ReflectionsException = ReflectionsException @org.reflections.serializers.ReflectionsException
  deriving (Class, Typeable)

type instance Inherits ReflectionsException = '[RuntimeException, JException]
