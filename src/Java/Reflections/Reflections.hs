{-# LANGUAGE DataKinds, TypeFamilies, MultiParamTypeClasses #-}
module Java.Reflections.Reflections where

import Java
import Java.Collections
import Java.Concurrent
import Java.Reflections.Types
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
