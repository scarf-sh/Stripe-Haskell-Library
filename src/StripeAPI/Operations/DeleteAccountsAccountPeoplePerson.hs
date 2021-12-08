{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation deleteAccountsAccountPeoplePerson
module StripeAPI.Operations.DeleteAccountsAccountPeoplePerson where

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

-- | > DELETE /v1/accounts/{account}/people/{person}
--
-- \<p>Deletes an existing person’s relationship to the account’s legal entity. Any person with a relationship for an account can be deleted through the API, except if the person is the \<code>account_opener\<\/code>. If your integration is using the \<code>executive\<\/code> parameter, you cannot delete the only verified \<code>executive\<\/code> on file.\<\/p>
deleteAccountsAccountPeoplePerson ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteAccountsAccountPeoplePersonParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteAccountsAccountPeoplePersonResponse)
deleteAccountsAccountPeoplePerson parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either DeleteAccountsAccountPeoplePersonResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteAccountsAccountPeoplePersonResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            DeletedPerson
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteAccountsAccountPeoplePersonResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (deleteAccountsAccountPeoplePersonParametersPathAccount parameters))) GHC.Base.++ ("/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (deleteAccountsAccountPeoplePersonParametersPathPerson parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)

-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/people\/{person}.DELETE.parameters@ in the specification.
data DeleteAccountsAccountPeoplePersonParameters = DeleteAccountsAccountPeoplePersonParameters
  { -- | pathAccount: Represents the parameter named \'account\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deleteAccountsAccountPeoplePersonParametersPathAccount :: Data.Text.Internal.Text,
    -- | pathPerson: Represents the parameter named \'person\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deleteAccountsAccountPeoplePersonParametersPathPerson :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteAccountsAccountPeoplePersonParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathAccount" Data.Aeson.Types.ToJSON..= deleteAccountsAccountPeoplePersonParametersPathAccount obj : "pathPerson" Data.Aeson.Types.ToJSON..= deleteAccountsAccountPeoplePersonParametersPathPerson obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathAccount" Data.Aeson.Types.ToJSON..= deleteAccountsAccountPeoplePersonParametersPathAccount obj) GHC.Base.<> ("pathPerson" Data.Aeson.Types.ToJSON..= deleteAccountsAccountPeoplePersonParametersPathPerson obj))

instance Data.Aeson.Types.FromJSON.FromJSON DeleteAccountsAccountPeoplePersonParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteAccountsAccountPeoplePersonParameters" (\obj -> (GHC.Base.pure DeleteAccountsAccountPeoplePersonParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAccount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathPerson"))

-- | Create a new 'DeleteAccountsAccountPeoplePersonParameters' with all required fields.
mkDeleteAccountsAccountPeoplePersonParameters ::
  -- | 'deleteAccountsAccountPeoplePersonParametersPathAccount'
  Data.Text.Internal.Text ->
  -- | 'deleteAccountsAccountPeoplePersonParametersPathPerson'
  Data.Text.Internal.Text ->
  DeleteAccountsAccountPeoplePersonParameters
mkDeleteAccountsAccountPeoplePersonParameters deleteAccountsAccountPeoplePersonParametersPathAccount deleteAccountsAccountPeoplePersonParametersPathPerson =
  DeleteAccountsAccountPeoplePersonParameters
    { deleteAccountsAccountPeoplePersonParametersPathAccount = deleteAccountsAccountPeoplePersonParametersPathAccount,
      deleteAccountsAccountPeoplePersonParametersPathPerson = deleteAccountsAccountPeoplePersonParametersPathPerson
    }

-- | Represents a response of the operation 'deleteAccountsAccountPeoplePerson'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteAccountsAccountPeoplePersonResponseError' is used.
data DeleteAccountsAccountPeoplePersonResponse
  = -- | Means either no matching case available or a parse error
    DeleteAccountsAccountPeoplePersonResponseError GHC.Base.String
  | -- | Successful response.
    DeleteAccountsAccountPeoplePersonResponse200 DeletedPerson
  | -- | Error response.
    DeleteAccountsAccountPeoplePersonResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
