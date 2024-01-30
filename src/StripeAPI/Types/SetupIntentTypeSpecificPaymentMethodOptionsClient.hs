-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SetupIntentTypeSpecificPaymentMethodOptionsClient
module StripeAPI.Types.SetupIntentTypeSpecificPaymentMethodOptionsClient where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
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

-- | Defines the object schema located at @components.schemas.setup_intent_type_specific_payment_method_options_client@ in the specification.
-- 
-- 
data SetupIntentTypeSpecificPaymentMethodOptionsClient = SetupIntentTypeSpecificPaymentMethodOptionsClient {
  -- | verification_method: Bank account verification method.
  setupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod :: (GHC.Maybe.Maybe SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentTypeSpecificPaymentMethodOptionsClient
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentTypeSpecificPaymentMethodOptionsClient
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentTypeSpecificPaymentMethodOptionsClient" (\obj -> GHC.Base.pure SetupIntentTypeSpecificPaymentMethodOptionsClient GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification_method"))}
-- | Create a new 'SetupIntentTypeSpecificPaymentMethodOptionsClient' with all required fields.
mkSetupIntentTypeSpecificPaymentMethodOptionsClient :: SetupIntentTypeSpecificPaymentMethodOptionsClient
mkSetupIntentTypeSpecificPaymentMethodOptionsClient = SetupIntentTypeSpecificPaymentMethodOptionsClient{setupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.setup_intent_type_specific_payment_method_options_client.properties.verification_method@ in the specification.
-- 
-- Bank account verification method.
data SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod' =
   SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'EnumAutomatic -- ^ Represents the JSON value @"automatic"@
  | SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'EnumInstant -- ^ Represents the JSON value @"instant"@
  | SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'EnumMicrodeposits -- ^ Represents the JSON value @"microdeposits"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'
    where {toJSON (SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'Other val) = val;
           toJSON (SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'EnumAutomatic) = "automatic";
           toJSON (SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'EnumInstant) = "instant";
           toJSON (SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'EnumMicrodeposits) = "microdeposits"}
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "automatic" -> SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'EnumAutomatic
                                             | val GHC.Classes.== "instant" -> SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'EnumInstant
                                             | val GHC.Classes.== "microdeposits" -> SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'EnumMicrodeposits
                                             | GHC.Base.otherwise -> SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod'Other val)}
