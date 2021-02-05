-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.ReviewDismissedEvent exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import GithubNoFormat.Object
import GithubNoFormat.Interface
import GithubNoFormat.Union
import GithubNoFormat.Scalar
import GithubNoFormat.InputObject
import GithubNoFormat.ScalarCodecs
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)
import GithubNoFormat.Enum.PullRequestReviewState
{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo GithubNoFormat.Interface.Actor
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ReviewDismissedEvent
actor object____ =
      Object.selectionForCompositeField "actor" [] (object____) (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.ReviewDismissedEvent
createdAt =
      Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) GithubNoFormat.Object.ReviewDismissedEvent
databaseId =
      Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.ReviewDismissedEvent
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the message associated with the 'review_dismissed' event.
-}
message : SelectionSet String GithubNoFormat.Object.ReviewDismissedEvent
message =
      Object.selectionForField "String" "message" [] (Decode.string)


{-| The message associated with the event, rendered to HTML.
-}
messageHtml : SelectionSet GithubNoFormat.ScalarCodecs.Html GithubNoFormat.Object.ReviewDismissedEvent
messageHtml =
      Object.selectionForField "ScalarCodecs.Html" "messageHtml" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| Identifies the previous state of the review with the 'review_dismissed' event.
-}
previousReviewState : SelectionSet GithubNoFormat.Enum.PullRequestReviewState.PullRequestReviewState GithubNoFormat.Object.ReviewDismissedEvent
previousReviewState =
      Object.selectionForField "Enum.PullRequestReviewState.PullRequestReviewState" "previousReviewState" [] (GithubNoFormat.Enum.PullRequestReviewState.decoder)


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet decodesTo GithubNoFormat.Object.PullRequest
 -> SelectionSet decodesTo GithubNoFormat.Object.ReviewDismissedEvent
pullRequest object____ =
      Object.selectionForCompositeField "pullRequest" [] (object____) (identity)


{-| Identifies the commit which caused the review to become stale.
-}
pullRequestCommit : SelectionSet decodesTo GithubNoFormat.Object.PullRequestCommit
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ReviewDismissedEvent
pullRequestCommit object____ =
      Object.selectionForCompositeField "pullRequestCommit" [] (object____) (identity >> Decode.nullable)


{-| The HTTP path for this review dismissed event.
-}
resourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.ReviewDismissedEvent
resourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Identifies the review associated with the 'review_dismissed' event.
-}
review : SelectionSet decodesTo GithubNoFormat.Object.PullRequestReview
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ReviewDismissedEvent
review object____ =
      Object.selectionForCompositeField "review" [] (object____) (identity >> Decode.nullable)


{-| The HTTP URL for this review dismissed event.
-}
url : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.ReviewDismissedEvent
url =
      Object.selectionForField "ScalarCodecs.Uri" "url" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)
