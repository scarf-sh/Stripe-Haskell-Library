-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ApplePayDomain
module StripeAPI.Types.ApplePayDomain where

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

-- | Defines the object schema located at @components.schemas.apple_pay_domain@ in the specification.
-- 
-- 
data ApplePayDomain = ApplePayDomain {
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  applePayDomainCreated :: GHC.Types.Int
  -- | domain_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , applePayDomainDomainName :: Data.Text.Internal.Text
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , applePayDomainId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , applePayDomainLivemode :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ApplePayDomain
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= applePayDomainCreated obj] : ["domain_name" Data.Aeson.Types.ToJSON..= applePayDomainDomainName obj] : ["id" Data.Aeson.Types.ToJSON..= applePayDomainId obj] : ["livemode" Data.Aeson.Types.ToJSON..= applePayDomainLivemode obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "apple_pay_domain"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= applePayDomainCreated obj] : ["domain_name" Data.Aeson.Types.ToJSON..= applePayDomainDomainName obj] : ["id" Data.Aeson.Types.ToJSON..= applePayDomainId obj] : ["livemode" Data.Aeson.Types.ToJSON..= applePayDomainLivemode obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "apple_pay_domain"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ApplePayDomain
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ApplePayDomain" (\obj -> (((GHC.Base.pure ApplePayDomain GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "domain_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode"))}
-- | Create a new 'ApplePayDomain' with all required fields.
mkApplePayDomain :: GHC.Types.Int -- ^ 'applePayDomainCreated'
  -> Data.Text.Internal.Text -- ^ 'applePayDomainDomainName'
  -> Data.Text.Internal.Text -- ^ 'applePayDomainId'
  -> GHC.Types.Bool -- ^ 'applePayDomainLivemode'
  -> ApplePayDomain
mkApplePayDomain applePayDomainCreated applePayDomainDomainName applePayDomainId applePayDomainLivemode = ApplePayDomain{applePayDomainCreated = applePayDomainCreated,
                                                                                                                         applePayDomainDomainName = applePayDomainDomainName,
                                                                                                                         applePayDomainId = applePayDomainId,
                                                                                                                         applePayDomainLivemode = applePayDomainLivemode}
