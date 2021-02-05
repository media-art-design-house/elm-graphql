-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Commit exposing (..)

import Github.Enum.SubscriptionState
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


{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : SelectionSet String Github.Object.Commit
abbreviatedOid =
    Object.selectionForField "String" "abbreviatedOid" [] Decode.string


{-| The number of additions in this commit.
-}
additions : SelectionSet Int Github.Object.Commit
additions =
    Object.selectionForField "Int" "additions" [] Decode.int


{-| Authorship details of the commit.
-}
author :
    SelectionSet decodesTo Github.Object.GitActor
    -> SelectionSet (Maybe decodesTo) Github.Object.Commit
author object____ =
    Object.selectionForCompositeField "author" [] object____ (identity >> Decode.nullable)


{-| Check if the committer and the author match.
-}
authoredByCommitter : SelectionSet Bool Github.Object.Commit
authoredByCommitter =
    Object.selectionForField "Bool" "authoredByCommitter" [] Decode.bool


{-| The datetime when this commit was authored.
-}
authoredDate : SelectionSet Github.ScalarCodecs.DateTime Github.Object.Commit
authoredDate =
    Object.selectionForField "ScalarCodecs.DateTime" "authoredDate" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


type alias BlameRequiredArguments =
    { path : String }


{-| Fetches `git blame` information.

  - path - The file whose Git blame information you want.

-}
blame :
    BlameRequiredArguments
    -> SelectionSet decodesTo Github.Object.Blame
    -> SelectionSet decodesTo Github.Object.Commit
blame requiredArgs____ object____ =
    Object.selectionForCompositeField "blame" [ Argument.required "path" requiredArgs____.path Encode.string ] object____ identity


{-| The number of changed files in this commit.
-}
changedFiles : SelectionSet Int Github.Object.Commit
changedFiles =
    Object.selectionForField "Int" "changedFiles" [] Decode.int


type alias CommentsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| Comments made on the commit.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
comments :
    (CommentsOptionalArguments -> CommentsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.CommitCommentConnection
    -> SelectionSet decodesTo Github.Object.Commit
comments fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "last" filledInOptionals____.last Encode.int, Argument.optional "before" filledInOptionals____.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "comments" optionalArgs____ object____ identity


{-| The HTTP path for this Git object
-}
commitResourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.Commit
commitResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "commitResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this Git object
-}
commitUrl : SelectionSet Github.ScalarCodecs.Uri Github.Object.Commit
commitUrl =
    Object.selectionForField "ScalarCodecs.Uri" "commitUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The datetime when this commit was committed.
-}
committedDate : SelectionSet Github.ScalarCodecs.DateTime Github.Object.Commit
committedDate =
    Object.selectionForField "ScalarCodecs.DateTime" "committedDate" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Check if commited via GitHub web UI.
-}
committedViaWeb : SelectionSet Bool Github.Object.Commit
committedViaWeb =
    Object.selectionForField "Bool" "committedViaWeb" [] Decode.bool


{-| Committership details of the commit.
-}
committer :
    SelectionSet decodesTo Github.Object.GitActor
    -> SelectionSet (Maybe decodesTo) Github.Object.Commit
committer object____ =
    Object.selectionForCompositeField "committer" [] object____ (identity >> Decode.nullable)


{-| The number of deletions in this commit.
-}
deletions : SelectionSet Int Github.Object.Commit
deletions =
    Object.selectionForField "Int" "deletions" [] Decode.int


type alias HistoryOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    , path : OptionalArgument String
    , author : OptionalArgument Github.InputObject.CommitAuthor
    , since : OptionalArgument Github.ScalarCodecs.GitTimestamp
    , until : OptionalArgument Github.ScalarCodecs.GitTimestamp
    }


{-| The linear commit history starting from (and including) this commit, in the same order as `git log`.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - path - If non-null, filters history to only show commits touching files under this path.
  - author - If non-null, filters history to only show commits with matching authorship.
  - since - Allows specifying a beginning time or date for fetching commits.
  - until - Allows specifying an ending time or date for fetching commits.

-}
history :
    (HistoryOptionalArguments -> HistoryOptionalArguments)
    -> SelectionSet decodesTo Github.Object.CommitHistoryConnection
    -> SelectionSet decodesTo Github.Object.Commit
history fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent, path = Absent, author = Absent, since = Absent, until = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "last" filledInOptionals____.last Encode.int, Argument.optional "before" filledInOptionals____.before Encode.string, Argument.optional "path" filledInOptionals____.path Encode.string, Argument.optional "author" filledInOptionals____.author Github.InputObject.encodeCommitAuthor, Argument.optional "since" filledInOptionals____.since (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapEncoder .codecGitTimestamp), Argument.optional "until" filledInOptionals____.until (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapEncoder .codecGitTimestamp) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "history" optionalArgs____ object____ identity


id : SelectionSet Github.ScalarCodecs.Id Github.Object.Commit
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The Git commit message
-}
message : SelectionSet String Github.Object.Commit
message =
    Object.selectionForField "String" "message" [] Decode.string


{-| The Git commit message body
-}
messageBody : SelectionSet String Github.Object.Commit
messageBody =
    Object.selectionForField "String" "messageBody" [] Decode.string


{-| The commit message body rendered to HTML.
-}
messageBodyHTML : SelectionSet Github.ScalarCodecs.Html Github.Object.Commit
messageBodyHTML =
    Object.selectionForField "ScalarCodecs.Html" "messageBodyHTML" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| The Git commit message headline
-}
messageHeadline : SelectionSet String Github.Object.Commit
messageHeadline =
    Object.selectionForField "String" "messageHeadline" [] Decode.string


{-| The commit message headline rendered to HTML.
-}
messageHeadlineHTML : SelectionSet Github.ScalarCodecs.Html Github.Object.Commit
messageHeadlineHTML =
    Object.selectionForField "ScalarCodecs.Html" "messageHeadlineHTML" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| The Git object ID
-}
oid : SelectionSet Github.ScalarCodecs.GitObjectID Github.Object.Commit
oid =
    Object.selectionForField "ScalarCodecs.GitObjectID" "oid" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder)


type alias ParentsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| The parents of a commit.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
parents :
    (ParentsOptionalArguments -> ParentsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.CommitConnection
    -> SelectionSet decodesTo Github.Object.Commit
parents fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "last" filledInOptionals____.last Encode.int, Argument.optional "before" filledInOptionals____.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "parents" optionalArgs____ object____ identity


{-| The datetime when this commit was pushed.
-}
pushedDate : SelectionSet (Maybe Github.ScalarCodecs.DateTime) Github.Object.Commit
pushedDate =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "pushedDate" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The Repository this commit belongs to
-}
repository :
    SelectionSet decodesTo Github.Object.Repository
    -> SelectionSet decodesTo Github.Object.Commit
repository object____ =
    Object.selectionForCompositeField "repository" [] object____ identity


{-| The HTTP path for this commit
-}
resourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.Commit
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Commit signing information, if present.
-}
signature :
    SelectionSet decodesTo Github.Interface.GitSignature
    -> SelectionSet (Maybe decodesTo) Github.Object.Commit
signature object____ =
    Object.selectionForCompositeField "signature" [] object____ (identity >> Decode.nullable)


{-| Status information for this commit
-}
status :
    SelectionSet decodesTo Github.Object.Status
    -> SelectionSet (Maybe decodesTo) Github.Object.Commit
status object____ =
    Object.selectionForCompositeField "status" [] object____ (identity >> Decode.nullable)


{-| Returns a URL to download a tarball archive for a repository. Note: For private repositories, these links are temporary and expire after five minutes.
-}
tarballUrl : SelectionSet Github.ScalarCodecs.Uri Github.Object.Commit
tarballUrl =
    Object.selectionForField "ScalarCodecs.Uri" "tarballUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Commit's root Tree
-}
tree :
    SelectionSet decodesTo Github.Object.Tree
    -> SelectionSet decodesTo Github.Object.Commit
tree object____ =
    Object.selectionForCompositeField "tree" [] object____ identity


{-| The HTTP path for the tree of this commit
-}
treeResourcePath : SelectionSet Github.ScalarCodecs.Uri Github.Object.Commit
treeResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "treeResourcePath" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for the tree of this commit
-}
treeUrl : SelectionSet Github.ScalarCodecs.Uri Github.Object.Commit
treeUrl =
    Object.selectionForField "ScalarCodecs.Uri" "treeUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this commit
-}
url : SelectionSet Github.ScalarCodecs.Uri Github.Object.Commit
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : SelectionSet Bool Github.Object.Commit
viewerCanSubscribe =
    Object.selectionForField "Bool" "viewerCanSubscribe" [] Decode.bool


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : SelectionSet Github.Enum.SubscriptionState.SubscriptionState Github.Object.Commit
viewerSubscription =
    Object.selectionForField "Enum.SubscriptionState.SubscriptionState" "viewerSubscription" [] Github.Enum.SubscriptionState.decoder


{-| Returns a URL to download a zipball archive for a repository. Note: For private repositories, these links are temporary and expire after five minutes.
-}
zipballUrl : SelectionSet Github.ScalarCodecs.Uri Github.Object.Commit
zipballUrl =
    Object.selectionForField "ScalarCodecs.Uri" "zipballUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)
