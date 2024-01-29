{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SetupIntentNextActionVerifyWithMicrodeposits
module StripeAPI.Types.SetupIntentNextActionVerifyWithMicrodeposits where

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

-- | Defines the object schema located at @components.schemas.setup_intent_next_action_verify_with_microdeposits@ in the specification.
data SetupIntentNextActionVerifyWithMicrodeposits = SetupIntentNextActionVerifyWithMicrodeposits
  { -- | arrival_date: The timestamp when the microdeposits are expected to land.
    setupIntentNextActionVerifyWithMicrodepositsArrivalDate :: GHC.Types.Int,
    -- | hosted_verification_url: The URL for the hosted verification page, which allows customers to verify their bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupIntentNextActionVerifyWithMicrodepositsHostedVerificationUrl :: Data.Text.Internal.Text,
    -- | microdeposit_type: The type of the microdeposit sent to the customer. Used to distinguish between different verification methods.
    setupIntentNextActionVerifyWithMicrodepositsMicrodepositType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentNextActionVerifyWithMicrodeposits where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["arrival_date" Data.Aeson.Types.ToJSON..= setupIntentNextActionVerifyWithMicrodepositsArrivalDate obj] : ["hosted_verification_url" Data.Aeson.Types.ToJSON..= setupIntentNextActionVerifyWithMicrodepositsHostedVerificationUrl obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("microdeposit_type" Data.Aeson.Types.ToJSON..=)) (setupIntentNextActionVerifyWithMicrodepositsMicrodepositType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["arrival_date" Data.Aeson.Types.ToJSON..= setupIntentNextActionVerifyWithMicrodepositsArrivalDate obj] : ["hosted_verification_url" Data.Aeson.Types.ToJSON..= setupIntentNextActionVerifyWithMicrodepositsHostedVerificationUrl obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("microdeposit_type" Data.Aeson.Types.ToJSON..=)) (setupIntentNextActionVerifyWithMicrodepositsMicrodepositType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentNextActionVerifyWithMicrodeposits where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentNextActionVerifyWithMicrodeposits" (\obj -> ((GHC.Base.pure SetupIntentNextActionVerifyWithMicrodeposits GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "arrival_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "hosted_verification_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "microdeposit_type"))

-- | Create a new 'SetupIntentNextActionVerifyWithMicrodeposits' with all required fields.
mkSetupIntentNextActionVerifyWithMicrodeposits ::
  -- | 'setupIntentNextActionVerifyWithMicrodepositsArrivalDate'
  GHC.Types.Int ->
  -- | 'setupIntentNextActionVerifyWithMicrodepositsHostedVerificationUrl'
  Data.Text.Internal.Text ->
  SetupIntentNextActionVerifyWithMicrodeposits
mkSetupIntentNextActionVerifyWithMicrodeposits setupIntentNextActionVerifyWithMicrodepositsArrivalDate setupIntentNextActionVerifyWithMicrodepositsHostedVerificationUrl =
  SetupIntentNextActionVerifyWithMicrodeposits
    { setupIntentNextActionVerifyWithMicrodepositsArrivalDate = setupIntentNextActionVerifyWithMicrodepositsArrivalDate,
      setupIntentNextActionVerifyWithMicrodepositsHostedVerificationUrl = setupIntentNextActionVerifyWithMicrodepositsHostedVerificationUrl,
      setupIntentNextActionVerifyWithMicrodepositsMicrodepositType = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.setup_intent_next_action_verify_with_microdeposits.properties.microdeposit_type@ in the specification.
--
-- The type of the microdeposit sent to the customer. Used to distinguish between different verification methods.
data SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"amounts"@
    SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullableEnumAmounts
  | -- | Represents the JSON value @"descriptor_code"@
    SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullableEnumDescriptorCode
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullable where
  toJSON (SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullableOther val) = val
  toJSON (SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullableEnumAmounts) = "amounts"
  toJSON (SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullableEnumDescriptorCode) = "descriptor_code"

instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "amounts" -> SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullableEnumAmounts
          | val GHC.Classes.== "descriptor_code" -> SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullableEnumDescriptorCode
          | GHC.Base.otherwise -> SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType'NonNullableOther val
      )
