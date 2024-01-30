-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IssuingCardWallets
module StripeAPI.Types.IssuingCardWallets where

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
import {-# SOURCE #-} StripeAPI.Types.IssuingCardApplePay
import {-# SOURCE #-} StripeAPI.Types.IssuingCardGooglePay

-- | Defines the object schema located at @components.schemas.issuing_card_wallets@ in the specification.
-- 
-- 
data IssuingCardWallets = IssuingCardWallets {
  -- | apple_pay: 
  issuingCardWalletsApplePay :: IssuingCardApplePay
  -- | google_pay: 
  , issuingCardWalletsGooglePay :: IssuingCardGooglePay
  -- | primary_account_identifier: Unique identifier for a card used with digital wallets
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingCardWalletsPrimaryAccountIdentifier :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardWallets
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["apple_pay" Data.Aeson.Types.ToJSON..= issuingCardWalletsApplePay obj] : ["google_pay" Data.Aeson.Types.ToJSON..= issuingCardWalletsGooglePay obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("primary_account_identifier" Data.Aeson.Types.ToJSON..=)) (issuingCardWalletsPrimaryAccountIdentifier obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["apple_pay" Data.Aeson.Types.ToJSON..= issuingCardWalletsApplePay obj] : ["google_pay" Data.Aeson.Types.ToJSON..= issuingCardWalletsGooglePay obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("primary_account_identifier" Data.Aeson.Types.ToJSON..=)) (issuingCardWalletsPrimaryAccountIdentifier obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardWallets
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardWallets" (\obj -> ((GHC.Base.pure IssuingCardWallets GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "apple_pay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "google_pay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "primary_account_identifier"))}
-- | Create a new 'IssuingCardWallets' with all required fields.
mkIssuingCardWallets :: IssuingCardApplePay -- ^ 'issuingCardWalletsApplePay'
  -> IssuingCardGooglePay -- ^ 'issuingCardWalletsGooglePay'
  -> IssuingCardWallets
mkIssuingCardWallets issuingCardWalletsApplePay issuingCardWalletsGooglePay = IssuingCardWallets{issuingCardWalletsApplePay = issuingCardWalletsApplePay,
                                                                                                 issuingCardWalletsGooglePay = issuingCardWalletsGooglePay,
                                                                                                 issuingCardWalletsPrimaryAccountIdentifier = GHC.Maybe.Nothing}
