-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IssuingCardholderIndividual
module StripeAPI.Types.IssuingCardholderIndividual where

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
import {-# SOURCE #-} StripeAPI.Types.File
import {-# SOURCE #-} StripeAPI.Types.IssuingCardholderCardIssuing
import {-# SOURCE #-} StripeAPI.Types.IssuingCardholderIdDocument
import {-# SOURCE #-} StripeAPI.Types.IssuingCardholderIndividualDob
import {-# SOURCE #-} StripeAPI.Types.IssuingCardholderUserTermsAcceptance
import {-# SOURCE #-} StripeAPI.Types.IssuingCardholderVerification

-- | Defines the object schema located at @components.schemas.issuing_cardholder_individual@ in the specification.
-- 
-- 
data IssuingCardholderIndividual = IssuingCardholderIndividual {
  -- | card_issuing: Information related to the card_issuing program for this cardholder.
  issuingCardholderIndividualCardIssuing :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingCardholderIndividualCardIssuing'NonNullable))
  -- | dob: The date of birth of this cardholder.
  , issuingCardholderIndividualDob :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingCardholderIndividualDob'NonNullable))
  -- | first_name: The first name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingCardholderIndividualFirstName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | last_name: The last name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingCardholderIndividualLastName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | verification: Government-issued ID document for this cardholder.
  , issuingCardholderIndividualVerification :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingCardholderIndividualVerification'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderIndividual
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_issuing" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualCardIssuing obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dob" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualDob obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualFirstName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualLastName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualVerification obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_issuing" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualCardIssuing obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dob" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualDob obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualFirstName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualLastName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualVerification obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderIndividual
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderIndividual" (\obj -> ((((GHC.Base.pure IssuingCardholderIndividual GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card_issuing")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification"))}
-- | Create a new 'IssuingCardholderIndividual' with all required fields.
mkIssuingCardholderIndividual :: IssuingCardholderIndividual
mkIssuingCardholderIndividual = IssuingCardholderIndividual{issuingCardholderIndividualCardIssuing = GHC.Maybe.Nothing,
                                                            issuingCardholderIndividualDob = GHC.Maybe.Nothing,
                                                            issuingCardholderIndividualFirstName = GHC.Maybe.Nothing,
                                                            issuingCardholderIndividualLastName = GHC.Maybe.Nothing,
                                                            issuingCardholderIndividualVerification = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.issuing_cardholder_individual.properties.card_issuing.anyOf@ in the specification.
-- 
-- Information related to the card_issuing program for this cardholder.
data IssuingCardholderIndividualCardIssuing'NonNullable = IssuingCardholderIndividualCardIssuing'NonNullable {
  -- | user_terms_acceptance: Information about cardholder acceptance of Celtic [Authorized User Terms](https:\/\/stripe.com\/docs\/issuing\/cards\#accept-authorized-user-terms). Required for cards backed by a Celtic program.
  issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderIndividualCardIssuing'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_terms_acceptance" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_terms_acceptance" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderIndividualCardIssuing'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderIndividualCardIssuing'NonNullable" (\obj -> GHC.Base.pure IssuingCardholderIndividualCardIssuing'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_terms_acceptance"))}
-- | Create a new 'IssuingCardholderIndividualCardIssuing'NonNullable' with all required fields.
mkIssuingCardholderIndividualCardIssuing'NonNullable :: IssuingCardholderIndividualCardIssuing'NonNullable
mkIssuingCardholderIndividualCardIssuing'NonNullable = IssuingCardholderIndividualCardIssuing'NonNullable{issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.issuing_cardholder_individual.properties.card_issuing.anyOf.properties.user_terms_acceptance.anyOf@ in the specification.
-- 
-- Information about cardholder acceptance of Celtic [Authorized User Terms](https:\\\/\\\/stripe.com\\\/docs\\\/issuing\\\/cards\\\#accept-authorized-user-terms). Required for cards backed by a Celtic program.
data IssuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullable = IssuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullable {
  -- | date: The Unix timestamp marking when the cardholder accepted the Authorized User Terms.
  issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullableDate :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | ip: The IP address from which the cardholder accepted the Authorized User Terms.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullableIp :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | user_agent: The user agent of the browser from which the cardholder accepted the Authorized User Terms.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullableUserAgent :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("date" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullableDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ip" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullableIp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_agent" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullableUserAgent obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("date" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullableDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ip" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullableIp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_agent" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullableUserAgent obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullable" (\obj -> ((GHC.Base.pure IssuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_agent"))}
-- | Create a new 'IssuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullable' with all required fields.
mkIssuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullable :: IssuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullable
mkIssuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullable = IssuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullable{issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullableDate = GHC.Maybe.Nothing,
                                                                                                                                                                        issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullableIp = GHC.Maybe.Nothing,
                                                                                                                                                                        issuingCardholderIndividualCardIssuing'NonNullableUserTermsAcceptance'NonNullableUserAgent = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.issuing_cardholder_individual.properties.dob.anyOf@ in the specification.
-- 
-- The date of birth of this cardholder.
data IssuingCardholderIndividualDob'NonNullable = IssuingCardholderIndividualDob'NonNullable {
  -- | day: The day of birth, between 1 and 31.
  issuingCardholderIndividualDob'NonNullableDay :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | month: The month of birth, between 1 and 12.
  , issuingCardholderIndividualDob'NonNullableMonth :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | year: The four-digit year of birth.
  , issuingCardholderIndividualDob'NonNullableYear :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderIndividualDob'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("day" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualDob'NonNullableDay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualDob'NonNullableMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("year" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualDob'NonNullableYear obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("day" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualDob'NonNullableDay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualDob'NonNullableMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("year" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualDob'NonNullableYear obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderIndividualDob'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderIndividualDob'NonNullable" (\obj -> ((GHC.Base.pure IssuingCardholderIndividualDob'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "year"))}
-- | Create a new 'IssuingCardholderIndividualDob'NonNullable' with all required fields.
mkIssuingCardholderIndividualDob'NonNullable :: IssuingCardholderIndividualDob'NonNullable
mkIssuingCardholderIndividualDob'NonNullable = IssuingCardholderIndividualDob'NonNullable{issuingCardholderIndividualDob'NonNullableDay = GHC.Maybe.Nothing,
                                                                                          issuingCardholderIndividualDob'NonNullableMonth = GHC.Maybe.Nothing,
                                                                                          issuingCardholderIndividualDob'NonNullableYear = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.issuing_cardholder_individual.properties.verification.anyOf@ in the specification.
-- 
-- Government-issued ID document for this cardholder.
data IssuingCardholderIndividualVerification'NonNullable = IssuingCardholderIndividualVerification'NonNullable {
  -- | document: An identifying document, either a passport or local ID card.
  issuingCardholderIndividualVerification'NonNullableDocument :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingCardholderIndividualVerification'NonNullableDocument'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderIndividualVerification'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("document" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualVerification'NonNullableDocument obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("document" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualVerification'NonNullableDocument obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderIndividualVerification'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderIndividualVerification'NonNullable" (\obj -> GHC.Base.pure IssuingCardholderIndividualVerification'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "document"))}
-- | Create a new 'IssuingCardholderIndividualVerification'NonNullable' with all required fields.
mkIssuingCardholderIndividualVerification'NonNullable :: IssuingCardholderIndividualVerification'NonNullable
mkIssuingCardholderIndividualVerification'NonNullable = IssuingCardholderIndividualVerification'NonNullable{issuingCardholderIndividualVerification'NonNullableDocument = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.issuing_cardholder_individual.properties.verification.anyOf.properties.document.anyOf@ in the specification.
-- 
-- An identifying document, either a passport or local ID card.
data IssuingCardholderIndividualVerification'NonNullableDocument'NonNullable = IssuingCardholderIndividualVerification'NonNullableDocument'NonNullable {
  -- | back: The back of a document returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
  issuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack'NonNullableVariants))
  -- | front: The front of a document returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
  , issuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront'NonNullableVariants))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderIndividualVerification'NonNullableDocument'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("back" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("front" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("back" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("front" Data.Aeson.Types.ToJSON..=)) (issuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderIndividualVerification'NonNullableDocument'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderIndividualVerification'NonNullableDocument'NonNullable" (\obj -> (GHC.Base.pure IssuingCardholderIndividualVerification'NonNullableDocument'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "front"))}
-- | Create a new 'IssuingCardholderIndividualVerification'NonNullableDocument'NonNullable' with all required fields.
mkIssuingCardholderIndividualVerification'NonNullableDocument'NonNullable :: IssuingCardholderIndividualVerification'NonNullableDocument'NonNullable
mkIssuingCardholderIndividualVerification'NonNullableDocument'NonNullable = IssuingCardholderIndividualVerification'NonNullableDocument'NonNullable{issuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack = GHC.Maybe.Nothing,
                                                                                                                                                    issuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.issuing_cardholder_individual.properties.verification.anyOf.properties.document.anyOf.properties.back.anyOf@ in the specification.
-- 
-- The back of a document returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
data IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack'NonNullableVariants =
   IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack'NonNullableText Data.Text.Internal.Text
  | IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack'NonNullableFile File
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack'NonNullableVariants
    where {toJSON (IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack'NonNullableFile a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack'NonNullableVariants
    where {parseJSON val = case (IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableBack'NonNullableFile Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the oneOf schema located at @components.schemas.issuing_cardholder_individual.properties.verification.anyOf.properties.document.anyOf.properties.front.anyOf@ in the specification.
-- 
-- The front of a document returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
data IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront'NonNullableVariants =
   IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront'NonNullableText Data.Text.Internal.Text
  | IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront'NonNullableFile File
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront'NonNullableVariants
    where {toJSON (IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront'NonNullableFile a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront'NonNullableVariants
    where {parseJSON val = case (IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((IssuingCardholderIndividualVerification'NonNullableDocument'NonNullableFront'NonNullableFile Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
