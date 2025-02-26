-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SourceTypeKlarna
module StripeAPI.Types.SourceTypeKlarna where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias

-- | Defines the object schema located at @components.schemas.source_type_klarna@ in the specification.
-- 
-- 
data SourceTypeKlarna = SourceTypeKlarna {
  -- | background_image_url
  sourceTypeKlarnaBackgroundImageUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | client_token
  , sourceTypeKlarnaClientToken :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | first_name
  , sourceTypeKlarnaFirstName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last_name
  , sourceTypeKlarnaLastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | locale
  , sourceTypeKlarnaLocale :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | logo_url
  , sourceTypeKlarnaLogoUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | page_title
  , sourceTypeKlarnaPageTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | pay_later_asset_urls_descriptive
  , sourceTypeKlarnaPayLaterAssetUrlsDescriptive :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | pay_later_asset_urls_standard
  , sourceTypeKlarnaPayLaterAssetUrlsStandard :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | pay_later_name
  , sourceTypeKlarnaPayLaterName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | pay_later_redirect_url
  , sourceTypeKlarnaPayLaterRedirectUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | pay_now_asset_urls_descriptive
  , sourceTypeKlarnaPayNowAssetUrlsDescriptive :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | pay_now_asset_urls_standard
  , sourceTypeKlarnaPayNowAssetUrlsStandard :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | pay_now_name
  , sourceTypeKlarnaPayNowName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | pay_now_redirect_url
  , sourceTypeKlarnaPayNowRedirectUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | pay_over_time_asset_urls_descriptive
  , sourceTypeKlarnaPayOverTimeAssetUrlsDescriptive :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | pay_over_time_asset_urls_standard
  , sourceTypeKlarnaPayOverTimeAssetUrlsStandard :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | pay_over_time_name
  , sourceTypeKlarnaPayOverTimeName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | pay_over_time_redirect_url
  , sourceTypeKlarnaPayOverTimeRedirectUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | payment_method_categories
  , sourceTypeKlarnaPaymentMethodCategories :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | purchase_country
  , sourceTypeKlarnaPurchaseCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | purchase_type
  , sourceTypeKlarnaPurchaseType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | redirect_url
  , sourceTypeKlarnaRedirectUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shipping_delay
  , sourceTypeKlarnaShippingDelay :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | shipping_first_name
  , sourceTypeKlarnaShippingFirstName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shipping_last_name
  , sourceTypeKlarnaShippingLastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SourceTypeKlarna
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("background_image_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaBackgroundImageUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_token" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaClientToken obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaFirstName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaLastName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("locale" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaLocale obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("logo_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaLogoUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("page_title" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPageTitle obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_later_asset_urls_descriptive" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayLaterAssetUrlsDescriptive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_later_asset_urls_standard" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayLaterAssetUrlsStandard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_later_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayLaterName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_later_redirect_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayLaterRedirectUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_now_asset_urls_descriptive" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayNowAssetUrlsDescriptive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_now_asset_urls_standard" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayNowAssetUrlsStandard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_now_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayNowName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_now_redirect_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayNowRedirectUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_over_time_asset_urls_descriptive" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayOverTimeAssetUrlsDescriptive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_over_time_asset_urls_standard" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayOverTimeAssetUrlsStandard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_over_time_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayOverTimeName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_over_time_redirect_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayOverTimeRedirectUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method_categories" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPaymentMethodCategories obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("purchase_country" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPurchaseCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("purchase_type" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPurchaseType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("redirect_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaRedirectUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_delay" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaShippingDelay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_first_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaShippingFirstName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_last_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaShippingLastName obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("background_image_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaBackgroundImageUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_token" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaClientToken obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaFirstName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaLastName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("locale" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaLocale obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("logo_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaLogoUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("page_title" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPageTitle obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_later_asset_urls_descriptive" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayLaterAssetUrlsDescriptive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_later_asset_urls_standard" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayLaterAssetUrlsStandard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_later_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayLaterName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_later_redirect_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayLaterRedirectUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_now_asset_urls_descriptive" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayNowAssetUrlsDescriptive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_now_asset_urls_standard" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayNowAssetUrlsStandard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_now_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayNowName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_now_redirect_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayNowRedirectUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_over_time_asset_urls_descriptive" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayOverTimeAssetUrlsDescriptive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_over_time_asset_urls_standard" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayOverTimeAssetUrlsStandard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_over_time_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayOverTimeName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pay_over_time_redirect_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPayOverTimeRedirectUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method_categories" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPaymentMethodCategories obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("purchase_country" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPurchaseCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("purchase_type" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaPurchaseType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("redirect_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaRedirectUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_delay" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaShippingDelay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_first_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaShippingFirstName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_last_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeKlarnaShippingLastName obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeKlarna
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeKlarna" (\obj -> (((((((((((((((((((((((((GHC.Base.pure SourceTypeKlarna GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "background_image_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "client_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "locale")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "logo_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "page_title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pay_later_asset_urls_descriptive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pay_later_asset_urls_standard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pay_later_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pay_later_redirect_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pay_now_asset_urls_descriptive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pay_now_asset_urls_standard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pay_now_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pay_now_redirect_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pay_over_time_asset_urls_descriptive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pay_over_time_asset_urls_standard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pay_over_time_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pay_over_time_redirect_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_method_categories")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "purchase_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "purchase_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "redirect_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shipping_delay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shipping_first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shipping_last_name"))}
-- | Create a new 'SourceTypeKlarna' with all required fields.
mkSourceTypeKlarna :: SourceTypeKlarna
mkSourceTypeKlarna = SourceTypeKlarna{sourceTypeKlarnaBackgroundImageUrl = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaClientToken = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaFirstName = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaLastName = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaLocale = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaLogoUrl = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPageTitle = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPayLaterAssetUrlsDescriptive = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPayLaterAssetUrlsStandard = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPayLaterName = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPayLaterRedirectUrl = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPayNowAssetUrlsDescriptive = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPayNowAssetUrlsStandard = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPayNowName = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPayNowRedirectUrl = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPayOverTimeAssetUrlsDescriptive = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPayOverTimeAssetUrlsStandard = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPayOverTimeName = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPayOverTimeRedirectUrl = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPaymentMethodCategories = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPurchaseCountry = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaPurchaseType = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaRedirectUrl = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaShippingDelay = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaShippingFirstName = GHC.Maybe.Nothing,
                                      sourceTypeKlarnaShippingLastName = GHC.Maybe.Nothing}
