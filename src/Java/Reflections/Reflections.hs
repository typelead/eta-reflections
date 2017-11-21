{-# LANGUAGE DataKinds, TypeFamilies, MultiParamTypeClasses, TypeOperators, FlexibleContexts #-}
module Java.Reflections.Reflections where

import Java
import Java.Collections
import Java.Concurrent
import Java.Reflection.Types
import Java.Reflections.Types
import Interop.Java.IO
import Interop.Java.Net

-- Start @org.reflections.Configuration

foreign import java unsafe "@interface" getClassLoaders :: Java Configuration ClassLoaderArray

foreign import java unsafe "@interface" getExecutorService :: Java Configuration ExecutorService

foreign import java unsafe "@interface" getMetadataAdapter :: Java Configuration MetadataAdapter

foreign import java unsafe "@interface" getScanners :: Java Configuration (Set Scanner)

foreign import java unsafe "@interface" getSerializer :: Java Configuration Serializer

foreign import java unsafe "@interface" getUrls :: Java Configuration (Set URL)

foreign import java unsafe "@interface" shouldExpandSuperTypes :: Java Configuration Bool

-- End @org.reflections.Configuration

-- Start @org.reflections.Reflections

foreign import java unsafe collect :: File -> Java Reflections Reflections

foreign import java unsafe "collect" collectInputStream :: InputStream -> Java Reflections Reflections

foreign import java unsafe expandSuperTypes :: Java Reflections ()

foreign import java unsafe getAllAnnotated :: Iterable JString -> Bool -> Bool
  -> Java Reflections (Iterable JString)

foreign import java unsafe getAllTypes :: Java Reflections (Set JString)

foreign import java unsafe getConfiguration :: Java Reflections Configuration

foreign import java unsafe getConstructorParamNames :: Constructor a -> Java Reflections (List JString)

foreign import java unsafe getConstructorsAnnotatedWith :: Annotation -> Java Reflections (Set (Constructor a))

foreign import java unsafe "getConstructorsAnnotatedWith" getConstructorsAnnotatedWith1 :: (a <: Annotation)
  => JClass a -> Java Reflections (Set (Constructor a))

foreign import java unsafe getConstructorsMatchParams :: (a <: Object)
  => JClass a -> Java Reflections (Set (Constructor t))
