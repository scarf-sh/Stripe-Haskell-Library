-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscount
module StripeAPI.Operations.DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscount where

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

-- | > DELETE /v1/customers/{customer}/subscriptions/{subscription_exposed_id}/discount
-- 
-- \<p>Removes the currently applied discount on a customer.\<\/p>
deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscount :: forall m . StripeAPI.Common.MonadHTTP m => DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponse) -- ^ Monadic computation which returns the result of the operation
deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscount parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            DeletedDiscount)
                                                                                                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/v1/customers/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer parameters))) GHC.Base.<> ("/subscriptions/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId parameters))) GHC.Base.<> "/discount")))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/subscriptions\/{subscription_exposed_id}\/discount.DELETE.parameters@ in the specification.
-- 
-- 
data DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters = DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters {
  -- | pathCustomer: Represents the parameter named \'customer\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer :: Data.Text.Internal.Text
  -- | pathSubscription_exposed_id: Represents the parameter named \'subscription_exposed_id\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer obj] : ["pathSubscription_exposed_id" Data.Aeson.Types.ToJSON..= deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer obj] : ["pathSubscription_exposed_id" Data.Aeson.Types.ToJSON..= deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters" (\obj -> (GHC.Base.pure DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathSubscription_exposed_id"))}
-- | Create a new 'DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters' with all required fields.
mkDeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters :: Data.Text.Internal.Text -- ^ 'deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer'
  -> Data.Text.Internal.Text -- ^ 'deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId'
  -> DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters
mkDeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId = DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters{deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer = deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer,
                                                                                                                                                                                                                                                                                                                                                         deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId = deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId}
-- | Represents a response of the operation 'deleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscount'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponseError' is used.
data DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponse =
   DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponse200 DeletedDiscount -- ^ Successful response.
  | DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
