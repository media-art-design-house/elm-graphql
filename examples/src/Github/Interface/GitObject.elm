-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Interface.GitObject exposing (Fragments, abbreviatedOid, commitResourcePath, commitUrl, fragments, id, maybeFragments, oid, repository, selection)

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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this Interface.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.GitObject
selection constructor =
    Object.selection constructor


type alias Fragments decodesTo =
    { onBlob : SelectionSet decodesTo Github.Object.Blob
    , onCommit : SelectionSet decodesTo Github.Object.Commit
    , onTag : SelectionSet decodesTo Github.Object.Tag
    , onTree : SelectionSet decodesTo Github.Object.Tree
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Github.Interface.GitObject
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "Blob" selections.onBlob
        , Object.buildFragment "Commit" selections.onCommit
        , Object.buildFragment "Tag" selections.onTag
        , Object.buildFragment "Tree" selections.onTree
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe a)
maybeFragments =
    { onBlob = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onCommit = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTag = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTree = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : SelectionSet String Github.Interface.GitObject
abbreviatedOid =
    Object.fieldDecoder "abbreviatedOid" [] Decode.string


{-| The HTTP path for this Git object
-}
commitResourcePath : SelectionSet Github.Scalar.Uri Github.Interface.GitObject
commitResourcePath =
    Object.fieldDecoder "commitResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this Git object
-}
commitUrl : SelectionSet Github.Scalar.Uri Github.Interface.GitObject
commitUrl =
    Object.fieldDecoder "commitUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


id : SelectionSet Github.Scalar.Id Github.Interface.GitObject
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The Git object ID
-}
oid : SelectionSet Github.Scalar.GitObjectID Github.Interface.GitObject
oid =
    Object.fieldDecoder "oid" [] (Object.scalarDecoder |> Decode.map Github.Scalar.GitObjectID)


{-| The Repository the Git object belongs to
-}
repository : SelectionSet decodesTo Github.Object.Repository -> SelectionSet decodesTo Github.Interface.GitObject
repository object_ =
    Object.selectionField "repository" [] object_ identity
