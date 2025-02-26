-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema FundingInstructionsBankTransferSwiftRecord
module StripeAPI.Types.FundingInstructionsBankTransferSwiftRecord where

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

-- | Defines the object schema located at @components.schemas.funding_instructions_bank_transfer_swift_record@ in the specification.
-- 
-- SWIFT Records contain U.S. bank account details per the SWIFT format.
data FundingInstructionsBankTransferSwiftRecord = FundingInstructionsBankTransferSwiftRecord {
  -- | account_number: The account number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  fundingInstructionsBankTransferSwiftRecordAccountNumber :: Data.Text.Internal.Text
  -- | bank_name: The bank name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , fundingInstructionsBankTransferSwiftRecordBankName :: Data.Text.Internal.Text
  -- | swift_code: The SWIFT code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , fundingInstructionsBankTransferSwiftRecordSwiftCode :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FundingInstructionsBankTransferSwiftRecord
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["account_number" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferSwiftRecordAccountNumber obj] : ["bank_name" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferSwiftRecordBankName obj] : ["swift_code" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferSwiftRecordSwiftCode obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["account_number" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferSwiftRecordAccountNumber obj] : ["bank_name" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferSwiftRecordBankName obj] : ["swift_code" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferSwiftRecordSwiftCode obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON FundingInstructionsBankTransferSwiftRecord
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "FundingInstructionsBankTransferSwiftRecord" (\obj -> ((GHC.Base.pure FundingInstructionsBankTransferSwiftRecord GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "swift_code"))}
-- | Create a new 'FundingInstructionsBankTransferSwiftRecord' with all required fields.
mkFundingInstructionsBankTransferSwiftRecord :: Data.Text.Internal.Text -- ^ 'fundingInstructionsBankTransferSwiftRecordAccountNumber'
  -> Data.Text.Internal.Text -- ^ 'fundingInstructionsBankTransferSwiftRecordBankName'
  -> Data.Text.Internal.Text -- ^ 'fundingInstructionsBankTransferSwiftRecordSwiftCode'
  -> FundingInstructionsBankTransferSwiftRecord
mkFundingInstructionsBankTransferSwiftRecord fundingInstructionsBankTransferSwiftRecordAccountNumber fundingInstructionsBankTransferSwiftRecordBankName fundingInstructionsBankTransferSwiftRecordSwiftCode = FundingInstructionsBankTransferSwiftRecord{fundingInstructionsBankTransferSwiftRecordAccountNumber = fundingInstructionsBankTransferSwiftRecordAccountNumber,
                                                                                                                                                                                                                                                         fundingInstructionsBankTransferSwiftRecordBankName = fundingInstructionsBankTransferSwiftRecordBankName,
                                                                                                                                                                                                                                                         fundingInstructionsBankTransferSwiftRecordSwiftCode = fundingInstructionsBankTransferSwiftRecordSwiftCode}
