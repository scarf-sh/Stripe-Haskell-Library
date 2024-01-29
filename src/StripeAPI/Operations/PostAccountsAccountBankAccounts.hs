{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postAccountsAccountBankAccounts
module StripeAPI.Operations.PostAccountsAccountBankAccounts where

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

-- | > POST /v1/accounts/{account}/bank_accounts
--
-- \<p>Create an external account for a given account.\<\/p>
postAccountsAccountBankAccounts ::
  forall m.
  (StripeAPI.Common.MonadHTTP m) =>
  -- | account | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostAccountsAccountBankAccountsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostAccountsAccountBankAccountsResponse)
postAccountsAccountBankAccounts
  account
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostAccountsAccountBankAccountsResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostAccountsAccountBankAccountsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ExternalAccount
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostAccountsAccountBankAccountsResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/bank_accounts"))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/bank_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostAccountsAccountBankAccountsRequestBody = PostAccountsAccountBankAccountsRequestBody
  { -- | bank_account: Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/js), or a dictionary containing a user\'s bank account details.
    postAccountsAccountBankAccountsRequestBodyBankAccount :: (GHC.Maybe.Maybe PostAccountsAccountBankAccountsRequestBodyBankAccount'Variants),
    -- | default_for_currency: When set to true, or if this is the first external account added in this currency, this account becomes the default external account for its currency.
    postAccountsAccountBankAccountsRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | expand: Specifies which fields in the response should be expanded.
    postAccountsAccountBankAccountsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | external_account: Please refer to full [documentation](https:\/\/stripe.com\/docs\/api) instead.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountsAccountBankAccountsRequestBodyExternalAccount :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postAccountsAccountBankAccountsRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountBankAccountsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_account" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for_currency" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyDefaultForCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_account" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyExternalAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyMetadata obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_account" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for_currency" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyDefaultForCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_account" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyExternalAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyMetadata obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountBankAccountsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountBankAccountsRequestBody" (\obj -> ((((GHC.Base.pure PostAccountsAccountBankAccountsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "external_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))

-- | Create a new 'PostAccountsAccountBankAccountsRequestBody' with all required fields.
mkPostAccountsAccountBankAccountsRequestBody :: PostAccountsAccountBankAccountsRequestBody
mkPostAccountsAccountBankAccountsRequestBody =
  PostAccountsAccountBankAccountsRequestBody
    { postAccountsAccountBankAccountsRequestBodyBankAccount = GHC.Maybe.Nothing,
      postAccountsAccountBankAccountsRequestBodyDefaultForCurrency = GHC.Maybe.Nothing,
      postAccountsAccountBankAccountsRequestBodyExpand = GHC.Maybe.Nothing,
      postAccountsAccountBankAccountsRequestBodyExternalAccount = GHC.Maybe.Nothing,
      postAccountsAccountBankAccountsRequestBodyMetadata = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/bank_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf@ in the specification.
data PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1 = PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1
  { -- | account_holder_name
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | account_holder_type
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType :: (GHC.Maybe.Maybe PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType'),
    -- | account_number
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountNumber :: Data.Text.Internal.Text,
    -- | account_type
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType :: (GHC.Maybe.Maybe PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'),
    -- | country
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Country :: Data.Text.Internal.Text,
    -- | currency
    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Currency :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | object
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object :: (GHC.Maybe.Maybe PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object'),
    -- | routing_number
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1RoutingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType obj) : ["account_number" Data.Aeson.Types.ToJSON..= postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountNumber obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType obj) : ["country" Data.Aeson.Types.ToJSON..= postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Country obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Currency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1RoutingNumber obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType obj) : ["account_number" Data.Aeson.Types.ToJSON..= postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountNumber obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType obj) : ["country" Data.Aeson.Types.ToJSON..= postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Country obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Currency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1RoutingNumber obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1" (\obj -> (((((((GHC.Base.pure PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "routing_number"))

-- | Create a new 'PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1' with all required fields.
mkPostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1 ::
  -- | 'postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountNumber'
  Data.Text.Internal.Text ->
  -- | 'postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Country'
  Data.Text.Internal.Text ->
  PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1
mkPostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1 postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountNumber postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Country =
  PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1
    { postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderName = GHC.Maybe.Nothing,
      postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType = GHC.Maybe.Nothing,
      postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountNumber = postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountNumber,
      postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType = GHC.Maybe.Nothing,
      postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Country = postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Country,
      postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Currency = GHC.Maybe.Nothing,
      postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object = GHC.Maybe.Nothing,
      postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1RoutingNumber = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/accounts\/{account}\/bank_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf.properties.account_holder_type@ in the specification.
data PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"company"@
    PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumCompany
  | -- | Represents the JSON value @"individual"@
    PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumIndividual
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType' where
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Other val) = val
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumCompany) = "company"
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumIndividual) = "individual"

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "company" -> PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumCompany
          | val GHC.Classes.== "individual" -> PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumIndividual
          | GHC.Base.otherwise -> PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Other val
      )

-- | Defines the enum schema located at @paths.\/v1\/accounts\/{account}\/bank_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf.properties.account_type@ in the specification.
data PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"checking"@
    PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'EnumChecking
  | -- | Represents the JSON value @"futsu"@
    PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'EnumFutsu
  | -- | Represents the JSON value @"savings"@
    PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'EnumSavings
  | -- | Represents the JSON value @"toza"@
    PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'EnumToza
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType' where
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'Other val) = val
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'EnumChecking) = "checking"
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'EnumFutsu) = "futsu"
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'EnumSavings) = "savings"
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'EnumToza) = "toza"

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "checking" -> PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'EnumChecking
          | val GHC.Classes.== "futsu" -> PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'EnumFutsu
          | val GHC.Classes.== "savings" -> PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'EnumSavings
          | val GHC.Classes.== "toza" -> PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'EnumToza
          | GHC.Base.otherwise -> PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1AccountType'Other val
      )

-- | Defines the enum schema located at @paths.\/v1\/accounts\/{account}\/bank_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf.properties.object@ in the specification.
data PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"bank_account"@
    PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object'EnumBankAccount
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object' where
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object'Other val) = val
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object'EnumBankAccount) = "bank_account"

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "bank_account" -> PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object'EnumBankAccount
          | GHC.Base.otherwise -> PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1Object'Other val
      )

-- | Defines the oneOf schema located at @paths.\/v1\/accounts\/{account}\/bank_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf@ in the specification.
--
-- Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/js), or a dictionary containing a user\'s bank account details.
data PostAccountsAccountBankAccountsRequestBodyBankAccount'Variants
  = PostAccountsAccountBankAccountsRequestBodyBankAccount'PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1 PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1
  | PostAccountsAccountBankAccountsRequestBodyBankAccount'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'Variants where
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'Variants where
  parseJSON val = case (PostAccountsAccountBankAccountsRequestBodyBankAccount'PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostAccountsAccountBankAccountsRequestBodyBankAccount'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postAccountsAccountBankAccounts'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountsAccountBankAccountsResponseError' is used.
data PostAccountsAccountBankAccountsResponse
  = -- | Means either no matching case available or a parse error
    PostAccountsAccountBankAccountsResponseError GHC.Base.String
  | -- | Successful response.
    PostAccountsAccountBankAccountsResponse200 ExternalAccount
  | -- | Error response.
    PostAccountsAccountBankAccountsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
