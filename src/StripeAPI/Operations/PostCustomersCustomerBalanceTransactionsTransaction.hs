-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postCustomersCustomerBalanceTransactionsTransaction
module StripeAPI.Operations.PostCustomersCustomerBalanceTransactionsTransaction where

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

-- | > POST /v1/customers/{customer}/balance_transactions/{transaction}
-- 
-- \<p>Most credit balance transaction fields are immutable, but you may update its \<code>description\<\/code> and \<code>metadata\<\/code>.\<\/p>
postCustomersCustomerBalanceTransactionsTransaction :: forall m . StripeAPI.Common.MonadHTTP m => PostCustomersCustomerBalanceTransactionsTransactionParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> GHC.Maybe.Maybe PostCustomersCustomerBalanceTransactionsTransactionRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostCustomersCustomerBalanceTransactionsTransactionResponse) -- ^ Monadic computation which returns the result of the operation
postCustomersCustomerBalanceTransactionsTransaction parameters
                                                    body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerBalanceTransactionsTransactionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBalanceTransactionsTransactionResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            CustomerBalanceTransaction)
                                                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBalanceTransactionsTransactionResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/customers/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (postCustomersCustomerBalanceTransactionsTransactionParametersPathCustomer parameters))) GHC.Base.<> ("/balance_transactions/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (postCustomersCustomerBalanceTransactionsTransactionParametersPathTransaction parameters))) GHC.Base.<> "")))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/balance_transactions\/{transaction}.POST.parameters@ in the specification.
-- 
-- 
data PostCustomersCustomerBalanceTransactionsTransactionParameters = PostCustomersCustomerBalanceTransactionsTransactionParameters {
  -- | pathCustomer: Represents the parameter named \'customer\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postCustomersCustomerBalanceTransactionsTransactionParametersPathCustomer :: Data.Text.Internal.Text
  -- | pathTransaction: Represents the parameter named \'transaction\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBalanceTransactionsTransactionParametersPathTransaction :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerBalanceTransactionsTransactionParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= postCustomersCustomerBalanceTransactionsTransactionParametersPathCustomer obj] : ["pathTransaction" Data.Aeson.Types.ToJSON..= postCustomersCustomerBalanceTransactionsTransactionParametersPathTransaction obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= postCustomersCustomerBalanceTransactionsTransactionParametersPathCustomer obj] : ["pathTransaction" Data.Aeson.Types.ToJSON..= postCustomersCustomerBalanceTransactionsTransactionParametersPathTransaction obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBalanceTransactionsTransactionParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBalanceTransactionsTransactionParameters" (\obj -> (GHC.Base.pure PostCustomersCustomerBalanceTransactionsTransactionParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathTransaction"))}
-- | Create a new 'PostCustomersCustomerBalanceTransactionsTransactionParameters' with all required fields.
mkPostCustomersCustomerBalanceTransactionsTransactionParameters :: Data.Text.Internal.Text -- ^ 'postCustomersCustomerBalanceTransactionsTransactionParametersPathCustomer'
  -> Data.Text.Internal.Text -- ^ 'postCustomersCustomerBalanceTransactionsTransactionParametersPathTransaction'
  -> PostCustomersCustomerBalanceTransactionsTransactionParameters
mkPostCustomersCustomerBalanceTransactionsTransactionParameters postCustomersCustomerBalanceTransactionsTransactionParametersPathCustomer postCustomersCustomerBalanceTransactionsTransactionParametersPathTransaction = PostCustomersCustomerBalanceTransactionsTransactionParameters{postCustomersCustomerBalanceTransactionsTransactionParametersPathCustomer = postCustomersCustomerBalanceTransactionsTransactionParametersPathCustomer,
                                                                                                                                                                                                                                                                                       postCustomersCustomerBalanceTransactionsTransactionParametersPathTransaction = postCustomersCustomerBalanceTransactionsTransactionParametersPathTransaction}
-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/balance_transactions\/{transaction}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostCustomersCustomerBalanceTransactionsTransactionRequestBody = PostCustomersCustomerBalanceTransactionsTransactionRequestBody {
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 350
  postCustomersCustomerBalanceTransactionsTransactionRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postCustomersCustomerBalanceTransactionsTransactionRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerBalanceTransactionsTransactionRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBalanceTransactionsTransactionRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBalanceTransactionsTransactionRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBalanceTransactionsTransactionRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBalanceTransactionsTransactionRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBalanceTransactionsTransactionRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBalanceTransactionsTransactionRequestBody" (\obj -> ((GHC.Base.pure PostCustomersCustomerBalanceTransactionsTransactionRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))}
-- | Create a new 'PostCustomersCustomerBalanceTransactionsTransactionRequestBody' with all required fields.
mkPostCustomersCustomerBalanceTransactionsTransactionRequestBody :: PostCustomersCustomerBalanceTransactionsTransactionRequestBody
mkPostCustomersCustomerBalanceTransactionsTransactionRequestBody = PostCustomersCustomerBalanceTransactionsTransactionRequestBody{postCustomersCustomerBalanceTransactionsTransactionRequestBodyDescription = GHC.Maybe.Nothing,
                                                                                                                                  postCustomersCustomerBalanceTransactionsTransactionRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                                                  postCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/customers\/{customer}\/balance_transactions\/{transaction}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
-- 
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata'Variants =
   PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata'EmptyString -- ^ Represents the JSON value @""@
  | PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata'Variants
    where {toJSON (PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata'EmptyString) = ""}
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata'Variants
    where {parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata'EmptyString
                              | GHC.Base.otherwise -> case (PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                      {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                                                       Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Represents a response of the operation 'postCustomersCustomerBalanceTransactionsTransaction'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerBalanceTransactionsTransactionResponseError' is used.
data PostCustomersCustomerBalanceTransactionsTransactionResponse =
   PostCustomersCustomerBalanceTransactionsTransactionResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostCustomersCustomerBalanceTransactionsTransactionResponse200 CustomerBalanceTransaction -- ^ Successful response.
  | PostCustomersCustomerBalanceTransactionsTransactionResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
