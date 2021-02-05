-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Ref exposing (..)

import Github.Enum.PullRequestState
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


type alias AssociatedPullRequestsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    , states : OptionalArgument (List Github.Enum.PullRequestState.PullRequestState)
    , labels : OptionalArgument (List String)
    , headRefName : OptionalArgument String
    , baseRefName : OptionalArgument String
    , orderBy : OptionalArgument Github.InputObject.IssueOrder
    }


{-| A list of pull requests with this ref as the head ref.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - states - A list of states to filter the pull requests by.
  - labels - A list of label names to filter the pull requests by.
  - headRefName - The head ref name to filter the pull requests by.
  - baseRefName - The base ref name to filter the pull requests by.
  - orderBy - Ordering options for pull requests returned from the connection.

-}
associatedPullRequests :
    (AssociatedPullRequestsOptionalArguments -> AssociatedPullRequestsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.PullRequestConnection
    -> SelectionSet decodesTo Github.Object.Ref
associatedPullRequests fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent, states = Absent, labels = Absent, headRefName = Absent, baseRefName = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "last" filledInOptionals____.last Encode.int, Argument.optional "before" filledInOptionals____.before Encode.string, Argument.optional "states" filledInOptionals____.states (Encode.enum Github.Enum.PullRequestState.toString |> Encode.list), Argument.optional "labels" filledInOptionals____.labels (Encode.string |> Encode.list), Argument.optional "headRefName" filledInOptionals____.headRefName Encode.string, Argument.optional "baseRefName" filledInOptionals____.baseRefName Encode.string, Argument.optional "orderBy" filledInOptionals____.orderBy Github.InputObject.encodeIssueOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "associatedPullRequests" optionalArgs object____ identity


id : SelectionSet Github.ScalarCodecs.Id Github.Object.Ref
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The ref name.
-}
name : SelectionSet String Github.Object.Ref
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The ref's prefix, such as `refs/heads/` or `refs/tags/`.
-}
prefix : SelectionSet String Github.Object.Ref
prefix =
    Object.selectionForField "String" "prefix" [] Decode.string


{-| The repository the ref belongs to.
-}
repository :
    SelectionSet decodesTo Github.Object.Repository
    -> SelectionSet decodesTo Github.Object.Ref
repository object____ =
    Object.selectionForCompositeField "repository" [] object____ identity


{-| The object the ref points to.
-}
target :
    SelectionSet decodesTo Github.Interface.GitObject
    -> SelectionSet decodesTo Github.Object.Ref
target object____ =
    Object.selectionForCompositeField "target" [] object____ identity
