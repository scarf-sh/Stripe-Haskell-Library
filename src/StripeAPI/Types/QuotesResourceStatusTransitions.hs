-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema QuotesResourceStatusTransitions
module StripeAPI.Types.QuotesResourceStatusTransitions where

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

-- | Defines the object schema located at @components.schemas.quotes_resource_status_transitions@ in the specification.
-- 
-- 
data QuotesResourceStatusTransitions = QuotesResourceStatusTransitions {
  -- | accepted_at: The time that the quote was accepted. Measured in seconds since Unix epoch.
  quotesResourceStatusTransitionsAcceptedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | canceled_at: The time that the quote was canceled. Measured in seconds since Unix epoch.
  , quotesResourceStatusTransitionsCanceledAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | finalized_at: The time that the quote was finalized. Measured in seconds since Unix epoch.
  , quotesResourceStatusTransitionsFinalizedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceStatusTransitions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accepted_at" Data.Aeson.Types.ToJSON..=)) (quotesResourceStatusTransitionsAcceptedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("canceled_at" Data.Aeson.Types.ToJSON..=)) (quotesResourceStatusTransitionsCanceledAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("finalized_at" Data.Aeson.Types.ToJSON..=)) (quotesResourceStatusTransitionsFinalizedAt obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accepted_at" Data.Aeson.Types.ToJSON..=)) (quotesResourceStatusTransitionsAcceptedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("canceled_at" Data.Aeson.Types.ToJSON..=)) (quotesResourceStatusTransitionsCanceledAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("finalized_at" Data.Aeson.Types.ToJSON..=)) (quotesResourceStatusTransitionsFinalizedAt obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceStatusTransitions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "QuotesResourceStatusTransitions" (\obj -> ((GHC.Base.pure QuotesResourceStatusTransitions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "accepted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "canceled_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "finalized_at"))}
-- | Create a new 'QuotesResourceStatusTransitions' with all required fields.
mkQuotesResourceStatusTransitions :: QuotesResourceStatusTransitions
mkQuotesResourceStatusTransitions = QuotesResourceStatusTransitions{quotesResourceStatusTransitionsAcceptedAt = GHC.Maybe.Nothing,
                                                                    quotesResourceStatusTransitionsCanceledAt = GHC.Maybe.Nothing,
                                                                    quotesResourceStatusTransitionsFinalizedAt = GHC.Maybe.Nothing}
