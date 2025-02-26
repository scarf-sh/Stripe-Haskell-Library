-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postAccountsAccountExternalAccountsId
module StripeAPI.Operations.PostAccountsAccountExternalAccountsId where

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

-- | > POST /v1/accounts/{account}/external_accounts/{id}
-- 
-- \<p>Updates the metadata, account holder name, account holder type of a bank account belonging to a \<a href=\"\/docs\/connect\/custom-accounts\">Custom account\<\/a>, and optionally sets it as the default for its currency. Other bank account details are not editable by design.\<\/p>
-- 
-- \<p>You can re-enable a disabled bank account by performing an update call without providing any arguments or changes.\<\/p>
postAccountsAccountExternalAccountsId :: forall m . StripeAPI.Common.MonadHTTP m => PostAccountsAccountExternalAccountsIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> GHC.Maybe.Maybe PostAccountsAccountExternalAccountsIdRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostAccountsAccountExternalAccountsIdResponse) -- ^ Monadic computation which returns the result of the operation
postAccountsAccountExternalAccountsId parameters
                                      body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountExternalAccountsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountExternalAccountsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ExternalAccount)
                                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountExternalAccountsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/accounts/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (postAccountsAccountExternalAccountsIdParametersPathAccount parameters))) GHC.Base.<> ("/external_accounts/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (postAccountsAccountExternalAccountsIdParametersPathId parameters))) GHC.Base.<> "")))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/external_accounts\/{id}.POST.parameters@ in the specification.
-- 
-- 
data PostAccountsAccountExternalAccountsIdParameters = PostAccountsAccountExternalAccountsIdParameters {
  -- | pathAccount: Represents the parameter named \'account\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountExternalAccountsIdParametersPathAccount :: Data.Text.Internal.Text
  -- | pathId: Represents the parameter named \'id\'
  , postAccountsAccountExternalAccountsIdParametersPathId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountExternalAccountsIdParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAccount" Data.Aeson.Types.ToJSON..= postAccountsAccountExternalAccountsIdParametersPathAccount obj] : ["pathId" Data.Aeson.Types.ToJSON..= postAccountsAccountExternalAccountsIdParametersPathId obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAccount" Data.Aeson.Types.ToJSON..= postAccountsAccountExternalAccountsIdParametersPathAccount obj] : ["pathId" Data.Aeson.Types.ToJSON..= postAccountsAccountExternalAccountsIdParametersPathId obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsIdParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountExternalAccountsIdParameters" (\obj -> (GHC.Base.pure PostAccountsAccountExternalAccountsIdParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAccount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId"))}
-- | Create a new 'PostAccountsAccountExternalAccountsIdParameters' with all required fields.
mkPostAccountsAccountExternalAccountsIdParameters :: Data.Text.Internal.Text -- ^ 'postAccountsAccountExternalAccountsIdParametersPathAccount'
  -> Data.Text.Internal.Text -- ^ 'postAccountsAccountExternalAccountsIdParametersPathId'
  -> PostAccountsAccountExternalAccountsIdParameters
mkPostAccountsAccountExternalAccountsIdParameters postAccountsAccountExternalAccountsIdParametersPathAccount postAccountsAccountExternalAccountsIdParametersPathId = PostAccountsAccountExternalAccountsIdParameters{postAccountsAccountExternalAccountsIdParametersPathAccount = postAccountsAccountExternalAccountsIdParametersPathAccount,
                                                                                                                                                                                                                     postAccountsAccountExternalAccountsIdParametersPathId = postAccountsAccountExternalAccountsIdParametersPathId}
-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/external_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostAccountsAccountExternalAccountsIdRequestBody = PostAccountsAccountExternalAccountsIdRequestBody {
  -- | account_holder_name: The name of the person or business that owns the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountExternalAccountsIdRequestBodyAccountHolderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | account_holder_type: The type of entity that holds the account. This can be either \`individual\` or \`company\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsIdRequestBodyAccountHolderType :: (GHC.Maybe.Maybe PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType')
  -- | account_type: The bank account type. This can only be \`checking\` or \`savings\` in most countries. In Japan, this can only be \`futsu\` or \`toza\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsIdRequestBodyAccountType :: (GHC.Maybe.Maybe PostAccountsAccountExternalAccountsIdRequestBodyAccountType')
  -- | address_city: City\/District\/Suburb\/Town\/Village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsIdRequestBodyAddressCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_country: Billing address country, if provided when creating card.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsIdRequestBodyAddressCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_line1: Address line 1 (Street address\/PO Box\/Company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsIdRequestBodyAddressLine1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_line2: Address line 2 (Apartment\/Suite\/Unit\/Building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsIdRequestBodyAddressLine2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_state: State\/County\/Province\/Region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsIdRequestBodyAddressState :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_zip: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsIdRequestBodyAddressZip :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | default_for_currency: When set to true, this becomes the default external account for its currency.
  , postAccountsAccountExternalAccountsIdRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | documents: Documents that may be submitted to satisfy various informational requests.
  , postAccountsAccountExternalAccountsIdRequestBodyDocuments :: (GHC.Maybe.Maybe PostAccountsAccountExternalAccountsIdRequestBodyDocuments')
  -- | exp_month: Two digit number representing the card’s expiration month.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsIdRequestBodyExpMonth :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | exp_year: Four digit number representing the card’s expiration year.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsIdRequestBodyExpYear :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountsAccountExternalAccountsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postAccountsAccountExternalAccountsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsAccountExternalAccountsIdRequestBodyMetadata'Variants)
  -- | name: Cardholder name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsIdRequestBodyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountExternalAccountsIdRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_city" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAddressCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_country" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAddressCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line1" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAddressLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line2" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAddressLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_state" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAddressState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_zip" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAddressZip obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for_currency" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyDefaultForCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("documents" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyDocuments obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyExpYear obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyName obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_city" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAddressCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_country" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAddressCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line1" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAddressLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line2" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAddressLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_state" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAddressState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_zip" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyAddressZip obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for_currency" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyDefaultForCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("documents" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyDocuments obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyExpYear obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyName obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsIdRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountExternalAccountsIdRequestBody" (\obj -> (((((((((((((((GHC.Base.pure PostAccountsAccountExternalAccountsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "documents")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name"))}
-- | Create a new 'PostAccountsAccountExternalAccountsIdRequestBody' with all required fields.
mkPostAccountsAccountExternalAccountsIdRequestBody :: PostAccountsAccountExternalAccountsIdRequestBody
mkPostAccountsAccountExternalAccountsIdRequestBody = PostAccountsAccountExternalAccountsIdRequestBody{postAccountsAccountExternalAccountsIdRequestBodyAccountHolderName = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyAccountHolderType = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyAccountType = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyAddressCity = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyAddressCountry = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyAddressLine1 = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyAddressLine2 = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyAddressState = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyAddressZip = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyDefaultForCurrency = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyDocuments = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyExpMonth = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyExpYear = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyMetadata = GHC.Maybe.Nothing,
                                                                                                      postAccountsAccountExternalAccountsIdRequestBodyName = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/accounts\/{account}\/external_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.account_holder_type@ in the specification.
-- 
-- The type of entity that holds the account. This can be either \`individual\` or \`company\`.
data PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType' =
   PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'EnumEmptyString -- ^ Represents the JSON value @""@
  | PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'EnumCompany -- ^ Represents the JSON value @"company"@
  | PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'EnumIndividual -- ^ Represents the JSON value @"individual"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'
    where {toJSON (PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'Other val) = val;
           toJSON (PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'EnumEmptyString) = "";
           toJSON (PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'EnumCompany) = "company";
           toJSON (PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'EnumIndividual) = "individual"}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "" -> PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'EnumEmptyString
                                             | val GHC.Classes.== "company" -> PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'EnumCompany
                                             | val GHC.Classes.== "individual" -> PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'EnumIndividual
                                             | GHC.Base.otherwise -> PostAccountsAccountExternalAccountsIdRequestBodyAccountHolderType'Other val)}
-- | Defines the enum schema located at @paths.\/v1\/accounts\/{account}\/external_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.account_type@ in the specification.
-- 
-- The bank account type. This can only be \`checking\` or \`savings\` in most countries. In Japan, this can only be \`futsu\` or \`toza\`.
data PostAccountsAccountExternalAccountsIdRequestBodyAccountType' =
   PostAccountsAccountExternalAccountsIdRequestBodyAccountType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostAccountsAccountExternalAccountsIdRequestBodyAccountType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostAccountsAccountExternalAccountsIdRequestBodyAccountType'EnumChecking -- ^ Represents the JSON value @"checking"@
  | PostAccountsAccountExternalAccountsIdRequestBodyAccountType'EnumFutsu -- ^ Represents the JSON value @"futsu"@
  | PostAccountsAccountExternalAccountsIdRequestBodyAccountType'EnumSavings -- ^ Represents the JSON value @"savings"@
  | PostAccountsAccountExternalAccountsIdRequestBodyAccountType'EnumToza -- ^ Represents the JSON value @"toza"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountExternalAccountsIdRequestBodyAccountType'
    where {toJSON (PostAccountsAccountExternalAccountsIdRequestBodyAccountType'Other val) = val;
           toJSON (PostAccountsAccountExternalAccountsIdRequestBodyAccountType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PostAccountsAccountExternalAccountsIdRequestBodyAccountType'EnumChecking) = "checking";
           toJSON (PostAccountsAccountExternalAccountsIdRequestBodyAccountType'EnumFutsu) = "futsu";
           toJSON (PostAccountsAccountExternalAccountsIdRequestBodyAccountType'EnumSavings) = "savings";
           toJSON (PostAccountsAccountExternalAccountsIdRequestBodyAccountType'EnumToza) = "toza"}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsIdRequestBodyAccountType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "checking" -> PostAccountsAccountExternalAccountsIdRequestBodyAccountType'EnumChecking
                                             | val GHC.Classes.== "futsu" -> PostAccountsAccountExternalAccountsIdRequestBodyAccountType'EnumFutsu
                                             | val GHC.Classes.== "savings" -> PostAccountsAccountExternalAccountsIdRequestBodyAccountType'EnumSavings
                                             | val GHC.Classes.== "toza" -> PostAccountsAccountExternalAccountsIdRequestBodyAccountType'EnumToza
                                             | GHC.Base.otherwise -> PostAccountsAccountExternalAccountsIdRequestBodyAccountType'Other val)}
-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/external_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.documents@ in the specification.
-- 
-- Documents that may be submitted to satisfy various informational requests.
data PostAccountsAccountExternalAccountsIdRequestBodyDocuments' = PostAccountsAccountExternalAccountsIdRequestBodyDocuments' {
  -- | bank_account_ownership_verification
  postAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification :: (GHC.Maybe.Maybe PostAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountExternalAccountsIdRequestBodyDocuments'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_account_ownership_verification" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_account_ownership_verification" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsIdRequestBodyDocuments'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountExternalAccountsIdRequestBodyDocuments'" (\obj -> GHC.Base.pure PostAccountsAccountExternalAccountsIdRequestBodyDocuments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_account_ownership_verification"))}
-- | Create a new 'PostAccountsAccountExternalAccountsIdRequestBodyDocuments'' with all required fields.
mkPostAccountsAccountExternalAccountsIdRequestBodyDocuments' :: PostAccountsAccountExternalAccountsIdRequestBodyDocuments'
mkPostAccountsAccountExternalAccountsIdRequestBodyDocuments' = PostAccountsAccountExternalAccountsIdRequestBodyDocuments'{postAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/external_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.documents.properties.bank_account_ownership_verification@ in the specification.
-- 
-- 
data PostAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification' = PostAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification' {
  -- | files
  postAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification'Files :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("files" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification'Files obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("files" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification'Files obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification'" (\obj -> GHC.Base.pure PostAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "files"))}
-- | Create a new 'PostAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification'' with all required fields.
mkPostAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification' :: PostAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification'
mkPostAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification' = PostAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification'{postAccountsAccountExternalAccountsIdRequestBodyDocuments'BankAccountOwnershipVerification'Files = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/accounts\/{account}\/external_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
-- 
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostAccountsAccountExternalAccountsIdRequestBodyMetadata'Variants =
   PostAccountsAccountExternalAccountsIdRequestBodyMetadata'EmptyString -- ^ Represents the JSON value @""@
  | PostAccountsAccountExternalAccountsIdRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountExternalAccountsIdRequestBodyMetadata'Variants
    where {toJSON (PostAccountsAccountExternalAccountsIdRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (PostAccountsAccountExternalAccountsIdRequestBodyMetadata'EmptyString) = ""}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsIdRequestBodyMetadata'Variants
    where {parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostAccountsAccountExternalAccountsIdRequestBodyMetadata'EmptyString
                              | GHC.Base.otherwise -> case (PostAccountsAccountExternalAccountsIdRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                      {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                                                       Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Represents a response of the operation 'postAccountsAccountExternalAccountsId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountsAccountExternalAccountsIdResponseError' is used.
data PostAccountsAccountExternalAccountsIdResponse =
   PostAccountsAccountExternalAccountsIdResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostAccountsAccountExternalAccountsIdResponse200 ExternalAccount -- ^ Successful response.
  | PostAccountsAccountExternalAccountsIdResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
