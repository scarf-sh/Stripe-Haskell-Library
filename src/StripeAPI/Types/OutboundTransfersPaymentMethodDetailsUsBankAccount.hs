{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema OutboundTransfersPaymentMethodDetailsUsBankAccount
module StripeAPI.Types.OutboundTransfersPaymentMethodDetailsUsBankAccount where

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

-- | Defines the object schema located at @components.schemas.outbound_transfers_payment_method_details_us_bank_account@ in the specification.
data OutboundTransfersPaymentMethodDetailsUsBankAccount = OutboundTransfersPaymentMethodDetailsUsBankAccount
  { -- | account_holder_type: Account holder type: individual or company.
    outboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullable)),
    -- | account_type: Account type: checkings or savings. Defaults to checking if omitted.
    outboundTransfersPaymentMethodDetailsUsBankAccountAccountType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullable)),
    -- | bank_name: Name of the bank associated with the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    outboundTransfersPaymentMethodDetailsUsBankAccountBankName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    outboundTransfersPaymentMethodDetailsUsBankAccountFingerprint :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | last4: Last four digits of the bank account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    outboundTransfersPaymentMethodDetailsUsBankAccountLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | network: The US bank account network used to send funds.
    outboundTransfersPaymentMethodDetailsUsBankAccountNetwork :: OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork',
    -- | routing_number: Routing number of the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    outboundTransfersPaymentMethodDetailsUsBankAccountRoutingNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OutboundTransfersPaymentMethodDetailsUsBankAccount where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccountAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccountBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccountFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccountLast4 obj) : ["network" Data.Aeson.Types.ToJSON..= outboundTransfersPaymentMethodDetailsUsBankAccountNetwork obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccountRoutingNumber obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccountAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccountBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccountFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccountLast4 obj) : ["network" Data.Aeson.Types.ToJSON..= outboundTransfersPaymentMethodDetailsUsBankAccountNetwork obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccountRoutingNumber obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON OutboundTransfersPaymentMethodDetailsUsBankAccount where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OutboundTransfersPaymentMethodDetailsUsBankAccount" (\obj -> ((((((GHC.Base.pure OutboundTransfersPaymentMethodDetailsUsBankAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "routing_number"))

-- | Create a new 'OutboundTransfersPaymentMethodDetailsUsBankAccount' with all required fields.
mkOutboundTransfersPaymentMethodDetailsUsBankAccount ::
  -- | 'outboundTransfersPaymentMethodDetailsUsBankAccountNetwork'
  OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork' ->
  OutboundTransfersPaymentMethodDetailsUsBankAccount
mkOutboundTransfersPaymentMethodDetailsUsBankAccount outboundTransfersPaymentMethodDetailsUsBankAccountNetwork =
  OutboundTransfersPaymentMethodDetailsUsBankAccount
    { outboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType = GHC.Maybe.Nothing,
      outboundTransfersPaymentMethodDetailsUsBankAccountAccountType = GHC.Maybe.Nothing,
      outboundTransfersPaymentMethodDetailsUsBankAccountBankName = GHC.Maybe.Nothing,
      outboundTransfersPaymentMethodDetailsUsBankAccountFingerprint = GHC.Maybe.Nothing,
      outboundTransfersPaymentMethodDetailsUsBankAccountLast4 = GHC.Maybe.Nothing,
      outboundTransfersPaymentMethodDetailsUsBankAccountNetwork = outboundTransfersPaymentMethodDetailsUsBankAccountNetwork,
      outboundTransfersPaymentMethodDetailsUsBankAccountRoutingNumber = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.outbound_transfers_payment_method_details_us_bank_account.properties.account_holder_type@ in the specification.
--
-- Account holder type: individual or company.
data OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"company"@
    OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableEnumCompany
  | -- | Represents the JSON value @"individual"@
    OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableEnumIndividual
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullable where
  toJSON (OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableOther val) = val
  toJSON (OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableEnumCompany) = "company"
  toJSON (OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableEnumIndividual) = "individual"

instance Data.Aeson.Types.FromJSON.FromJSON OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "company" -> OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableEnumCompany
          | val GHC.Classes.== "individual" -> OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableEnumIndividual
          | GHC.Base.otherwise -> OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.outbound_transfers_payment_method_details_us_bank_account.properties.account_type@ in the specification.
--
-- Account type: checkings or savings. Defaults to checking if omitted.
data OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"checking"@
    OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullableEnumChecking
  | -- | Represents the JSON value @"savings"@
    OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullableEnumSavings
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullable where
  toJSON (OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullableOther val) = val
  toJSON (OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullableEnumChecking) = "checking"
  toJSON (OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullableEnumSavings) = "savings"

instance Data.Aeson.Types.FromJSON.FromJSON OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "checking" -> OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullableEnumChecking
          | val GHC.Classes.== "savings" -> OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullableEnumSavings
          | GHC.Base.otherwise -> OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.outbound_transfers_payment_method_details_us_bank_account.properties.network@ in the specification.
--
-- The US bank account network used to send funds.
data OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"ach"@
    OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork'EnumAch
  | -- | Represents the JSON value @"us_domestic_wire"@
    OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork'EnumUsDomesticWire
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork' where
  toJSON (OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork'Other val) = val
  toJSON (OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork'EnumAch) = "ach"
  toJSON (OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork'EnumUsDomesticWire) = "us_domestic_wire"

instance Data.Aeson.Types.FromJSON.FromJSON OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "ach" -> OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork'EnumAch
          | val GHC.Classes.== "us_domestic_wire" -> OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork'EnumUsDomesticWire
          | GHC.Base.otherwise -> OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork'Other val
      )
