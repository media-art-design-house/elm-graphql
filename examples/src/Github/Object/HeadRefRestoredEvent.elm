-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.HeadRefRestoredEvent exposing (..)

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


{-| Identifies the actor who performed the event.
-}
actor :
    SelectionSet decodesTo Github.Interface.Actor
    -> SelectionSet (Maybe decodesTo) Github.Object.HeadRefRestoredEvent
actor object____ =
    Object.selectionForCompositeField "actor" [] object____ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.HeadRefRestoredEvent
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


id : SelectionSet Github.ScalarCodecs.Id Github.Object.HeadRefRestoredEvent
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| PullRequest referenced by event.
-}
pullRequest :
    SelectionSet decodesTo Github.Object.PullRequest
    -> SelectionSet decodesTo Github.Object.HeadRefRestoredEvent
pullRequest object____ =
    Object.selectionForCompositeField "pullRequest" [] object____ identity
