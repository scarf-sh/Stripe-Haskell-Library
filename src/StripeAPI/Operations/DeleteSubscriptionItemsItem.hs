{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation deleteSubscriptionItemsItem
module StripeAPI.Operations.DeleteSubscriptionItemsItem where

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

-- | > DELETE /v1/subscription_items/{item}
--
-- \<p>Deletes an item from the subscription. Removing a subscription item from a subscription will not cancel the subscription.\<\/p>
deleteSubscriptionItemsItem ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | item | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe DeleteSubscriptionItemsItemRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteSubscriptionItemsItemResponse)
deleteSubscriptionItemsItem
  item
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either DeleteSubscriptionItemsItemResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSubscriptionItemsItemResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              DeletedSubscriptionItem
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSubscriptionItemsItemResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel item)) GHC.Base.++ ""))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/subscription_items\/{item}.DELETE.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data DeleteSubscriptionItemsItemRequestBody = DeleteSubscriptionItemsItemRequestBody
  { -- | clear_usage: Delete all usage for the given subscription item. Allowed only when the current plan\'s \`usage_type\` is \`metered\`.
    deleteSubscriptionItemsItemRequestBodyClearUsage :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | proration_behavior: Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. Valid values are \`create_prorations\`, \`none\`, or \`always_invoice\`.
    --
    -- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https:\/\/stripe.com\/docs\/subscriptions\/upgrading-downgrading\#immediate-payment). In order to always invoice immediately for prorations, pass \`always_invoice\`.
    --
    -- Prorations can be disabled by passing \`none\`.
    deleteSubscriptionItemsItemRequestBodyProrationBehavior :: (GHC.Maybe.Maybe DeleteSubscriptionItemsItemRequestBodyProrationBehavior'),
    -- | proration_date: If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https:\/\/stripe.com\/docs\/api\#retrieve_customer_invoice) endpoint.
    deleteSubscriptionItemsItemRequestBodyProrationDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteSubscriptionItemsItemRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("clear_usage" Data.Aeson.Types.ToJSON..= deleteSubscriptionItemsItemRequestBodyClearUsage obj : "proration_behavior" Data.Aeson.Types.ToJSON..= deleteSubscriptionItemsItemRequestBodyProrationBehavior obj : "proration_date" Data.Aeson.Types.ToJSON..= deleteSubscriptionItemsItemRequestBodyProrationDate obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("clear_usage" Data.Aeson.Types.ToJSON..= deleteSubscriptionItemsItemRequestBodyClearUsage obj) GHC.Base.<> (("proration_behavior" Data.Aeson.Types.ToJSON..= deleteSubscriptionItemsItemRequestBodyProrationBehavior obj) GHC.Base.<> ("proration_date" Data.Aeson.Types.ToJSON..= deleteSubscriptionItemsItemRequestBodyProrationDate obj)))

instance Data.Aeson.Types.FromJSON.FromJSON DeleteSubscriptionItemsItemRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteSubscriptionItemsItemRequestBody" (\obj -> ((GHC.Base.pure DeleteSubscriptionItemsItemRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "clear_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_date"))

-- | Create a new 'DeleteSubscriptionItemsItemRequestBody' with all required fields.
mkDeleteSubscriptionItemsItemRequestBody :: DeleteSubscriptionItemsItemRequestBody
mkDeleteSubscriptionItemsItemRequestBody =
  DeleteSubscriptionItemsItemRequestBody
    { deleteSubscriptionItemsItemRequestBodyClearUsage = GHC.Maybe.Nothing,
      deleteSubscriptionItemsItemRequestBodyProrationBehavior = GHC.Maybe.Nothing,
      deleteSubscriptionItemsItemRequestBodyProrationDate = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/subscription_items\/{item}.DELETE.requestBody.content.application\/x-www-form-urlencoded.schema.properties.proration_behavior@ in the specification.
--
-- Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. Valid values are \`create_prorations\`, \`none\`, or \`always_invoice\`.
--
-- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https:\/\/stripe.com\/docs\/subscriptions\/upgrading-downgrading\#immediate-payment). In order to always invoice immediately for prorations, pass \`always_invoice\`.
--
-- Prorations can be disabled by passing \`none\`.
data DeleteSubscriptionItemsItemRequestBodyProrationBehavior'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    DeleteSubscriptionItemsItemRequestBodyProrationBehavior'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    DeleteSubscriptionItemsItemRequestBodyProrationBehavior'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"always_invoice"@
    DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumAlwaysInvoice
  | -- | Represents the JSON value @"create_prorations"@
    DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumCreateProrations
  | -- | Represents the JSON value @"none"@
    DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumNone
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DeleteSubscriptionItemsItemRequestBodyProrationBehavior' where
  toJSON (DeleteSubscriptionItemsItemRequestBodyProrationBehavior'Other val) = val
  toJSON (DeleteSubscriptionItemsItemRequestBodyProrationBehavior'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumAlwaysInvoice) = "always_invoice"
  toJSON (DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumCreateProrations) = "create_prorations"
  toJSON (DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumNone) = "none"

instance Data.Aeson.Types.FromJSON.FromJSON DeleteSubscriptionItemsItemRequestBodyProrationBehavior' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "always_invoice" -> DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumAlwaysInvoice
            | val GHC.Classes.== "create_prorations" -> DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumCreateProrations
            | val GHC.Classes.== "none" -> DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumNone
            | GHC.Base.otherwise -> DeleteSubscriptionItemsItemRequestBodyProrationBehavior'Other val
      )

-- | Represents a response of the operation 'deleteSubscriptionItemsItem'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteSubscriptionItemsItemResponseError' is used.
data DeleteSubscriptionItemsItemResponse
  = -- | Means either no matching case available or a parse error
    DeleteSubscriptionItemsItemResponseError GHC.Base.String
  | -- | Successful response.
    DeleteSubscriptionItemsItemResponse200 DeletedSubscriptionItem
  | -- | Error response.
    DeleteSubscriptionItemsItemResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
