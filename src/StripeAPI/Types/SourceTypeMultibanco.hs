-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SourceTypeMultibanco
module StripeAPI.Types.SourceTypeMultibanco where

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

-- | Defines the object schema located at @components.schemas.source_type_multibanco@ in the specification.
-- 
-- 
data SourceTypeMultibanco = SourceTypeMultibanco {
  -- | entity
  sourceTypeMultibancoEntity :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | reference
  , sourceTypeMultibancoReference :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | refund_account_holder_address_city
  , sourceTypeMultibancoRefundAccountHolderAddressCity :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | refund_account_holder_address_country
  , sourceTypeMultibancoRefundAccountHolderAddressCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | refund_account_holder_address_line1
  , sourceTypeMultibancoRefundAccountHolderAddressLine1 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | refund_account_holder_address_line2
  , sourceTypeMultibancoRefundAccountHolderAddressLine2 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | refund_account_holder_address_postal_code
  , sourceTypeMultibancoRefundAccountHolderAddressPostalCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | refund_account_holder_address_state
  , sourceTypeMultibancoRefundAccountHolderAddressState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | refund_account_holder_name
  , sourceTypeMultibancoRefundAccountHolderName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | refund_iban
  , sourceTypeMultibancoRefundIban :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SourceTypeMultibanco
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("entity" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoEntity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoReference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_address_city" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderAddressCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_address_country" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderAddressCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_address_line1" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderAddressLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_address_line2" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderAddressLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_address_postal_code" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderAddressPostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_address_state" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderAddressState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_iban" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundIban obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("entity" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoEntity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoReference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_address_city" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderAddressCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_address_country" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderAddressCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_address_line1" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderAddressLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_address_line2" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderAddressLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_address_postal_code" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderAddressPostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_address_state" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderAddressState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_account_holder_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundAccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_iban" Data.Aeson.Types.ToJSON..=)) (sourceTypeMultibancoRefundIban obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeMultibanco
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeMultibanco" (\obj -> (((((((((GHC.Base.pure SourceTypeMultibanco GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "entity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_account_holder_address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_account_holder_address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_account_holder_address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_account_holder_address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_account_holder_address_postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_account_holder_address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_iban"))}
-- | Create a new 'SourceTypeMultibanco' with all required fields.
mkSourceTypeMultibanco :: SourceTypeMultibanco
mkSourceTypeMultibanco = SourceTypeMultibanco{sourceTypeMultibancoEntity = GHC.Maybe.Nothing,
                                              sourceTypeMultibancoReference = GHC.Maybe.Nothing,
                                              sourceTypeMultibancoRefundAccountHolderAddressCity = GHC.Maybe.Nothing,
                                              sourceTypeMultibancoRefundAccountHolderAddressCountry = GHC.Maybe.Nothing,
                                              sourceTypeMultibancoRefundAccountHolderAddressLine1 = GHC.Maybe.Nothing,
                                              sourceTypeMultibancoRefundAccountHolderAddressLine2 = GHC.Maybe.Nothing,
                                              sourceTypeMultibancoRefundAccountHolderAddressPostalCode = GHC.Maybe.Nothing,
                                              sourceTypeMultibancoRefundAccountHolderAddressState = GHC.Maybe.Nothing,
                                              sourceTypeMultibancoRefundAccountHolderName = GHC.Maybe.Nothing,
                                              sourceTypeMultibancoRefundIban = GHC.Maybe.Nothing}
