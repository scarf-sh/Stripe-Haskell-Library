-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema DeletedBankAccount
module StripeAPI.Types.DeletedBankAccount where

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

-- | Defines the object schema located at @components.schemas.deleted_bank_account@ in the specification.
-- 
-- 
data DeletedBankAccount = DeletedBankAccount {
  -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  deletedBankAccountCurrency :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deletedBankAccountId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeletedBankAccount
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (deletedBankAccountCurrency obj) : ["id" Data.Aeson.Types.ToJSON..= deletedBankAccountId obj] : ["deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "bank_account"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (deletedBankAccountCurrency obj) : ["id" Data.Aeson.Types.ToJSON..= deletedBankAccountId obj] : ["deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "bank_account"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON DeletedBankAccount
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedBankAccount" (\obj -> (GHC.Base.pure DeletedBankAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id"))}
-- | Create a new 'DeletedBankAccount' with all required fields.
mkDeletedBankAccount :: Data.Text.Internal.Text -- ^ 'deletedBankAccountId'
  -> DeletedBankAccount
mkDeletedBankAccount deletedBankAccountId = DeletedBankAccount{deletedBankAccountCurrency = GHC.Maybe.Nothing,
                                                               deletedBankAccountId = deletedBankAccountId}
