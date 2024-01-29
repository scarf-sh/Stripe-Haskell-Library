{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema VerificationSessionRedaction
module StripeAPI.Types.VerificationSessionRedaction where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.verification_session_redaction@ in the specification.
data VerificationSessionRedaction = VerificationSessionRedaction
  { -- | status: Indicates whether this object and its related objects have been redacted or not.
    verificationSessionRedactionStatus :: VerificationSessionRedactionStatus'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON VerificationSessionRedaction where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["status" Data.Aeson.Types.ToJSON..= verificationSessionRedactionStatus obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["status" Data.Aeson.Types.ToJSON..= verificationSessionRedactionStatus obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON VerificationSessionRedaction where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "VerificationSessionRedaction" (\obj -> GHC.Base.pure VerificationSessionRedaction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))

-- | Create a new 'VerificationSessionRedaction' with all required fields.
mkVerificationSessionRedaction ::
  -- | 'verificationSessionRedactionStatus'
  VerificationSessionRedactionStatus' ->
  VerificationSessionRedaction
mkVerificationSessionRedaction verificationSessionRedactionStatus = VerificationSessionRedaction {verificationSessionRedactionStatus = verificationSessionRedactionStatus}

-- | Defines the enum schema located at @components.schemas.verification_session_redaction.properties.status@ in the specification.
--
-- Indicates whether this object and its related objects have been redacted or not.
data VerificationSessionRedactionStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    VerificationSessionRedactionStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    VerificationSessionRedactionStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"processing"@
    VerificationSessionRedactionStatus'EnumProcessing
  | -- | Represents the JSON value @"redacted"@
    VerificationSessionRedactionStatus'EnumRedacted
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON VerificationSessionRedactionStatus' where
  toJSON (VerificationSessionRedactionStatus'Other val) = val
  toJSON (VerificationSessionRedactionStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (VerificationSessionRedactionStatus'EnumProcessing) = "processing"
  toJSON (VerificationSessionRedactionStatus'EnumRedacted) = "redacted"

instance Data.Aeson.Types.FromJSON.FromJSON VerificationSessionRedactionStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "processing" -> VerificationSessionRedactionStatus'EnumProcessing
          | val GHC.Classes.== "redacted" -> VerificationSessionRedactionStatus'EnumRedacted
          | GHC.Base.otherwise -> VerificationSessionRedactionStatus'Other val
      )
