-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.TeamRepositoryEdge exposing (cursor, node, permission, selection)

import Github.Enum.RepositoryPermission
import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.TeamRepositoryEdge
selection constructor =
    Object.selection constructor


cursor : SelectionSet String Github.Object.TeamRepositoryEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : SelectionSet decodesTo Github.Object.Repository -> SelectionSet decodesTo Github.Object.TeamRepositoryEdge
node object_ =
    Object.selectionField "node" [] object_ identity


{-| The permission level the team has on the repository
-}
permission : SelectionSet Github.Enum.RepositoryPermission.RepositoryPermission Github.Object.TeamRepositoryEdge
permission =
    Object.fieldDecoder "permission" [] Github.Enum.RepositoryPermission.decoder
