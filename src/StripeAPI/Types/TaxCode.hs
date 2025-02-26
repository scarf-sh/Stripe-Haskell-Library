-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TaxCode
module StripeAPI.Types.TaxCode where

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

-- | Defines the object schema located at @components.schemas.tax_code@ in the specification.
-- 
-- [Tax codes](https:\/\/stripe.com\/docs\/tax\/tax-categories) classify goods and services for tax purposes.
data TaxCode = TaxCode {
  -- | description: A detailed description of which types of products the tax code represents.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  taxCodeDescription :: Data.Text.Internal.Text
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxCodeId :: Data.Text.Internal.Text
  -- | name: A short name for the tax code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxCodeName :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxCode
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["description" Data.Aeson.Types.ToJSON..= taxCodeDescription obj] : ["id" Data.Aeson.Types.ToJSON..= taxCodeId obj] : ["name" Data.Aeson.Types.ToJSON..= taxCodeName obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax_code"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["description" Data.Aeson.Types.ToJSON..= taxCodeDescription obj] : ["id" Data.Aeson.Types.ToJSON..= taxCodeId obj] : ["name" Data.Aeson.Types.ToJSON..= taxCodeName obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax_code"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TaxCode
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxCode" (\obj -> ((GHC.Base.pure TaxCode GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name"))}
-- | Create a new 'TaxCode' with all required fields.
mkTaxCode :: Data.Text.Internal.Text -- ^ 'taxCodeDescription'
  -> Data.Text.Internal.Text -- ^ 'taxCodeId'
  -> Data.Text.Internal.Text -- ^ 'taxCodeName'
  -> TaxCode
mkTaxCode taxCodeDescription taxCodeId taxCodeName = TaxCode{taxCodeDescription = taxCodeDescription,
                                                             taxCodeId = taxCodeId,
                                                             taxCodeName = taxCodeName}
