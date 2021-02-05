-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.Reaction exposing (..)

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
import GithubNoFormat.Enum.ReactionContent
{-| Identifies the emoji reaction.
-}
content : SelectionSet GithubNoFormat.Enum.ReactionContent.ReactionContent GithubNoFormat.Object.Reaction
content =
      Object.selectionForField "Enum.ReactionContent.ReactionContent" "content" [] (GithubNoFormat.Enum.ReactionContent.decoder)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.Reaction
createdAt =
      Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) GithubNoFormat.Object.Reaction
databaseId =
      Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.Reaction
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The reactable piece of content
-}
reactable : SelectionSet decodesTo GithubNoFormat.Interface.Reactable
 -> SelectionSet decodesTo GithubNoFormat.Object.Reaction
reactable object____ =
      Object.selectionForCompositeField "reactable" [] (object____) (identity)


{-| Identifies the user who created this reaction.
-}
user : SelectionSet decodesTo GithubNoFormat.Object.User
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.Reaction
user object____ =
      Object.selectionForCompositeField "user" [] (object____) (identity >> Decode.nullable)
