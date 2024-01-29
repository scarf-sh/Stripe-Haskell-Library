{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postCustomersCustomerCashBalance
module StripeAPI.Operations.PostCustomersCustomerCashBalance where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/customers/{customer}/cash_balance
--
-- \<p>Updates a customer’s cash balance.\<\/p>
postCustomersCustomerCashBalance ::
  forall m.
  (StripeAPI.Common.MonadHTTP m) =>
  -- | customer | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostCustomersCustomerCashBalanceRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostCustomersCustomerCashBalanceResponse)
postCustomersCustomerCashBalance
  customer
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostCustomersCustomerCashBalanceResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostCustomersCustomerCashBalanceResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              CashBalance
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostCustomersCustomerCashBalanceResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/cash_balance"))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/cash_balance.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostCustomersCustomerCashBalanceRequestBody = PostCustomersCustomerCashBalanceRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postCustomersCustomerCashBalanceRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | settings
    postCustomersCustomerCashBalanceRequestBodySettings :: (GHC.Maybe.Maybe PostCustomersCustomerCashBalanceRequestBodySettings')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerCashBalanceRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerCashBalanceRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("settings" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerCashBalanceRequestBodySettings obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerCashBalanceRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("settings" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerCashBalanceRequestBodySettings obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCashBalanceRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCashBalanceRequestBody" (\obj -> (GHC.Base.pure PostCustomersCustomerCashBalanceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "settings"))

-- | Create a new 'PostCustomersCustomerCashBalanceRequestBody' with all required fields.
mkPostCustomersCustomerCashBalanceRequestBody :: PostCustomersCustomerCashBalanceRequestBody
mkPostCustomersCustomerCashBalanceRequestBody =
  PostCustomersCustomerCashBalanceRequestBody
    { postCustomersCustomerCashBalanceRequestBodyExpand = GHC.Maybe.Nothing,
      postCustomersCustomerCashBalanceRequestBodySettings = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/cash_balance.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.settings@ in the specification.
data PostCustomersCustomerCashBalanceRequestBodySettings' = PostCustomersCustomerCashBalanceRequestBodySettings'
  { -- | reconciliation_mode
    postCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode :: (GHC.Maybe.Maybe PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerCashBalanceRequestBodySettings' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reconciliation_mode" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reconciliation_mode" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCashBalanceRequestBodySettings' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCashBalanceRequestBodySettings'" (\obj -> GHC.Base.pure PostCustomersCustomerCashBalanceRequestBodySettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reconciliation_mode"))

-- | Create a new 'PostCustomersCustomerCashBalanceRequestBodySettings'' with all required fields.
mkPostCustomersCustomerCashBalanceRequestBodySettings' :: PostCustomersCustomerCashBalanceRequestBodySettings'
mkPostCustomersCustomerCashBalanceRequestBodySettings' = PostCustomersCustomerCashBalanceRequestBodySettings' {postCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @paths.\/v1\/customers\/{customer}\/cash_balance.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.settings.properties.reconciliation_mode@ in the specification.
data PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"automatic"@
    PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode'EnumAutomatic
  | -- | Represents the JSON value @"manual"@
    PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode'EnumManual
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode' where
  toJSON (PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode'Other val) = val
  toJSON (PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode'EnumAutomatic) = "automatic"
  toJSON (PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode'EnumManual) = "manual"

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "automatic" -> PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode'EnumAutomatic
          | val GHC.Classes.== "manual" -> PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode'EnumManual
          | GHC.Base.otherwise -> PostCustomersCustomerCashBalanceRequestBodySettings'ReconciliationMode'Other val
      )

-- | Represents a response of the operation 'postCustomersCustomerCashBalance'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerCashBalanceResponseError' is used.
data PostCustomersCustomerCashBalanceResponse
  = -- | Means either no matching case available or a parse error
    PostCustomersCustomerCashBalanceResponseError GHC.Base.String
  | -- | Successful response.
    PostCustomersCustomerCashBalanceResponse200 CashBalance
  | -- | Error response.
    PostCustomersCustomerCashBalanceResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
