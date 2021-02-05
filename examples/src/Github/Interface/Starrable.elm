-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Interface.Starrable exposing (..)

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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


type alias Fragments decodesTo =
    { onGist : SelectionSet decodesTo Github.Object.Gist
    , onRepository : SelectionSet decodesTo Github.Object.Repository
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Github.Interface.Starrable
fragments selections____ =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "Gist" selections____.onGist
        , Object.buildFragment "Repository" selections____.onRepository
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onGist = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepository = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


id : SelectionSet Github.ScalarCodecs.Id Github.Interface.Starrable
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


type alias StargazersOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    , orderBy : OptionalArgument Github.InputObject.StarOrder
    }


{-| A list of users who have starred this starrable.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - orderBy - Order for connection

-}
stargazers :
    (StargazersOptionalArguments -> StargazersOptionalArguments)
    -> SelectionSet decodesTo Github.Object.StargazerConnection
    -> SelectionSet decodesTo Github.Interface.Starrable
stargazers fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "last" filledInOptionals____.last Encode.int, Argument.optional "before" filledInOptionals____.before Encode.string, Argument.optional "orderBy" filledInOptionals____.orderBy Github.InputObject.encodeStarOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "stargazers" optionalArgs object____ identity


{-| Returns a boolean indicating whether the viewing user has starred this starrable.
-}
viewerHasStarred : SelectionSet Bool Github.Interface.Starrable
viewerHasStarred =
    Object.selectionForField "Bool" "viewerHasStarred" [] Decode.bool
