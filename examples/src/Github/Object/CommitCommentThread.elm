-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.CommitCommentThread exposing (..)

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


type alias CommentsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| The comments that exist in this thread.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
comments :
    (CommentsOptionalArguments -> CommentsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.CommitCommentConnection
    -> SelectionSet decodesTo Github.Object.CommitCommentThread
comments fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "last" filledInOptionals____.last Encode.int, Argument.optional "before" filledInOptionals____.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "comments" optionalArgs____ object____ identity


{-| The commit the comments were made on.
-}
commit :
    SelectionSet decodesTo Github.Object.Commit
    -> SelectionSet decodesTo Github.Object.CommitCommentThread
commit object____ =
    Object.selectionForCompositeField "commit" [] object____ identity


id : SelectionSet Github.ScalarCodecs.Id Github.Object.CommitCommentThread
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The file the comments were made on.
-}
path : SelectionSet (Maybe String) Github.Object.CommitCommentThread
path =
    Object.selectionForField "(Maybe String)" "path" [] (Decode.string |> Decode.nullable)


{-| The position in the diff for the commit that the comment was made on.
-}
position : SelectionSet (Maybe Int) Github.Object.CommitCommentThread
position =
    Object.selectionForField "(Maybe Int)" "position" [] (Decode.int |> Decode.nullable)


{-| The repository associated with this node.
-}
repository :
    SelectionSet decodesTo Github.Object.Repository
    -> SelectionSet decodesTo Github.Object.CommitCommentThread
repository object____ =
    Object.selectionForCompositeField "repository" [] object____ identity
