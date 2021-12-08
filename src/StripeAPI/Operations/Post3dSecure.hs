{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation post3dSecure
module StripeAPI.Operations.Post3dSecure where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/3d_secure
--
-- \<p>Initiate 3D Secure authentication.\<\/p>
post3dSecure ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  Post3dSecureRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Post3dSecureResponse)
post3dSecure body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either Post3dSecureResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   Post3dSecureResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ThreeDSecure
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   Post3dSecureResponseDefault
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/3d_secure") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/3d_secure.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data Post3dSecureRequestBody = Post3dSecureRequestBody
  { -- | amount: Amount of the charge that you will create when authentication completes.
    post3dSecureRequestBodyAmount :: GHC.Types.Int,
    -- | card: The ID of a card token, or the ID of a card belonging to the given customer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    post3dSecureRequestBodyCard :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    post3dSecureRequestBodyCurrency :: Data.Text.Internal.Text,
    -- | customer: The customer associated with this 3D secure authentication.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    post3dSecureRequestBodyCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    post3dSecureRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | return_url: The URL that the cardholder\'s browser will be returned to when authentication completes.
    post3dSecureRequestBodyReturnUrl :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Post3dSecureRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= post3dSecureRequestBodyAmount obj : "card" Data.Aeson.Types.ToJSON..= post3dSecureRequestBodyCard obj : "currency" Data.Aeson.Types.ToJSON..= post3dSecureRequestBodyCurrency obj : "customer" Data.Aeson.Types.ToJSON..= post3dSecureRequestBodyCustomer obj : "expand" Data.Aeson.Types.ToJSON..= post3dSecureRequestBodyExpand obj : "return_url" Data.Aeson.Types.ToJSON..= post3dSecureRequestBodyReturnUrl obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= post3dSecureRequestBodyAmount obj) GHC.Base.<> (("card" Data.Aeson.Types.ToJSON..= post3dSecureRequestBodyCard obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= post3dSecureRequestBodyCurrency obj) GHC.Base.<> (("customer" Data.Aeson.Types.ToJSON..= post3dSecureRequestBodyCustomer obj) GHC.Base.<> (("expand" Data.Aeson.Types.ToJSON..= post3dSecureRequestBodyExpand obj) GHC.Base.<> ("return_url" Data.Aeson.Types.ToJSON..= post3dSecureRequestBodyReturnUrl obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON Post3dSecureRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Post3dSecureRequestBody" (\obj -> (((((GHC.Base.pure Post3dSecureRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "return_url"))

-- | Create a new 'Post3dSecureRequestBody' with all required fields.
mkPost3dSecureRequestBody ::
  -- | 'post3dSecureRequestBodyAmount'
  GHC.Types.Int ->
  -- | 'post3dSecureRequestBodyCurrency'
  Data.Text.Internal.Text ->
  -- | 'post3dSecureRequestBodyReturnUrl'
  Data.Text.Internal.Text ->
  Post3dSecureRequestBody
mkPost3dSecureRequestBody post3dSecureRequestBodyAmount post3dSecureRequestBodyCurrency post3dSecureRequestBodyReturnUrl =
  Post3dSecureRequestBody
    { post3dSecureRequestBodyAmount = post3dSecureRequestBodyAmount,
      post3dSecureRequestBodyCard = GHC.Maybe.Nothing,
      post3dSecureRequestBodyCurrency = post3dSecureRequestBodyCurrency,
      post3dSecureRequestBodyCustomer = GHC.Maybe.Nothing,
      post3dSecureRequestBodyExpand = GHC.Maybe.Nothing,
      post3dSecureRequestBodyReturnUrl = post3dSecureRequestBodyReturnUrl
    }

-- | Represents a response of the operation 'post3dSecure'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Post3dSecureResponseError' is used.
data Post3dSecureResponse
  = -- | Means either no matching case available or a parse error
    Post3dSecureResponseError GHC.Base.String
  | -- | Successful response.
    Post3dSecureResponse200 ThreeDSecure
  | -- | Error response.
    Post3dSecureResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
