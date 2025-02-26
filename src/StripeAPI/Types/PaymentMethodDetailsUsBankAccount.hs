-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodDetailsUsBankAccount
module StripeAPI.Types.PaymentMethodDetailsUsBankAccount where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_us_bank_account@ in the specification.
-- 
-- 
data PaymentMethodDetailsUsBankAccount = PaymentMethodDetailsUsBankAccount {
  -- | account_holder_type: Account holder type: individual or company.
  paymentMethodDetailsUsBankAccountAccountHolderType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullable))
  -- | account_type: Account type: checkings or savings. Defaults to checking if omitted.
  , paymentMethodDetailsUsBankAccountAccountType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodDetailsUsBankAccountAccountType'NonNullable))
  -- | bank_name: Name of the bank associated with the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsUsBankAccountBankName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsUsBankAccountFingerprint :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | last4: Last four digits of the bank account number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsUsBankAccountLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | routing_number: Routing number of the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsUsBankAccountRoutingNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsUsBankAccount
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsUsBankAccountAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsUsBankAccountAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsUsBankAccountBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsUsBankAccountFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsUsBankAccountLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsUsBankAccountRoutingNumber obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsUsBankAccountAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsUsBankAccountAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsUsBankAccountBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsUsBankAccountFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsUsBankAccountLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsUsBankAccountRoutingNumber obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsUsBankAccount
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsUsBankAccount" (\obj -> (((((GHC.Base.pure PaymentMethodDetailsUsBankAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "routing_number"))}
-- | Create a new 'PaymentMethodDetailsUsBankAccount' with all required fields.
mkPaymentMethodDetailsUsBankAccount :: PaymentMethodDetailsUsBankAccount
mkPaymentMethodDetailsUsBankAccount = PaymentMethodDetailsUsBankAccount{paymentMethodDetailsUsBankAccountAccountHolderType = GHC.Maybe.Nothing,
                                                                        paymentMethodDetailsUsBankAccountAccountType = GHC.Maybe.Nothing,
                                                                        paymentMethodDetailsUsBankAccountBankName = GHC.Maybe.Nothing,
                                                                        paymentMethodDetailsUsBankAccountFingerprint = GHC.Maybe.Nothing,
                                                                        paymentMethodDetailsUsBankAccountLast4 = GHC.Maybe.Nothing,
                                                                        paymentMethodDetailsUsBankAccountRoutingNumber = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.payment_method_details_us_bank_account.properties.account_holder_type@ in the specification.
-- 
-- Account holder type: individual or company.
data PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullable =
   PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableEnumCompany -- ^ Represents the JSON value @"company"@
  | PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableEnumIndividual -- ^ Represents the JSON value @"individual"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullable
    where {toJSON (PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableOther val) = val;
           toJSON (PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableEnumCompany) = "company";
           toJSON (PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableEnumIndividual) = "individual"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "company" -> PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableEnumCompany
                                             | val GHC.Classes.== "individual" -> PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableEnumIndividual
                                             | GHC.Base.otherwise -> PaymentMethodDetailsUsBankAccountAccountHolderType'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.payment_method_details_us_bank_account.properties.account_type@ in the specification.
-- 
-- Account type: checkings or savings. Defaults to checking if omitted.
data PaymentMethodDetailsUsBankAccountAccountType'NonNullable =
   PaymentMethodDetailsUsBankAccountAccountType'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodDetailsUsBankAccountAccountType'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodDetailsUsBankAccountAccountType'NonNullableEnumChecking -- ^ Represents the JSON value @"checking"@
  | PaymentMethodDetailsUsBankAccountAccountType'NonNullableEnumSavings -- ^ Represents the JSON value @"savings"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsUsBankAccountAccountType'NonNullable
    where {toJSON (PaymentMethodDetailsUsBankAccountAccountType'NonNullableOther val) = val;
           toJSON (PaymentMethodDetailsUsBankAccountAccountType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodDetailsUsBankAccountAccountType'NonNullableEnumChecking) = "checking";
           toJSON (PaymentMethodDetailsUsBankAccountAccountType'NonNullableEnumSavings) = "savings"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsUsBankAccountAccountType'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "checking" -> PaymentMethodDetailsUsBankAccountAccountType'NonNullableEnumChecking
                                             | val GHC.Classes.== "savings" -> PaymentMethodDetailsUsBankAccountAccountType'NonNullableEnumSavings
                                             | GHC.Base.otherwise -> PaymentMethodDetailsUsBankAccountAccountType'NonNullableOther val)}
