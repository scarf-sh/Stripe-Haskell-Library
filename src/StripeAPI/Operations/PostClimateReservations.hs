-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postClimateReservations
module StripeAPI.Operations.PostClimateReservations where

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

-- | > POST /v1/climate/reservations
-- 
-- \<p>Creates a Climate order object for a given Climate product. The order will be processed immediately
-- after creation and payment will be deducted your Stripe balance.\<\/p>
postClimateReservations :: forall m . StripeAPI.Common.MonadHTTP m => PostClimateReservationsRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostClimateReservationsResponse) -- ^ Monadic computation which returns the result of the operation
postClimateReservations body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostClimateReservationsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostClimateReservationsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        Climate'order)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostClimateReservationsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/v1/climate/reservations" GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/climate\/reservations.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostClimateReservationsRequestBody = PostClimateReservationsRequestBody {
  -- | amount: Requested amount of carbon removal units. Either this or \`metric_tons\` must be specified.
  postClimateReservationsRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | beneficiary: Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
  , postClimateReservationsRequestBodyBeneficiary :: (GHC.Maybe.Maybe PostClimateReservationsRequestBodyBeneficiary')
  -- | currency: Request currency for the order as a three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a supported [settlement currency for your account](https:\/\/stripe.com\/docs\/currencies). If omitted, the account\'s default currency will be used.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postClimateReservationsRequestBodyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postClimateReservationsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postClimateReservationsRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | metric_tons: Requested number of tons for the order. Either this or \`amount\` must be specified.
  , postClimateReservationsRequestBodyMetricTons :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | product: Unique identifier of the Climate product.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postClimateReservationsRequestBodyProduct :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostClimateReservationsRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsRequestBodyAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("beneficiary" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsRequestBodyBeneficiary obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsRequestBodyCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metric_tons" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsRequestBodyMetricTons obj) : ["product" Data.Aeson.Types.ToJSON..= postClimateReservationsRequestBodyProduct obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsRequestBodyAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("beneficiary" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsRequestBodyBeneficiary obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsRequestBodyCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metric_tons" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsRequestBodyMetricTons obj) : ["product" Data.Aeson.Types.ToJSON..= postClimateReservationsRequestBodyProduct obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostClimateReservationsRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostClimateReservationsRequestBody" (\obj -> ((((((GHC.Base.pure PostClimateReservationsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "beneficiary")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metric_tons")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "product"))}
-- | Create a new 'PostClimateReservationsRequestBody' with all required fields.
mkPostClimateReservationsRequestBody :: Data.Text.Internal.Text -- ^ 'postClimateReservationsRequestBodyProduct'
  -> PostClimateReservationsRequestBody
mkPostClimateReservationsRequestBody postClimateReservationsRequestBodyProduct = PostClimateReservationsRequestBody{postClimateReservationsRequestBodyAmount = GHC.Maybe.Nothing,
                                                                                                                    postClimateReservationsRequestBodyBeneficiary = GHC.Maybe.Nothing,
                                                                                                                    postClimateReservationsRequestBodyCurrency = GHC.Maybe.Nothing,
                                                                                                                    postClimateReservationsRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                                    postClimateReservationsRequestBodyMetadata = GHC.Maybe.Nothing,
                                                                                                                    postClimateReservationsRequestBodyMetricTons = GHC.Maybe.Nothing,
                                                                                                                    postClimateReservationsRequestBodyProduct = postClimateReservationsRequestBodyProduct}
-- | Defines the object schema located at @paths.\/v1\/climate\/reservations.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.beneficiary@ in the specification.
-- 
-- Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
data PostClimateReservationsRequestBodyBeneficiary' = PostClimateReservationsRequestBodyBeneficiary' {
  -- | public_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postClimateReservationsRequestBodyBeneficiary'PublicName :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostClimateReservationsRequestBodyBeneficiary'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["public_name" Data.Aeson.Types.ToJSON..= postClimateReservationsRequestBodyBeneficiary'PublicName obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["public_name" Data.Aeson.Types.ToJSON..= postClimateReservationsRequestBodyBeneficiary'PublicName obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostClimateReservationsRequestBodyBeneficiary'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostClimateReservationsRequestBodyBeneficiary'" (\obj -> GHC.Base.pure PostClimateReservationsRequestBodyBeneficiary' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "public_name"))}
-- | Create a new 'PostClimateReservationsRequestBodyBeneficiary'' with all required fields.
mkPostClimateReservationsRequestBodyBeneficiary' :: Data.Text.Internal.Text -- ^ 'postClimateReservationsRequestBodyBeneficiary'PublicName'
  -> PostClimateReservationsRequestBodyBeneficiary'
mkPostClimateReservationsRequestBodyBeneficiary' postClimateReservationsRequestBodyBeneficiary'PublicName = PostClimateReservationsRequestBodyBeneficiary'{postClimateReservationsRequestBodyBeneficiary'PublicName = postClimateReservationsRequestBodyBeneficiary'PublicName}
-- | Represents a response of the operation 'postClimateReservations'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostClimateReservationsResponseError' is used.
data PostClimateReservationsResponse =
   PostClimateReservationsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostClimateReservationsResponse200 Climate'order -- ^ Successful response.
  | PostClimateReservationsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
