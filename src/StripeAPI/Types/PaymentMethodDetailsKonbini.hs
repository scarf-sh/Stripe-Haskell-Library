-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodDetailsKonbini
module StripeAPI.Types.PaymentMethodDetailsKonbini where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDetailsKonbiniStore

-- | Defines the object schema located at @components.schemas.payment_method_details_konbini@ in the specification.
-- 
-- 
data PaymentMethodDetailsKonbini = PaymentMethodDetailsKonbini {
  -- | store: If the payment succeeded, this contains the details of the convenience store where the payment was completed.
  paymentMethodDetailsKonbiniStore :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodDetailsKonbiniStore'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsKonbini
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("store" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsKonbiniStore obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("store" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsKonbiniStore obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsKonbini
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsKonbini" (\obj -> GHC.Base.pure PaymentMethodDetailsKonbini GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "store"))}
-- | Create a new 'PaymentMethodDetailsKonbini' with all required fields.
mkPaymentMethodDetailsKonbini :: PaymentMethodDetailsKonbini
mkPaymentMethodDetailsKonbini = PaymentMethodDetailsKonbini{paymentMethodDetailsKonbiniStore = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.payment_method_details_konbini.properties.store.anyOf@ in the specification.
-- 
-- If the payment succeeded, this contains the details of the convenience store where the payment was completed.
data PaymentMethodDetailsKonbiniStore'NonNullable = PaymentMethodDetailsKonbiniStore'NonNullable {
  -- | chain: The name of the convenience store chain where the payment was completed.
  paymentMethodDetailsKonbiniStore'NonNullableChain :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsKonbiniStore'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("chain" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsKonbiniStore'NonNullableChain obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("chain" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsKonbiniStore'NonNullableChain obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsKonbiniStore'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsKonbiniStore'NonNullable" (\obj -> GHC.Base.pure PaymentMethodDetailsKonbiniStore'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "chain"))}
-- | Create a new 'PaymentMethodDetailsKonbiniStore'NonNullable' with all required fields.
mkPaymentMethodDetailsKonbiniStore'NonNullable :: PaymentMethodDetailsKonbiniStore'NonNullable
mkPaymentMethodDetailsKonbiniStore'NonNullable = PaymentMethodDetailsKonbiniStore'NonNullable{paymentMethodDetailsKonbiniStore'NonNullableChain = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.payment_method_details_konbini.properties.store.anyOf.properties.chain@ in the specification.
-- 
-- The name of the convenience store chain where the payment was completed.
data PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullable =
   PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableEnumFamilymart -- ^ Represents the JSON value @"familymart"@
  | PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableEnumLawson -- ^ Represents the JSON value @"lawson"@
  | PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableEnumMinistop -- ^ Represents the JSON value @"ministop"@
  | PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableEnumSeicomart -- ^ Represents the JSON value @"seicomart"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullable
    where {toJSON (PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableOther val) = val;
           toJSON (PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableEnumFamilymart) = "familymart";
           toJSON (PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableEnumLawson) = "lawson";
           toJSON (PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableEnumMinistop) = "ministop";
           toJSON (PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableEnumSeicomart) = "seicomart"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "familymart" -> PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableEnumFamilymart
                                             | val GHC.Classes.== "lawson" -> PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableEnumLawson
                                             | val GHC.Classes.== "ministop" -> PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableEnumMinistop
                                             | val GHC.Classes.== "seicomart" -> PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableEnumSeicomart
                                             | GHC.Base.otherwise -> PaymentMethodDetailsKonbiniStore'NonNullableChain'NonNullableOther val)}
