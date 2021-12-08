{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postCustomersCustomerTaxIds
module StripeAPI.Operations.PostCustomersCustomerTaxIds where

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

-- | > POST /v1/customers/{customer}/tax_ids
--
-- \<p>Creates a new \<code>TaxID\<\/code> object for a customer.\<\/p>
postCustomersCustomerTaxIds ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | customer | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  PostCustomersCustomerTaxIdsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostCustomersCustomerTaxIdsResponse)
postCustomersCustomerTaxIds
  customer
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostCustomersCustomerTaxIdsResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostCustomersCustomerTaxIdsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              TaxId
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostCustomersCustomerTaxIdsResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/tax_ids"))) GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/tax_ids.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostCustomersCustomerTaxIdsRequestBody = PostCustomersCustomerTaxIdsRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postCustomersCustomerTaxIdsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | type: Type of the tax ID, one of \`ae_trn\`, \`au_abn\`, \`br_cnpj\`, \`br_cpf\`, \`ca_bn\`, \`ca_gst_hst\`, \`ca_pst_bc\`, \`ca_pst_mb\`, \`ca_pst_sk\`, \`ca_qst\`, \`ch_vat\`, \`cl_tin\`, \`es_cif\`, \`eu_vat\`, \`gb_vat\`, \`hk_br\`, \`id_npwp\`, \`il_vat\`, \`in_gst\`, \`jp_cn\`, \`jp_rn\`, \`kr_brn\`, \`li_uid\`, \`mx_rfc\`, \`my_frp\`, \`my_itn\`, \`my_sst\`, \`no_vat\`, \`nz_gst\`, \`ru_inn\`, \`ru_kpp\`, \`sa_vat\`, \`sg_gst\`, \`sg_uen\`, \`th_vat\`, \`tw_vat\`, \`us_ein\`, or \`za_vat\`
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerTaxIdsRequestBodyType :: PostCustomersCustomerTaxIdsRequestBodyType',
    -- | value: Value of the tax ID.
    postCustomersCustomerTaxIdsRequestBodyValue :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerTaxIdsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("expand" Data.Aeson.Types.ToJSON..= postCustomersCustomerTaxIdsRequestBodyExpand obj : "type" Data.Aeson.Types.ToJSON..= postCustomersCustomerTaxIdsRequestBodyType obj : "value" Data.Aeson.Types.ToJSON..= postCustomersCustomerTaxIdsRequestBodyValue obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("expand" Data.Aeson.Types.ToJSON..= postCustomersCustomerTaxIdsRequestBodyExpand obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= postCustomersCustomerTaxIdsRequestBodyType obj) GHC.Base.<> ("value" Data.Aeson.Types.ToJSON..= postCustomersCustomerTaxIdsRequestBodyValue obj)))

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerTaxIdsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerTaxIdsRequestBody" (\obj -> ((GHC.Base.pure PostCustomersCustomerTaxIdsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))

-- | Create a new 'PostCustomersCustomerTaxIdsRequestBody' with all required fields.
mkPostCustomersCustomerTaxIdsRequestBody ::
  -- | 'postCustomersCustomerTaxIdsRequestBodyType'
  PostCustomersCustomerTaxIdsRequestBodyType' ->
  -- | 'postCustomersCustomerTaxIdsRequestBodyValue'
  Data.Text.Internal.Text ->
  PostCustomersCustomerTaxIdsRequestBody
mkPostCustomersCustomerTaxIdsRequestBody postCustomersCustomerTaxIdsRequestBodyType postCustomersCustomerTaxIdsRequestBodyValue =
  PostCustomersCustomerTaxIdsRequestBody
    { postCustomersCustomerTaxIdsRequestBodyExpand = GHC.Maybe.Nothing,
      postCustomersCustomerTaxIdsRequestBodyType = postCustomersCustomerTaxIdsRequestBodyType,
      postCustomersCustomerTaxIdsRequestBodyValue = postCustomersCustomerTaxIdsRequestBodyValue
    }

-- | Defines the enum schema located at @paths.\/v1\/customers\/{customer}\/tax_ids.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.type@ in the specification.
--
-- Type of the tax ID, one of \`ae_trn\`, \`au_abn\`, \`br_cnpj\`, \`br_cpf\`, \`ca_bn\`, \`ca_gst_hst\`, \`ca_pst_bc\`, \`ca_pst_mb\`, \`ca_pst_sk\`, \`ca_qst\`, \`ch_vat\`, \`cl_tin\`, \`es_cif\`, \`eu_vat\`, \`gb_vat\`, \`hk_br\`, \`id_npwp\`, \`il_vat\`, \`in_gst\`, \`jp_cn\`, \`jp_rn\`, \`kr_brn\`, \`li_uid\`, \`mx_rfc\`, \`my_frp\`, \`my_itn\`, \`my_sst\`, \`no_vat\`, \`nz_gst\`, \`ru_inn\`, \`ru_kpp\`, \`sa_vat\`, \`sg_gst\`, \`sg_uen\`, \`th_vat\`, \`tw_vat\`, \`us_ein\`, or \`za_vat\`
data PostCustomersCustomerTaxIdsRequestBodyType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostCustomersCustomerTaxIdsRequestBodyType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostCustomersCustomerTaxIdsRequestBodyType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"ae_trn"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumAeTrn
  | -- | Represents the JSON value @"au_abn"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumAuAbn
  | -- | Represents the JSON value @"br_cnpj"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumBrCnpj
  | -- | Represents the JSON value @"br_cpf"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumBrCpf
  | -- | Represents the JSON value @"ca_bn"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumCaBn
  | -- | Represents the JSON value @"ca_gst_hst"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumCaGstHst
  | -- | Represents the JSON value @"ca_pst_bc"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumCaPstBc
  | -- | Represents the JSON value @"ca_pst_mb"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumCaPstMb
  | -- | Represents the JSON value @"ca_pst_sk"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumCaPstSk
  | -- | Represents the JSON value @"ca_qst"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumCaQst
  | -- | Represents the JSON value @"ch_vat"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumChVat
  | -- | Represents the JSON value @"cl_tin"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumClTin
  | -- | Represents the JSON value @"es_cif"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumEsCif
  | -- | Represents the JSON value @"eu_vat"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumEuVat
  | -- | Represents the JSON value @"gb_vat"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumGbVat
  | -- | Represents the JSON value @"hk_br"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumHkBr
  | -- | Represents the JSON value @"id_npwp"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumIdNpwp
  | -- | Represents the JSON value @"il_vat"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumIlVat
  | -- | Represents the JSON value @"in_gst"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumInGst
  | -- | Represents the JSON value @"jp_cn"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumJpCn
  | -- | Represents the JSON value @"jp_rn"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumJpRn
  | -- | Represents the JSON value @"kr_brn"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumKrBrn
  | -- | Represents the JSON value @"li_uid"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumLiUid
  | -- | Represents the JSON value @"mx_rfc"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumMxRfc
  | -- | Represents the JSON value @"my_frp"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumMyFrp
  | -- | Represents the JSON value @"my_itn"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumMyItn
  | -- | Represents the JSON value @"my_sst"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumMySst
  | -- | Represents the JSON value @"no_vat"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumNoVat
  | -- | Represents the JSON value @"nz_gst"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumNzGst
  | -- | Represents the JSON value @"ru_inn"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumRuInn
  | -- | Represents the JSON value @"ru_kpp"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumRuKpp
  | -- | Represents the JSON value @"sa_vat"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumSaVat
  | -- | Represents the JSON value @"sg_gst"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumSgGst
  | -- | Represents the JSON value @"sg_uen"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumSgUen
  | -- | Represents the JSON value @"th_vat"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumThVat
  | -- | Represents the JSON value @"tw_vat"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumTwVat
  | -- | Represents the JSON value @"us_ein"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumUsEin
  | -- | Represents the JSON value @"za_vat"@
    PostCustomersCustomerTaxIdsRequestBodyType'EnumZaVat
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerTaxIdsRequestBodyType' where
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'Other val) = val
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumAeTrn) = "ae_trn"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumAuAbn) = "au_abn"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumBrCnpj) = "br_cnpj"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumBrCpf) = "br_cpf"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumCaBn) = "ca_bn"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumCaGstHst) = "ca_gst_hst"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumCaPstBc) = "ca_pst_bc"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumCaPstMb) = "ca_pst_mb"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumCaPstSk) = "ca_pst_sk"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumCaQst) = "ca_qst"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumChVat) = "ch_vat"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumClTin) = "cl_tin"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumEsCif) = "es_cif"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumEuVat) = "eu_vat"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumGbVat) = "gb_vat"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumHkBr) = "hk_br"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumIdNpwp) = "id_npwp"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumIlVat) = "il_vat"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumInGst) = "in_gst"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumJpCn) = "jp_cn"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumJpRn) = "jp_rn"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumKrBrn) = "kr_brn"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumLiUid) = "li_uid"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumMxRfc) = "mx_rfc"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumMyFrp) = "my_frp"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumMyItn) = "my_itn"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumMySst) = "my_sst"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumNoVat) = "no_vat"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumNzGst) = "nz_gst"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumRuInn) = "ru_inn"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumRuKpp) = "ru_kpp"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumSaVat) = "sa_vat"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumSgGst) = "sg_gst"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumSgUen) = "sg_uen"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumThVat) = "th_vat"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumTwVat) = "tw_vat"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumUsEin) = "us_ein"
  toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumZaVat) = "za_vat"

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerTaxIdsRequestBodyType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "ae_trn" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumAeTrn
            | val GHC.Classes.== "au_abn" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumAuAbn
            | val GHC.Classes.== "br_cnpj" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumBrCnpj
            | val GHC.Classes.== "br_cpf" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumBrCpf
            | val GHC.Classes.== "ca_bn" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumCaBn
            | val GHC.Classes.== "ca_gst_hst" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumCaGstHst
            | val GHC.Classes.== "ca_pst_bc" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumCaPstBc
            | val GHC.Classes.== "ca_pst_mb" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumCaPstMb
            | val GHC.Classes.== "ca_pst_sk" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumCaPstSk
            | val GHC.Classes.== "ca_qst" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumCaQst
            | val GHC.Classes.== "ch_vat" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumChVat
            | val GHC.Classes.== "cl_tin" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumClTin
            | val GHC.Classes.== "es_cif" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumEsCif
            | val GHC.Classes.== "eu_vat" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumEuVat
            | val GHC.Classes.== "gb_vat" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumGbVat
            | val GHC.Classes.== "hk_br" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumHkBr
            | val GHC.Classes.== "id_npwp" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumIdNpwp
            | val GHC.Classes.== "il_vat" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumIlVat
            | val GHC.Classes.== "in_gst" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumInGst
            | val GHC.Classes.== "jp_cn" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumJpCn
            | val GHC.Classes.== "jp_rn" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumJpRn
            | val GHC.Classes.== "kr_brn" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumKrBrn
            | val GHC.Classes.== "li_uid" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumLiUid
            | val GHC.Classes.== "mx_rfc" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumMxRfc
            | val GHC.Classes.== "my_frp" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumMyFrp
            | val GHC.Classes.== "my_itn" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumMyItn
            | val GHC.Classes.== "my_sst" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumMySst
            | val GHC.Classes.== "no_vat" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumNoVat
            | val GHC.Classes.== "nz_gst" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumNzGst
            | val GHC.Classes.== "ru_inn" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumRuInn
            | val GHC.Classes.== "ru_kpp" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumRuKpp
            | val GHC.Classes.== "sa_vat" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumSaVat
            | val GHC.Classes.== "sg_gst" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumSgGst
            | val GHC.Classes.== "sg_uen" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumSgUen
            | val GHC.Classes.== "th_vat" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumThVat
            | val GHC.Classes.== "tw_vat" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumTwVat
            | val GHC.Classes.== "us_ein" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumUsEin
            | val GHC.Classes.== "za_vat" -> PostCustomersCustomerTaxIdsRequestBodyType'EnumZaVat
            | GHC.Base.otherwise -> PostCustomersCustomerTaxIdsRequestBodyType'Other val
      )

-- | Represents a response of the operation 'postCustomersCustomerTaxIds'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerTaxIdsResponseError' is used.
data PostCustomersCustomerTaxIdsResponse
  = -- | Means either no matching case available or a parse error
    PostCustomersCustomerTaxIdsResponseError GHC.Base.String
  | -- | Successful response.
    PostCustomersCustomerTaxIdsResponse200 TaxId
  | -- | Error response.
    PostCustomersCustomerTaxIdsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
