{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getFinancialConnectionsAccounts
module StripeAPI.Operations.GetFinancialConnectionsAccounts where

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

-- | > GET /v1/financial_connections/accounts
--
-- \<p>Returns a list of Financial Connections \<code>Account\<\/code> objects.\<\/p>
getFinancialConnectionsAccounts ::
  forall m.
  (StripeAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetFinancialConnectionsAccountsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetFinancialConnectionsAccountsResponse)
getFinancialConnectionsAccounts parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetFinancialConnectionsAccountsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetFinancialConnectionsAccountsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetFinancialConnectionsAccountsResponseBody200
                                                      )
                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetFinancialConnectionsAccountsResponseDefault
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
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/v1/financial_connections/accounts")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "account_holder") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFinancialConnectionsAccountsParametersQueryAccountHolder parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFinancialConnectionsAccountsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFinancialConnectionsAccountsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFinancialConnectionsAccountsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "session") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFinancialConnectionsAccountsParametersQuerySession parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFinancialConnectionsAccountsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/financial_connections\/accounts.GET.parameters@ in the specification.
data GetFinancialConnectionsAccountsParameters = GetFinancialConnectionsAccountsParameters
  { -- | queryAccount_holder: Represents the parameter named \'account_holder\'
    --
    -- If present, only return accounts that belong to the specified account holder. \`account_holder[customer]\` and \`account_holder[account]\` are mutually exclusive.
    getFinancialConnectionsAccountsParametersQueryAccountHolder :: (GHC.Maybe.Maybe GetFinancialConnectionsAccountsParametersQueryAccountHolder'),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getFinancialConnectionsAccountsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getFinancialConnectionsAccountsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getFinancialConnectionsAccountsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | querySession: Represents the parameter named \'session\'
    --
    -- If present, only return accounts that were collected as part of the given session.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getFinancialConnectionsAccountsParametersQuerySession :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getFinancialConnectionsAccountsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetFinancialConnectionsAccountsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAccount_holder" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryAccountHolder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySession" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQuerySession obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryStartingAfter obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAccount_holder" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryAccountHolder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySession" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQuerySession obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryStartingAfter obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetFinancialConnectionsAccountsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFinancialConnectionsAccountsParameters" (\obj -> (((((GHC.Base.pure GetFinancialConnectionsAccountsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAccount_holder")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySession")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))

-- | Create a new 'GetFinancialConnectionsAccountsParameters' with all required fields.
mkGetFinancialConnectionsAccountsParameters :: GetFinancialConnectionsAccountsParameters
mkGetFinancialConnectionsAccountsParameters =
  GetFinancialConnectionsAccountsParameters
    { getFinancialConnectionsAccountsParametersQueryAccountHolder = GHC.Maybe.Nothing,
      getFinancialConnectionsAccountsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getFinancialConnectionsAccountsParametersQueryExpand = GHC.Maybe.Nothing,
      getFinancialConnectionsAccountsParametersQueryLimit = GHC.Maybe.Nothing,
      getFinancialConnectionsAccountsParametersQuerySession = GHC.Maybe.Nothing,
      getFinancialConnectionsAccountsParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/financial_connections\/accounts.GET.parameters.properties.queryAccount_holder@ in the specification.
--
-- Represents the parameter named \'account_holder\'
--
-- If present, only return accounts that belong to the specified account holder. \`account_holder[customer]\` and \`account_holder[account]\` are mutually exclusive.
data GetFinancialConnectionsAccountsParametersQueryAccountHolder' = GetFinancialConnectionsAccountsParametersQueryAccountHolder'
  { -- | account
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getFinancialConnectionsAccountsParametersQueryAccountHolder'Account :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | customer
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getFinancialConnectionsAccountsParametersQueryAccountHolder'Customer :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetFinancialConnectionsAccountsParametersQueryAccountHolder' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryAccountHolder'Account obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryAccountHolder'Customer obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryAccountHolder'Account obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsParametersQueryAccountHolder'Customer obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetFinancialConnectionsAccountsParametersQueryAccountHolder' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFinancialConnectionsAccountsParametersQueryAccountHolder'" (\obj -> (GHC.Base.pure GetFinancialConnectionsAccountsParametersQueryAccountHolder' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer"))

-- | Create a new 'GetFinancialConnectionsAccountsParametersQueryAccountHolder'' with all required fields.
mkGetFinancialConnectionsAccountsParametersQueryAccountHolder' :: GetFinancialConnectionsAccountsParametersQueryAccountHolder'
mkGetFinancialConnectionsAccountsParametersQueryAccountHolder' =
  GetFinancialConnectionsAccountsParametersQueryAccountHolder'
    { getFinancialConnectionsAccountsParametersQueryAccountHolder'Account = GHC.Maybe.Nothing,
      getFinancialConnectionsAccountsParametersQueryAccountHolder'Customer = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getFinancialConnectionsAccounts'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetFinancialConnectionsAccountsResponseError' is used.
data GetFinancialConnectionsAccountsResponse
  = -- | Means either no matching case available or a parse error
    GetFinancialConnectionsAccountsResponseError GHC.Base.String
  | -- | Successful response.
    GetFinancialConnectionsAccountsResponse200 GetFinancialConnectionsAccountsResponseBody200
  | -- | Error response.
    GetFinancialConnectionsAccountsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/financial_connections\/accounts.GET.responses.200.content.application\/json.schema@ in the specification.
data GetFinancialConnectionsAccountsResponseBody200 = GetFinancialConnectionsAccountsResponseBody200
  { -- | data: Details about each object.
    getFinancialConnectionsAccountsResponseBody200Data :: ([FinancialConnections'account]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getFinancialConnectionsAccountsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/financial_connections\/accounts\'
    getFinancialConnectionsAccountsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetFinancialConnectionsAccountsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetFinancialConnectionsAccountsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFinancialConnectionsAccountsResponseBody200" (\obj -> ((GHC.Base.pure GetFinancialConnectionsAccountsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetFinancialConnectionsAccountsResponseBody200' with all required fields.
mkGetFinancialConnectionsAccountsResponseBody200 ::
  -- | 'getFinancialConnectionsAccountsResponseBody200Data'
  [FinancialConnections'account] ->
  -- | 'getFinancialConnectionsAccountsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getFinancialConnectionsAccountsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetFinancialConnectionsAccountsResponseBody200
mkGetFinancialConnectionsAccountsResponseBody200 getFinancialConnectionsAccountsResponseBody200Data getFinancialConnectionsAccountsResponseBody200HasMore getFinancialConnectionsAccountsResponseBody200Url =
  GetFinancialConnectionsAccountsResponseBody200
    { getFinancialConnectionsAccountsResponseBody200Data = getFinancialConnectionsAccountsResponseBody200Data,
      getFinancialConnectionsAccountsResponseBody200HasMore = getFinancialConnectionsAccountsResponseBody200HasMore,
      getFinancialConnectionsAccountsResponseBody200Url = getFinancialConnectionsAccountsResponseBody200Url
    }
