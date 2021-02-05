-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Interface.Comment exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import GithubNoFormat.Object
import GithubNoFormat.Interface
import GithubNoFormat.Union
import GithubNoFormat.Scalar
import GithubNoFormat.InputObject
import GithubNoFormat.ScalarCodecs
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)
import GithubNoFormat.Enum.CommentAuthorAssociation

type alias Fragments decodesTo =
    {
    onCommitComment : SelectionSet decodesTo GithubNoFormat.Object.CommitComment,
 onGistComment : SelectionSet decodesTo GithubNoFormat.Object.GistComment,
 onIssue : SelectionSet decodesTo GithubNoFormat.Object.Issue,
 onIssueComment : SelectionSet decodesTo GithubNoFormat.Object.IssueComment,
 onPullRequest : SelectionSet decodesTo GithubNoFormat.Object.PullRequest,
 onPullRequestReview : SelectionSet decodesTo GithubNoFormat.Object.PullRequestReview,
 onPullRequestReviewComment : SelectionSet decodesTo GithubNoFormat.Object.PullRequestReviewComment
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
      Fragments decodesTo
      -> SelectionSet decodesTo GithubNoFormat.Interface.Comment
fragments selections____ =
    Object.exhaustiveFragmentSelection
        [
         Object.buildFragment "CommitComment" selections____.onCommitComment,
 Object.buildFragment "GistComment" selections____.onGistComment,
 Object.buildFragment "Issue" selections____.onIssue,
 Object.buildFragment "IssueComment" selections____.onIssueComment,
 Object.buildFragment "PullRequest" selections____.onPullRequest,
 Object.buildFragment "PullRequestReview" selections____.onPullRequestReview,
 Object.buildFragment "PullRequestReviewComment" selections____.onPullRequestReviewComment
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    {
      onCommitComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onGistComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onIssue = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onIssueComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onPullRequest = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onPullRequestReview = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
 onPullRequestReviewComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }
{-| The actor who authored the comment.
-}
author : SelectionSet decodesTo GithubNoFormat.Interface.Actor
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Interface.Comment
author object____ =
      Object.selectionForCompositeField "author" [] (object____) (identity >> Decode.nullable)


{-| Author's association with the subject of the comment.
-}
authorAssociation : SelectionSet GithubNoFormat.Enum.CommentAuthorAssociation.CommentAuthorAssociation GithubNoFormat.Interface.Comment
authorAssociation =
      Object.selectionForField "Enum.CommentAuthorAssociation.CommentAuthorAssociation" "authorAssociation" [] (GithubNoFormat.Enum.CommentAuthorAssociation.decoder)


{-| The comment body as Markdown.
-}
body : SelectionSet String GithubNoFormat.Interface.Comment
body =
      Object.selectionForField "String" "body" [] (Decode.string)


{-| The comment body rendered to HTML.
-}
bodyHTML : SelectionSet GithubNoFormat.ScalarCodecs.Html GithubNoFormat.Interface.Comment
bodyHTML =
      Object.selectionForField "ScalarCodecs.Html" "bodyHTML" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Interface.Comment
createdAt =
      Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : SelectionSet Bool GithubNoFormat.Interface.Comment
createdViaEmail =
      Object.selectionForField "Bool" "createdViaEmail" [] (Decode.bool)


{-| The actor who edited the comment.
-}
editor : SelectionSet decodesTo GithubNoFormat.Interface.Actor
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Interface.Comment
editor object____ =
      Object.selectionForCompositeField "editor" [] (object____) (identity >> Decode.nullable)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Interface.Comment
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The moment the editor made the last edit
-}
lastEditedAt : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Interface.Comment
lastEditedAt =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "lastEditedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Identifies when the comment was published at.
-}
publishedAt : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Interface.Comment
publishedAt =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "publishedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Interface.Comment
updatedAt =
      Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


type alias UserContentEditsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| A list of edits to this content.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
userContentEdits : (UserContentEditsOptionalArguments -> UserContentEditsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.UserContentEditConnection
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Interface.Comment
userContentEdits fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals____.first (Encode.int), Argument.optional "after" filledInOptionals____.after (Encode.string), Argument.optional "last" filledInOptionals____.last (Encode.int), Argument.optional "before" filledInOptionals____.before (Encode.string) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "userContentEdits" optionalArgs (object____) (identity >> Decode.nullable)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : SelectionSet Bool GithubNoFormat.Interface.Comment
viewerDidAuthor =
      Object.selectionForField "Bool" "viewerDidAuthor" [] (Decode.bool)
