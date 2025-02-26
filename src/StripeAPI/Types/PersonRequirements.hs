-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PersonRequirements
module StripeAPI.Types.PersonRequirements where

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
import {-# SOURCE #-} StripeAPI.Types.AccountRequirementsAlternative
import {-# SOURCE #-} StripeAPI.Types.AccountRequirementsError

-- | Defines the object schema located at @components.schemas.person_requirements@ in the specification.
-- 
-- 
data PersonRequirements = PersonRequirements {
  -- | alternatives: Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
  personRequirementsAlternatives :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([AccountRequirementsAlternative])))
  -- | currently_due: Fields that need to be collected to keep the person\'s account enabled. If not collected by the account\'s \`current_deadline\`, these fields appear in \`past_due\` as well, and the account is disabled.
  , personRequirementsCurrentlyDue :: ([Data.Text.Internal.Text])
  -- | errors: Fields that are \`currently_due\` and need to be collected again because validation or verification failed.
  , personRequirementsErrors :: ([AccountRequirementsError])
  -- | eventually_due: Fields that need to be collected assuming all volume thresholds are reached. As they become required, they appear in \`currently_due\` as well, and the account\'s \`current_deadline\` becomes set.
  , personRequirementsEventuallyDue :: ([Data.Text.Internal.Text])
  -- | past_due: Fields that weren\'t collected by the account\'s \`current_deadline\`. These fields need to be collected to enable the person\'s account.
  , personRequirementsPastDue :: ([Data.Text.Internal.Text])
  -- | pending_verification: Fields that may become required depending on the results of verification or review. Will be an empty array unless an asynchronous verification is pending. If verification fails, these fields move to \`eventually_due\`, \`currently_due\`, or \`past_due\`.
  , personRequirementsPendingVerification :: ([Data.Text.Internal.Text])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PersonRequirements
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alternatives" Data.Aeson.Types.ToJSON..=)) (personRequirementsAlternatives obj) : ["currently_due" Data.Aeson.Types.ToJSON..= personRequirementsCurrentlyDue obj] : ["errors" Data.Aeson.Types.ToJSON..= personRequirementsErrors obj] : ["eventually_due" Data.Aeson.Types.ToJSON..= personRequirementsEventuallyDue obj] : ["past_due" Data.Aeson.Types.ToJSON..= personRequirementsPastDue obj] : ["pending_verification" Data.Aeson.Types.ToJSON..= personRequirementsPendingVerification obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alternatives" Data.Aeson.Types.ToJSON..=)) (personRequirementsAlternatives obj) : ["currently_due" Data.Aeson.Types.ToJSON..= personRequirementsCurrentlyDue obj] : ["errors" Data.Aeson.Types.ToJSON..= personRequirementsErrors obj] : ["eventually_due" Data.Aeson.Types.ToJSON..= personRequirementsEventuallyDue obj] : ["past_due" Data.Aeson.Types.ToJSON..= personRequirementsPastDue obj] : ["pending_verification" Data.Aeson.Types.ToJSON..= personRequirementsPendingVerification obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PersonRequirements
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PersonRequirements" (\obj -> (((((GHC.Base.pure PersonRequirements GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "alternatives")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currently_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "errors")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "eventually_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "past_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pending_verification"))}
-- | Create a new 'PersonRequirements' with all required fields.
mkPersonRequirements :: [Data.Text.Internal.Text] -- ^ 'personRequirementsCurrentlyDue'
  -> [AccountRequirementsError] -- ^ 'personRequirementsErrors'
  -> [Data.Text.Internal.Text] -- ^ 'personRequirementsEventuallyDue'
  -> [Data.Text.Internal.Text] -- ^ 'personRequirementsPastDue'
  -> [Data.Text.Internal.Text] -- ^ 'personRequirementsPendingVerification'
  -> PersonRequirements
mkPersonRequirements personRequirementsCurrentlyDue personRequirementsErrors personRequirementsEventuallyDue personRequirementsPastDue personRequirementsPendingVerification = PersonRequirements{personRequirementsAlternatives = GHC.Maybe.Nothing,
                                                                                                                                                                                                  personRequirementsCurrentlyDue = personRequirementsCurrentlyDue,
                                                                                                                                                                                                  personRequirementsErrors = personRequirementsErrors,
                                                                                                                                                                                                  personRequirementsEventuallyDue = personRequirementsEventuallyDue,
                                                                                                                                                                                                  personRequirementsPastDue = personRequirementsPastDue,
                                                                                                                                                                                                  personRequirementsPendingVerification = personRequirementsPendingVerification}
