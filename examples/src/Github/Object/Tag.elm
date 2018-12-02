-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Tag exposing (abbreviatedOid, commitResourcePath, commitUrl, id, message, name, oid, repository, selection, tagger, target)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Tag
selection constructor =
    Object.selection constructor


{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : SelectionSet String Github.Object.Tag
abbreviatedOid =
    Object.fieldDecoder "abbreviatedOid" [] Decode.string


{-| The HTTP path for this Git object
-}
commitResourcePath : SelectionSet Github.Scalar.Uri Github.Object.Tag
commitResourcePath =
    Object.fieldDecoder "commitResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this Git object
-}
commitUrl : SelectionSet Github.Scalar.Uri Github.Object.Tag
commitUrl =
    Object.fieldDecoder "commitUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


id : SelectionSet Github.Scalar.Id Github.Object.Tag
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The Git tag message.
-}
message : SelectionSet (Maybe String) Github.Object.Tag
message =
    Object.fieldDecoder "message" [] (Decode.string |> Decode.nullable)


{-| The Git tag name.
-}
name : SelectionSet String Github.Object.Tag
name =
    Object.fieldDecoder "name" [] Decode.string


{-| The Git object ID
-}
oid : SelectionSet Github.Scalar.GitObjectID Github.Object.Tag
oid =
    Object.fieldDecoder "oid" [] (Object.scalarDecoder |> Decode.map Github.Scalar.GitObjectID)


{-| The Repository the Git object belongs to
-}
repository : SelectionSet decodesTo Github.Object.Repository -> SelectionSet decodesTo Github.Object.Tag
repository object_ =
    Object.selectionField "repository" [] object_ identity


{-| Details about the tag author.
-}
tagger : SelectionSet decodesTo Github.Object.GitActor -> SelectionSet (Maybe decodesTo) Github.Object.Tag
tagger object_ =
    Object.selectionField "tagger" [] object_ (identity >> Decode.nullable)


{-| The Git object the tag points to.
-}
target : SelectionSet decodesTo Github.Interface.GitObject -> SelectionSet decodesTo Github.Object.Tag
target object_ =
    Object.selectionField "target" [] object_ identity
