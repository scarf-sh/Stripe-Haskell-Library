{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation getRadarValueLists
module StripeAPI.Operations.GetRadarValueLists where

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

-- | > GET /v1/radar/value_lists
--
-- \<p>Returns a list of \<code>ValueList\<\/code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.\<\/p>
getRadarValueLists ::
  forall m s.
  (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) =>
  -- | The configuration to use in the request
  StripeAPI.Common.Configuration s ->
  -- | alias: The alias used to reference the value list when writing rules. | Constraints: Maximum length of 100
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | contains: A value contained within a value list - returns all value lists containing this value. | Constraints: Maximum length of 800
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | created
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | ending_before: A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list. | Constraints: Maximum length of 5000
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | expand: Specifies which fields in the response should be expanded.
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | limit: A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
  -- | starting_after: A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list. | Constraints: Maximum length of 5000
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe GetRadarValueListsRequestBody ->
  -- | Monad containing the result of the operation
  m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetRadarValueListsResponse))
getRadarValueLists
  config
  alias
  contains
  created
  endingBefore
  expand
  limit
  startingAfter
  body =
    GHC.Base.fmap
      ( GHC.Base.fmap
          ( \response_0 ->
              GHC.Base.fmap
                ( Data.Either.either GetRadarValueListsResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                   if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                         GetRadarValueListsResponse200
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  GetRadarValueListsResponseBody200
                                                            )
                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                         GetRadarValueListsResponseDefault
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
          (Data.Text.pack "/v1/radar/value_lists")
          ( ( Data.Text.pack "alias",
              StripeAPI.Common.stringifyModel Data.Functor.<$> alias
            )
              : ( ( Data.Text.pack "contains",
                    StripeAPI.Common.stringifyModel Data.Functor.<$> contains
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

-- | > GET /v1/radar/value_lists
--
-- The same as 'getRadarValueLists' but returns the raw 'Data.ByteString.Char8.ByteString'
getRadarValueListsRaw ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  StripeAPI.Common.Configuration s ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GetRadarValueListsRequestBody ->
  m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
    )
getRadarValueListsRaw
  config
  alias
  contains
  created
  endingBefore
  expand
  limit
  startingAfter
  body =
    GHC.Base.id
      ( StripeAPI.Common.doBodyCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/v1/radar/value_lists")
          ( ( Data.Text.pack "alias",
              StripeAPI.Common.stringifyModel Data.Functor.<$> alias
            )
              : ( ( Data.Text.pack "contains",
                    StripeAPI.Common.stringifyModel Data.Functor.<$> contains
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

-- | > GET /v1/radar/value_lists
--
-- Monadic version of 'getRadarValueLists' (use with 'StripeAPI.Common.runWithConfiguration')
getRadarValueListsM ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GetRadarValueListsRequestBody ->
  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
    m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response GetRadarValueListsResponse)
    )
getRadarValueListsM
  alias
  contains
  created
  endingBefore
  expand
  limit
  startingAfter
  body =
    GHC.Base.fmap
      ( GHC.Base.fmap
          ( \response_2 ->
              GHC.Base.fmap
                ( Data.Either.either GetRadarValueListsResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                   if  | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                         GetRadarValueListsResponse200
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  GetRadarValueListsResponseBody200
                                                            )
                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                         GetRadarValueListsResponseDefault
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
          (Data.Text.pack "/v1/radar/value_lists")
          ( ( Data.Text.pack "alias",
              StripeAPI.Common.stringifyModel Data.Functor.<$> alias
            )
              : ( ( Data.Text.pack "contains",
                    StripeAPI.Common.stringifyModel Data.Functor.<$> contains
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

-- | > GET /v1/radar/value_lists
--
-- Monadic version of 'getRadarValueListsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getRadarValueListsRawM ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GetRadarValueListsRequestBody ->
  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
    m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
    )
getRadarValueListsRawM
  alias
  contains
  created
  endingBefore
  expand
  limit
  startingAfter
  body =
    GHC.Base.id
      ( StripeAPI.Common.doBodyCallWithConfigurationM
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/v1/radar/value_lists")
          ( ( Data.Text.pack "alias",
              StripeAPI.Common.stringifyModel Data.Functor.<$> alias
            )
              : ( ( Data.Text.pack "contains",
                    StripeAPI.Common.stringifyModel Data.Functor.<$> contains
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

-- | Defines the data type for the schema getRadarValueListsRequestBody
data GetRadarValueListsRequestBody
  = GetRadarValueListsRequestBody
      {
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.ToJSON GetRadarValueListsRequestBody where
  toJSON obj = Data.Aeson.object []
  toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))

instance Data.Aeson.Types.FromJSON.FromJSON GetRadarValueListsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRadarValueListsRequestBody" (\obj -> GHC.Base.pure GetRadarValueListsRequestBody)

-- | Represents a response of the operation 'getRadarValueLists'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetRadarValueListsResponseError' is used.
data GetRadarValueListsResponse
  = -- | Means either no matching case available or a parse error
    GetRadarValueListsResponseError GHC.Base.String
  | -- | Successful response.
    GetRadarValueListsResponse200 GetRadarValueListsResponseBody200
  | -- | Error response.
    GetRadarValueListsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the data type for the schema GetRadarValueListsResponseBody200
data GetRadarValueListsResponseBody200
  = GetRadarValueListsResponseBody200
      { -- | data
        getRadarValueListsResponseBody200Data :: ([] Radar'valueList),
        -- | has_more: True if this list has another page of items after this one that can be fetched.
        getRadarValueListsResponseBody200HasMore :: GHC.Types.Bool,
        -- | object: String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
        getRadarValueListsResponseBody200Object :: GetRadarValueListsResponseBody200Object',
        -- | url: The URL where this list can be accessed.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        -- * Must match pattern \'^\/v1\/radar\/value_lists\'
        getRadarValueListsResponseBody200Url :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.ToJSON GetRadarValueListsResponseBody200 where
  toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getRadarValueListsResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getRadarValueListsResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getRadarValueListsResponseBody200Object obj) : (Data.Aeson..=) "url" (getRadarValueListsResponseBody200Url obj) : [])
  toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getRadarValueListsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getRadarValueListsResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getRadarValueListsResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getRadarValueListsResponseBody200Url obj))))

instance Data.Aeson.Types.FromJSON.FromJSON GetRadarValueListsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRadarValueListsResponseBody200" (\obj -> (((GHC.Base.pure GetRadarValueListsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Defines the enum schema GetRadarValueListsResponseBody200Object\'
--
-- String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
data GetRadarValueListsResponseBody200Object'
  = GetRadarValueListsResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
  | GetRadarValueListsResponseBody200Object'EnumTyped Data.Text.Internal.Text
  | GetRadarValueListsResponseBody200Object'EnumStringList
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.ToJSON GetRadarValueListsResponseBody200Object' where
  toJSON (GetRadarValueListsResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
  toJSON (GetRadarValueListsResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
  toJSON (GetRadarValueListsResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"

instance Data.Aeson.FromJSON GetRadarValueListsResponseBody200Object' where
  parseJSON val =
    GHC.Base.pure
      ( if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
          then GetRadarValueListsResponseBody200Object'EnumStringList
          else GetRadarValueListsResponseBody200Object'EnumOther val
      )
