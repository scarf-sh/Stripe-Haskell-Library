-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ExternalAccountRequirements
module StripeAPI.Types.ExternalAccountRequirements where

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
import {-# SOURCE #-} StripeAPI.Types.AccountRequirementsError

-- | Defines the object schema located at @components.schemas.external_account_requirements@ in the specification.
-- 
-- 
data ExternalAccountRequirements = ExternalAccountRequirements {
  -- | currently_due: Fields that need to be collected to keep the external account enabled. If not collected by \`current_deadline\`, these fields appear in \`past_due\` as well, and the account is disabled.
  externalAccountRequirementsCurrentlyDue :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([Data.Text.Internal.Text])))
  -- | errors: Fields that are \`currently_due\` and need to be collected again because validation or verification failed.
  , externalAccountRequirementsErrors :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([AccountRequirementsError])))
  -- | past_due: Fields that weren\'t collected by \`current_deadline\`. These fields need to be collected to enable the external account.
  , externalAccountRequirementsPastDue :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([Data.Text.Internal.Text])))
  -- | pending_verification: Fields that may become required depending on the results of verification or review. Will be an empty array unless an asynchronous verification is pending. If verification fails, these fields move to \`eventually_due\`, \`currently_due\`, or \`past_due\`.
  , externalAccountRequirementsPendingVerification :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([Data.Text.Internal.Text])))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ExternalAccountRequirements
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currently_due" Data.Aeson.Types.ToJSON..=)) (externalAccountRequirementsCurrentlyDue obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("errors" Data.Aeson.Types.ToJSON..=)) (externalAccountRequirementsErrors obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("past_due" Data.Aeson.Types.ToJSON..=)) (externalAccountRequirementsPastDue obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pending_verification" Data.Aeson.Types.ToJSON..=)) (externalAccountRequirementsPendingVerification obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currently_due" Data.Aeson.Types.ToJSON..=)) (externalAccountRequirementsCurrentlyDue obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("errors" Data.Aeson.Types.ToJSON..=)) (externalAccountRequirementsErrors obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("past_due" Data.Aeson.Types.ToJSON..=)) (externalAccountRequirementsPastDue obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pending_verification" Data.Aeson.Types.ToJSON..=)) (externalAccountRequirementsPendingVerification obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ExternalAccountRequirements
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ExternalAccountRequirements" (\obj -> (((GHC.Base.pure ExternalAccountRequirements GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currently_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "errors")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "past_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pending_verification"))}
-- | Create a new 'ExternalAccountRequirements' with all required fields.
mkExternalAccountRequirements :: ExternalAccountRequirements
mkExternalAccountRequirements = ExternalAccountRequirements{externalAccountRequirementsCurrentlyDue = GHC.Maybe.Nothing,
                                                            externalAccountRequirementsErrors = GHC.Maybe.Nothing,
                                                            externalAccountRequirementsPastDue = GHC.Maybe.Nothing,
                                                            externalAccountRequirementsPendingVerification = GHC.Maybe.Nothing}
