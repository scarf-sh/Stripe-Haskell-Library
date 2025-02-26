-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getTerminalReaders
module StripeAPI.Operations.GetTerminalReaders where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.ByteString as Data.ByteString.Internal.Type
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types

-- | > GET /v1/terminal/readers
-- 
-- \<p>Returns a list of \<code>Reader\<\/code> objects.\<\/p>
getTerminalReaders :: forall m . StripeAPI.Common.MonadHTTP m => GetTerminalReadersParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTerminalReadersResponse) -- ^ Monadic computation which returns the result of the operation
getTerminalReaders parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTerminalReadersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTerminalReadersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               GetTerminalReadersResponseBody200)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetTerminalReadersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/v1/terminal/readers" [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "device_type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalReadersParametersQueryDeviceType parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalReadersParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalReadersParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalReadersParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "location") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalReadersParametersQueryLocation parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "serial_number") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalReadersParametersQuerySerialNumber parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalReadersParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalReadersParametersQueryStatus parameters) (Data.Text.Internal.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/terminal\/readers.GET.parameters@ in the specification.
-- 
-- 
data GetTerminalReadersParameters = GetTerminalReadersParameters {
  -- | queryDevice_type: Represents the parameter named \'device_type\'
  -- 
  -- Filters readers by device type
  getTerminalReadersParametersQueryDeviceType :: (GHC.Maybe.Maybe GetTerminalReadersParametersQueryDeviceType')
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTerminalReadersParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getTerminalReadersParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getTerminalReadersParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryLocation: Represents the parameter named \'location\'
  -- 
  -- A location ID to filter the response list to only readers at the specific location
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTerminalReadersParametersQueryLocation :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | querySerial_number: Represents the parameter named \'serial_number\'
  -- 
  -- Filters readers by serial number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTerminalReadersParametersQuerySerialNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTerminalReadersParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryStatus: Represents the parameter named \'status\'
  -- 
  -- A status filter to filter readers to only offline or online readers
  , getTerminalReadersParametersQueryStatus :: (GHC.Maybe.Maybe GetTerminalReadersParametersQueryStatus')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalReadersParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryDevice_type" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryDeviceType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLocation" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryLocation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySerial_number" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQuerySerialNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryStatus obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryDevice_type" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryDeviceType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLocation" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryLocation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySerial_number" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQuerySerialNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersParametersQueryStatus obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalReadersParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTerminalReadersParameters" (\obj -> (((((((GHC.Base.pure GetTerminalReadersParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryDevice_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLocation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySerial_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStatus"))}
-- | Create a new 'GetTerminalReadersParameters' with all required fields.
mkGetTerminalReadersParameters :: GetTerminalReadersParameters
mkGetTerminalReadersParameters = GetTerminalReadersParameters{getTerminalReadersParametersQueryDeviceType = GHC.Maybe.Nothing,
                                                              getTerminalReadersParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                                              getTerminalReadersParametersQueryExpand = GHC.Maybe.Nothing,
                                                              getTerminalReadersParametersQueryLimit = GHC.Maybe.Nothing,
                                                              getTerminalReadersParametersQueryLocation = GHC.Maybe.Nothing,
                                                              getTerminalReadersParametersQuerySerialNumber = GHC.Maybe.Nothing,
                                                              getTerminalReadersParametersQueryStartingAfter = GHC.Maybe.Nothing,
                                                              getTerminalReadersParametersQueryStatus = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/terminal\/readers.GET.parameters.properties.queryDevice_type@ in the specification.
-- 
-- Represents the parameter named \'device_type\'
-- 
-- Filters readers by device type
data GetTerminalReadersParametersQueryDeviceType' =
   GetTerminalReadersParametersQueryDeviceType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetTerminalReadersParametersQueryDeviceType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetTerminalReadersParametersQueryDeviceType'EnumBbposChipper2x -- ^ Represents the JSON value @"bbpos_chipper2x"@
  | GetTerminalReadersParametersQueryDeviceType'EnumBbposWisepad3 -- ^ Represents the JSON value @"bbpos_wisepad3"@
  | GetTerminalReadersParametersQueryDeviceType'EnumBbposWiseposE -- ^ Represents the JSON value @"bbpos_wisepos_e"@
  | GetTerminalReadersParametersQueryDeviceType'EnumSimulatedWiseposE -- ^ Represents the JSON value @"simulated_wisepos_e"@
  | GetTerminalReadersParametersQueryDeviceType'EnumStripeM2 -- ^ Represents the JSON value @"stripe_m2"@
  | GetTerminalReadersParametersQueryDeviceType'EnumVerifoneP400 -- ^ Represents the JSON value @"verifone_P400"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalReadersParametersQueryDeviceType'
    where {toJSON (GetTerminalReadersParametersQueryDeviceType'Other val) = val;
           toJSON (GetTerminalReadersParametersQueryDeviceType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (GetTerminalReadersParametersQueryDeviceType'EnumBbposChipper2x) = "bbpos_chipper2x";
           toJSON (GetTerminalReadersParametersQueryDeviceType'EnumBbposWisepad3) = "bbpos_wisepad3";
           toJSON (GetTerminalReadersParametersQueryDeviceType'EnumBbposWiseposE) = "bbpos_wisepos_e";
           toJSON (GetTerminalReadersParametersQueryDeviceType'EnumSimulatedWiseposE) = "simulated_wisepos_e";
           toJSON (GetTerminalReadersParametersQueryDeviceType'EnumStripeM2) = "stripe_m2";
           toJSON (GetTerminalReadersParametersQueryDeviceType'EnumVerifoneP400) = "verifone_P400"}
instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalReadersParametersQueryDeviceType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "bbpos_chipper2x" -> GetTerminalReadersParametersQueryDeviceType'EnumBbposChipper2x
                                             | val GHC.Classes.== "bbpos_wisepad3" -> GetTerminalReadersParametersQueryDeviceType'EnumBbposWisepad3
                                             | val GHC.Classes.== "bbpos_wisepos_e" -> GetTerminalReadersParametersQueryDeviceType'EnumBbposWiseposE
                                             | val GHC.Classes.== "simulated_wisepos_e" -> GetTerminalReadersParametersQueryDeviceType'EnumSimulatedWiseposE
                                             | val GHC.Classes.== "stripe_m2" -> GetTerminalReadersParametersQueryDeviceType'EnumStripeM2
                                             | val GHC.Classes.== "verifone_P400" -> GetTerminalReadersParametersQueryDeviceType'EnumVerifoneP400
                                             | GHC.Base.otherwise -> GetTerminalReadersParametersQueryDeviceType'Other val)}
-- | Defines the enum schema located at @paths.\/v1\/terminal\/readers.GET.parameters.properties.queryStatus@ in the specification.
-- 
-- Represents the parameter named \'status\'
-- 
-- A status filter to filter readers to only offline or online readers
data GetTerminalReadersParametersQueryStatus' =
   GetTerminalReadersParametersQueryStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetTerminalReadersParametersQueryStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetTerminalReadersParametersQueryStatus'EnumOffline -- ^ Represents the JSON value @"offline"@
  | GetTerminalReadersParametersQueryStatus'EnumOnline -- ^ Represents the JSON value @"online"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalReadersParametersQueryStatus'
    where {toJSON (GetTerminalReadersParametersQueryStatus'Other val) = val;
           toJSON (GetTerminalReadersParametersQueryStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (GetTerminalReadersParametersQueryStatus'EnumOffline) = "offline";
           toJSON (GetTerminalReadersParametersQueryStatus'EnumOnline) = "online"}
instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalReadersParametersQueryStatus'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "offline" -> GetTerminalReadersParametersQueryStatus'EnumOffline
                                             | val GHC.Classes.== "online" -> GetTerminalReadersParametersQueryStatus'EnumOnline
                                             | GHC.Base.otherwise -> GetTerminalReadersParametersQueryStatus'Other val)}
-- | Represents a response of the operation 'getTerminalReaders'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTerminalReadersResponseError' is used.
data GetTerminalReadersResponse =
   GetTerminalReadersResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetTerminalReadersResponse200 GetTerminalReadersResponseBody200 -- ^ Successful response.
  | GetTerminalReadersResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/terminal\/readers.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTerminalReadersResponseBody200 = GetTerminalReadersResponseBody200 {
  -- | data: A list of readers
  getTerminalReadersResponseBody200Data :: ([Terminal'reader])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getTerminalReadersResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTerminalReadersResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalReadersResponseBody200
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTerminalReadersResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTerminalReadersResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTerminalReadersResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTerminalReadersResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTerminalReadersResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTerminalReadersResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalReadersResponseBody200
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTerminalReadersResponseBody200" (\obj -> ((GHC.Base.pure GetTerminalReadersResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'GetTerminalReadersResponseBody200' with all required fields.
mkGetTerminalReadersResponseBody200 :: [Terminal'reader] -- ^ 'getTerminalReadersResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getTerminalReadersResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getTerminalReadersResponseBody200Url'
  -> GetTerminalReadersResponseBody200
mkGetTerminalReadersResponseBody200 getTerminalReadersResponseBody200Data getTerminalReadersResponseBody200HasMore getTerminalReadersResponseBody200Url = GetTerminalReadersResponseBody200{getTerminalReadersResponseBody200Data = getTerminalReadersResponseBody200Data,
                                                                                                                                                                                            getTerminalReadersResponseBody200HasMore = getTerminalReadersResponseBody200HasMore,
                                                                                                                                                                                            getTerminalReadersResponseBody200Url = getTerminalReadersResponseBody200Url}
