-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodOptionsUsBankAccountMandateOptions
module StripeAPI.Types.PaymentMethodOptionsUsBankAccountMandateOptions where

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

-- | Defines the object schema located at @components.schemas.payment_method_options_us_bank_account_mandate_options@ in the specification.
-- 
-- 
data PaymentMethodOptionsUsBankAccountMandateOptions = PaymentMethodOptionsUsBankAccountMandateOptions {
  -- | collection_method: Mandate collection method
  paymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod :: (GHC.Maybe.Maybe PaymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsUsBankAccountMandateOptions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("collection_method" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("collection_method" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsUsBankAccountMandateOptions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodOptionsUsBankAccountMandateOptions" (\obj -> GHC.Base.pure PaymentMethodOptionsUsBankAccountMandateOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "collection_method"))}
-- | Create a new 'PaymentMethodOptionsUsBankAccountMandateOptions' with all required fields.
mkPaymentMethodOptionsUsBankAccountMandateOptions :: PaymentMethodOptionsUsBankAccountMandateOptions
mkPaymentMethodOptionsUsBankAccountMandateOptions = PaymentMethodOptionsUsBankAccountMandateOptions{paymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.payment_method_options_us_bank_account_mandate_options.properties.collection_method@ in the specification.
-- 
-- Mandate collection method
data PaymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod' =
   PaymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod'EnumPaper -- ^ Represents the JSON value @"paper"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod'
    where {toJSON (PaymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod'Other val) = val;
           toJSON (PaymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod'EnumPaper) = "paper"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "paper" -> PaymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod'EnumPaper
                                             | GHC.Base.otherwise -> PaymentMethodOptionsUsBankAccountMandateOptionsCollectionMethod'Other val)}
