module Graphql.Document exposing (serializeQuery, serializeQueryWithOperationName, serializeMutation, serializeMutationWithOperationName, serializeSubscription, serializeQueryForUrl, serializeQueryForUrlWithOperationName, decoder)

{-| You'll usually want to use `Graphql.Http` to perform your queries directly.
This package provides low-level functions for generating GraphQL documents that
are helpful for debugging and demo purposes.

@docs serializeQuery, serializeQueryWithOperationName, serializeMutation, serializeMutationWithOperationName, serializeSubscription, serializeQueryForUrl, serializeQueryForUrlWithOperationName, decoder

-}

import Graphql.Directive exposing (Directive(..))
import Graphql.Document.Directive as Directive
import Graphql.Document.Field as Field
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.RawField exposing (RawField)
import Graphql.SelectionSet exposing (SelectionSet(..))
import Json.Decode as Decode exposing (Decoder)
import String.Interpolate exposing (interpolate)


{-| Serialize a query selection set into a string for a GraphQL endpoint.
-}
serializeQuery : List Directive -> SelectionSet decodesTo RootQuery -> String
serializeQuery directives (SelectionSet fields decoder_) =
    serialize "query" directives fields


{-| Serialize a query selection set with an operation name into a string for a GraphQL endpoint.
-}
serializeQueryWithOperationName : String -> SelectionSet decodesTo RootQuery -> String
serializeQueryWithOperationName operationName (SelectionSet fields decoder_) =
    serializeWithOperationName "query" operationName fields


{-| Serialize a query selection set into a string with minimal whitespace. For
use with a GET request as a query param.
-}
serializeQueryForUrl : SelectionSet decodesTo RootQuery -> String
serializeQueryForUrl (SelectionSet fields decoder_) =
    "{" ++ Field.serializeChildren Nothing fields ++ "}"


{-| Serialize a query selection set with an operation name into a string with
minimal whitespace. For use with a GET request as a query param.
-}
serializeQueryForUrlWithOperationName : String -> SelectionSet decodesTo RootQuery -> String
serializeQueryForUrlWithOperationName operationName (SelectionSet fields decoder_) =
    "query " ++ operationName ++ " {" ++ Field.serializeChildren Nothing fields ++ "}"


{-| Serialize a mutation selection set into a string for a GraphQL endpoint.
-}
serializeMutation : List Directive -> SelectionSet decodesTo RootMutation -> String
serializeMutation directives (SelectionSet fields decoder_) =
    serialize "mutation" directives fields


{-| Serialize a mutation selection set with an operation name into a string for a GraphQL endpoint.
-}
serializeMutationWithOperationName : String -> SelectionSet decodesTo RootMutation -> String
serializeMutationWithOperationName operationName (SelectionSet fields decoder_) =
    serializeWithOperationName "mutation" operationName fields


{-| Serialize a subscription selection set into a string for a GraphQL endpoint.
-}
serializeSubscription : List Directive -> SelectionSet decodesTo RootSubscription -> String
serializeSubscription directives (SelectionSet fields decoder_) =
    serialize "subscription" directives fields


{-| Decoder a response from the server. This low-level function shouldn't be needed
in the majority of cases. Instead, the high-level functions in `Graphql.Http`
should be used.
-}
decoder : SelectionSet decodesTo scope -> Decoder decodesTo
decoder (SelectionSet fields decoder_) =
    decoder_ |> Decode.field "data"


serialize : String -> List Directive -> List RawField -> String
serialize operationType directives queries =
    interpolate """{0} {1} {
{2}
}"""
        [ operationType, Directive.serialize directives, Field.serializeChildren (Just 0) queries ]


serializeWithOperationName : String -> String -> List RawField -> String
serializeWithOperationName operationType operationName queries =
    interpolate """{0} {1} {
{2}
}"""
        [ operationType, operationName, Field.serializeChildren (Just 0) queries ]
