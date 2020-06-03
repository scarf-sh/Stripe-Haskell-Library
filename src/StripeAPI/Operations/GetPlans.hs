{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation getPlans
module StripeAPI.Operations.GetPlans where

import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
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
import qualified GHC.Generics
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

-- | > GET /v1/plans
--
-- \<p>Returns a list of your plans.\<\/p>
getPlans ::
  forall m s.
  (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) =>
  -- | The configuration to use in the request
  StripeAPI.Common.Configuration s ->
  -- | active: Only return plans that are active or inactive (e.g., pass \`false\` to list all inactive plans).
  GHC.Maybe.Maybe GHC.Types.Bool ->
  -- | created: A filter on the list, based on the object \`created\` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | ending_before: A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list. | Constraints: Maximum length of 5000
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | expand: Specifies which fields in the response should be expanded.
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | limit: A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
  -- | product: Only return plans for the given product. | Constraints: Maximum length of 5000
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | starting_after: A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list. | Constraints: Maximum length of 5000
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe GetPlansRequestBody ->
  -- | Monad containing the result of the operation
  m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetPlansResponse))
getPlans
  config
  active
  created
  endingBefore
  expand
  limit
  product
  startingAfter
  body =
    GHC.Base.fmap
      ( GHC.Base.fmap
          ( \response_0 ->
              GHC.Base.fmap
                ( Data.Either.either GetPlansResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                   if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                         GetPlansResponse200
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  GetPlansResponseBody200
                                                            )
                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                         GetPlansResponseDefault
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  Error
                                                            )
                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                               )
                      response_0
                )
                response_0
          )
      )
      ( StripeAPI.Common.doBodyCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/v1/plans")
          ( ( Data.Text.pack "active",
              StripeAPI.Common.stringifyModel Data.Functor.<$> active
            )
              : ( ( Data.Text.pack "created",
                    StripeAPI.Common.stringifyModel Data.Functor.<$> created
                  )
                    : ( ( Data.Text.pack "ending_before",
                          StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore
                        )
                          : ( ( Data.Text.pack "expand",
                                StripeAPI.Common.stringifyModel Data.Functor.<$> expand
                              )
                                : ( ( Data.Text.pack "limit",
                                      StripeAPI.Common.stringifyModel Data.Functor.<$> limit
                                    )
                                      : ( ( Data.Text.pack "product",
                                            StripeAPI.Common.stringifyModel Data.Functor.<$> product
                                          )
                                            : ( ( Data.Text.pack "starting_after",
                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter
                                                )
                                                  : []
                                              )
                                        )
                                  )
                            )
                      )
                )
          )
          body
          StripeAPI.Common.RequestBodyEncodingFormData
      )

-- | > GET /v1/plans
--
-- The same as 'getPlans' but returns the raw 'Data.ByteString.Char8.ByteString'
getPlansRaw ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  StripeAPI.Common.Configuration s ->
  GHC.Maybe.Maybe GHC.Types.Bool ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GetPlansRequestBody ->
  m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
    )
getPlansRaw
  config
  active
  created
  endingBefore
  expand
  limit
  product
  startingAfter
  body =
    GHC.Base.id
      ( StripeAPI.Common.doBodyCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/v1/plans")
          ( ( Data.Text.pack "active",
              StripeAPI.Common.stringifyModel Data.Functor.<$> active
            )
              : ( ( Data.Text.pack "created",
                    StripeAPI.Common.stringifyModel Data.Functor.<$> created
                  )
                    : ( ( Data.Text.pack "ending_before",
                          StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore
                        )
                          : ( ( Data.Text.pack "expand",
                                StripeAPI.Common.stringifyModel Data.Functor.<$> expand
                              )
                                : ( ( Data.Text.pack "limit",
                                      StripeAPI.Common.stringifyModel Data.Functor.<$> limit
                                    )
                                      : ( ( Data.Text.pack "product",
                                            StripeAPI.Common.stringifyModel Data.Functor.<$> product
                                          )
                                            : ( ( Data.Text.pack "starting_after",
                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter
                                                )
                                                  : []
                                              )
                                        )
                                  )
                            )
                      )
                )
          )
          body
          StripeAPI.Common.RequestBodyEncodingFormData
      )

-- | > GET /v1/plans
--
-- Monadic version of 'getPlans' (use with 'StripeAPI.Common.runWithConfiguration')
getPlansM ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  GHC.Maybe.Maybe GHC.Types.Bool ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GetPlansRequestBody ->
  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
    m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response GetPlansResponse)
    )
getPlansM
  active
  created
  endingBefore
  expand
  limit
  product
  startingAfter
  body =
    GHC.Base.fmap
      ( GHC.Base.fmap
          ( \response_2 ->
              GHC.Base.fmap
                ( Data.Either.either GetPlansResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                   if  | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                         GetPlansResponse200
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  GetPlansResponseBody200
                                                            )
                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                         GetPlansResponseDefault
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  Error
                                                            )
                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                               )
                      response_2
                )
                response_2
          )
      )
      ( StripeAPI.Common.doBodyCallWithConfigurationM
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/v1/plans")
          ( ( Data.Text.pack "active",
              StripeAPI.Common.stringifyModel Data.Functor.<$> active
            )
              : ( ( Data.Text.pack "created",
                    StripeAPI.Common.stringifyModel Data.Functor.<$> created
                  )
                    : ( ( Data.Text.pack "ending_before",
                          StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore
                        )
                          : ( ( Data.Text.pack "expand",
                                StripeAPI.Common.stringifyModel Data.Functor.<$> expand
                              )
                                : ( ( Data.Text.pack "limit",
                                      StripeAPI.Common.stringifyModel Data.Functor.<$> limit
                                    )
                                      : ( ( Data.Text.pack "product",
                                            StripeAPI.Common.stringifyModel Data.Functor.<$> product
                                          )
                                            : ( ( Data.Text.pack "starting_after",
                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter
                                                )
                                                  : []
                                              )
                                        )
                                  )
                            )
                      )
                )
          )
          body
          StripeAPI.Common.RequestBodyEncodingFormData
      )

-- | > GET /v1/plans
--
-- Monadic version of 'getPlansRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getPlansRawM ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  GHC.Maybe.Maybe GHC.Types.Bool ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GetPlansRequestBody ->
  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
    m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
    )
getPlansRawM
  active
  created
  endingBefore
  expand
  limit
  product
  startingAfter
  body =
    GHC.Base.id
      ( StripeAPI.Common.doBodyCallWithConfigurationM
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/v1/plans")
          ( ( Data.Text.pack "active",
              StripeAPI.Common.stringifyModel Data.Functor.<$> active
            )
              : ( ( Data.Text.pack "created",
                    StripeAPI.Common.stringifyModel Data.Functor.<$> created
                  )
                    : ( ( Data.Text.pack "ending_before",
                          StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore
                        )
                          : ( ( Data.Text.pack "expand",
                                StripeAPI.Common.stringifyModel Data.Functor.<$> expand
                              )
                                : ( ( Data.Text.pack "limit",
                                      StripeAPI.Common.stringifyModel Data.Functor.<$> limit
                                    )
                                      : ( ( Data.Text.pack "product",
                                            StripeAPI.Common.stringifyModel Data.Functor.<$> product
                                          )
                                            : ( ( Data.Text.pack "starting_after",
                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter
                                                )
                                                  : []
                                              )
                                        )
                                  )
                            )
                      )
                )
          )
          body
          StripeAPI.Common.RequestBodyEncodingFormData
      )

-- | Defines the data type for the schema getPlansRequestBody
data GetPlansRequestBody
  = GetPlansRequestBody
      {
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.ToJSON GetPlansRequestBody where
  toJSON obj = Data.Aeson.object []
  toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))

instance Data.Aeson.Types.FromJSON.FromJSON GetPlansRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPlansRequestBody" (\obj -> GHC.Base.pure GetPlansRequestBody)

-- | Represents a response of the operation 'getPlans'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetPlansResponseError' is used.
data GetPlansResponse
  = -- | Means either no matching case available or a parse error
    GetPlansResponseError GHC.Base.String
  | -- | Successful response.
    GetPlansResponse200 GetPlansResponseBody200
  | -- | Error response.
    GetPlansResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the data type for the schema GetPlansResponseBody200
data GetPlansResponseBody200
  = GetPlansResponseBody200
      { -- | data
        getPlansResponseBody200Data :: ([] Plan),
        -- | has_more: True if this list has another page of items after this one that can be fetched.
        getPlansResponseBody200HasMore :: GHC.Types.Bool,
        -- | object: String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
        getPlansResponseBody200Object :: GetPlansResponseBody200Object',
        -- | url: The URL where this list can be accessed.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        -- * Must match pattern \'^\/v1\/plans\'
        getPlansResponseBody200Url :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.ToJSON GetPlansResponseBody200 where
  toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getPlansResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getPlansResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getPlansResponseBody200Object obj) : (Data.Aeson..=) "url" (getPlansResponseBody200Url obj) : [])
  toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getPlansResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getPlansResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getPlansResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getPlansResponseBody200Url obj))))

instance Data.Aeson.Types.FromJSON.FromJSON GetPlansResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPlansResponseBody200" (\obj -> (((GHC.Base.pure GetPlansResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Defines the enum schema GetPlansResponseBody200Object\'
--
-- String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
data GetPlansResponseBody200Object'
  = GetPlansResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
  | GetPlansResponseBody200Object'EnumTyped Data.Text.Internal.Text
  | GetPlansResponseBody200Object'EnumStringList
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.ToJSON GetPlansResponseBody200Object' where
  toJSON (GetPlansResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
  toJSON (GetPlansResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
  toJSON (GetPlansResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"

instance Data.Aeson.FromJSON GetPlansResponseBody200Object' where
  parseJSON val =
    GHC.Base.pure
      ( if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
          then GetPlansResponseBody200Object'EnumStringList
          else GetPlansResponseBody200Object'EnumOther val
      )
