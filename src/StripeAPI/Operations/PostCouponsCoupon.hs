-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postCouponsCoupon
module StripeAPI.Operations.PostCouponsCoupon where

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

-- | > POST /v1/coupons/{coupon}
-- 
-- \<p>Updates the metadata of a coupon. Other coupon details (currency, duration, amount_off) are, by design, not editable.\<\/p>
postCouponsCoupon :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ coupon | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostCouponsCouponRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostCouponsCouponResponse) -- ^ Monadic computation which returns the result of the operation
postCouponsCoupon coupon
                  body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCouponsCouponResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCouponsCouponResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      Coupon)
                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCouponsCouponResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/coupons/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel coupon)) GHC.Base.<> "")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/coupons\/{coupon}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostCouponsCouponRequestBody = PostCouponsCouponRequestBody {
  -- | currency_options: Coupons defined in each available currency option (only supported if the coupon is amount-based). Each key must be a three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html) and a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  postCouponsCouponRequestBodyCurrencyOptions :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | expand: Specifies which fields in the response should be expanded.
  , postCouponsCouponRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postCouponsCouponRequestBodyMetadata :: (GHC.Maybe.Maybe PostCouponsCouponRequestBodyMetadata'Variants)
  -- | name: Name of the coupon displayed to customers on, for instance invoices, or receipts. By default the \`id\` is shown if \`name\` is not set.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 40
  , postCouponsCouponRequestBodyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCouponsCouponRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency_options" Data.Aeson.Types.ToJSON..=)) (postCouponsCouponRequestBodyCurrencyOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCouponsCouponRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postCouponsCouponRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postCouponsCouponRequestBodyName obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency_options" Data.Aeson.Types.ToJSON..=)) (postCouponsCouponRequestBodyCurrencyOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCouponsCouponRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postCouponsCouponRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postCouponsCouponRequestBodyName obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostCouponsCouponRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCouponsCouponRequestBody" (\obj -> (((GHC.Base.pure PostCouponsCouponRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name"))}
-- | Create a new 'PostCouponsCouponRequestBody' with all required fields.
mkPostCouponsCouponRequestBody :: PostCouponsCouponRequestBody
mkPostCouponsCouponRequestBody = PostCouponsCouponRequestBody{postCouponsCouponRequestBodyCurrencyOptions = GHC.Maybe.Nothing,
                                                              postCouponsCouponRequestBodyExpand = GHC.Maybe.Nothing,
                                                              postCouponsCouponRequestBodyMetadata = GHC.Maybe.Nothing,
                                                              postCouponsCouponRequestBodyName = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/coupons\/{coupon}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
-- 
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostCouponsCouponRequestBodyMetadata'Variants =
   PostCouponsCouponRequestBodyMetadata'EmptyString -- ^ Represents the JSON value @""@
  | PostCouponsCouponRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCouponsCouponRequestBodyMetadata'Variants
    where {toJSON (PostCouponsCouponRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (PostCouponsCouponRequestBodyMetadata'EmptyString) = ""}
instance Data.Aeson.Types.FromJSON.FromJSON PostCouponsCouponRequestBodyMetadata'Variants
    where {parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostCouponsCouponRequestBodyMetadata'EmptyString
                              | GHC.Base.otherwise -> case (PostCouponsCouponRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                      {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                                                       Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Represents a response of the operation 'postCouponsCoupon'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCouponsCouponResponseError' is used.
data PostCouponsCouponResponse =
   PostCouponsCouponResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostCouponsCouponResponse200 Coupon -- ^ Successful response.
  | PostCouponsCouponResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
