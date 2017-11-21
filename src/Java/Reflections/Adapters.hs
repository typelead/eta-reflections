{-# LANGUAGE DataKinds, TypeFamilies, MultiParamTypeClasses #-}
module Java.Reflections.Adapters where


import Java
import Java.Reflections.Types

-- Start org.reflections.adapters.MetadataAdapter

foreign import java unsafe acceptsInput :: JString -> Java MetadataAdapter Bool
