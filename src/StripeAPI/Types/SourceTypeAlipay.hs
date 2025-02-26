-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SourceTypeAlipay
module StripeAPI.Types.SourceTypeAlipay where

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

-- | Defines the object schema located at @components.schemas.source_type_alipay@ in the specification.
-- 
-- 
data SourceTypeAlipay = SourceTypeAlipay {
  -- | data_string
  sourceTypeAlipayDataString :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | native_url
  , sourceTypeAlipayNativeUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | statement_descriptor
  , sourceTypeAlipayStatementDescriptor :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SourceTypeAlipay
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data_string" Data.Aeson.Types.ToJSON..=)) (sourceTypeAlipayDataString obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("native_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeAlipayNativeUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (sourceTypeAlipayStatementDescriptor obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data_string" Data.Aeson.Types.ToJSON..=)) (sourceTypeAlipayDataString obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("native_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeAlipayNativeUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (sourceTypeAlipayStatementDescriptor obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeAlipay
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeAlipay" (\obj -> ((GHC.Base.pure SourceTypeAlipay GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "data_string")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "native_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor"))}
-- | Create a new 'SourceTypeAlipay' with all required fields.
mkSourceTypeAlipay :: SourceTypeAlipay
mkSourceTypeAlipay = SourceTypeAlipay{sourceTypeAlipayDataString = GHC.Maybe.Nothing,
                                      sourceTypeAlipayNativeUrl = GHC.Maybe.Nothing,
                                      sourceTypeAlipayStatementDescriptor = GHC.Maybe.Nothing}
