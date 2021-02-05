-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.UpdateTopicsPayload exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.ScalarCodecs
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) Github.Object.UpdateTopicsPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| Names of the provided topics that are not valid.
-}
invalidTopicNames : SelectionSet (Maybe (List String)) Github.Object.UpdateTopicsPayload
invalidTopicNames =
    Object.selectionForField "(Maybe (List String))" "invalidTopicNames" [] (Decode.string |> Decode.list |> Decode.nullable)


{-| The updated repository.
-}
repository :
    SelectionSet decodesTo Github.Object.Repository
    -> SelectionSet decodesTo Github.Object.UpdateTopicsPayload
repository object____ =
    Object.selectionForCompositeField "repository" [] object____ identity
