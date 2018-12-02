-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.CrossReferencedEvent exposing (actor, createdAt, id, isCrossRepository, referencedAt, resourcePath, selection, source, target, url, willCloseTarget)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.CrossReferencedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.CrossReferencedEvent
actor object_ =
    Object.selectionField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Object.CrossReferencedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


id : SelectionSet Github.Scalar.Id Github.Object.CrossReferencedEvent
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Reference originated in a different repository.
-}
isCrossRepository : SelectionSet Bool Github.Object.CrossReferencedEvent
isCrossRepository =
    Object.fieldDecoder "isCrossRepository" [] Decode.bool


{-| Identifies when the reference was made.
-}
referencedAt : SelectionSet Github.Scalar.DateTime Github.Object.CrossReferencedEvent
referencedAt =
    Object.fieldDecoder "referencedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The HTTP path for this pull request.
-}
resourcePath : SelectionSet Github.Scalar.Uri Github.Object.CrossReferencedEvent
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Issue or pull request that made the reference.
-}
source : SelectionSet decodesTo Github.Union.ReferencedSubject -> SelectionSet decodesTo Github.Object.CrossReferencedEvent
source object_ =
    Object.selectionField "source" [] object_ identity


{-| Issue or pull request to which the reference was made.
-}
target : SelectionSet decodesTo Github.Union.ReferencedSubject -> SelectionSet decodesTo Github.Object.CrossReferencedEvent
target object_ =
    Object.selectionField "target" [] object_ identity


{-| The HTTP URL for this pull request.
-}
url : SelectionSet Github.Scalar.Uri Github.Object.CrossReferencedEvent
url =
    Object.fieldDecoder "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Checks if the target will be closed when the source is merged.
-}
willCloseTarget : SelectionSet Bool Github.Object.CrossReferencedEvent
willCloseTarget =
    Object.fieldDecoder "willCloseTarget" [] Decode.bool
