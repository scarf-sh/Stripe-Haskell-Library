-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount
module StripeAPI.Types.TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount where

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

-- | Defines the object schema located at @components.schemas.treasury_shared_resource_initiating_payment_method_details_us_bank_account@ in the specification.
-- 
-- 
data TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount = TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount {
  -- | bank_name: Bank name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  treasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccountBankName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | last4: The last four digits of the bank account number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , treasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccountLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | routing_number: The routing number for the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , treasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccountRoutingNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccountBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccountLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccountRoutingNumber obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccountBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccountLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccountRoutingNumber obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount" (\obj -> ((GHC.Base.pure TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "routing_number"))}
-- | Create a new 'TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount' with all required fields.
mkTreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount :: TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount
mkTreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount = TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount{treasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccountBankName = GHC.Maybe.Nothing,
                                                                                                                                        treasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccountLast4 = GHC.Maybe.Nothing,
                                                                                                                                        treasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccountRoutingNumber = GHC.Maybe.Nothing}
