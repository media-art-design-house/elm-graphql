-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.DeploymentStatus exposing (createdAt, creator, deployment, description, environmentUrl, id, logUrl, selection, state, updatedAt)

import Github.Enum.DeploymentStatusState
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.DeploymentStatus
selection constructor =
    Object.selection constructor


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Object.DeploymentStatus
createdAt =
    Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| Identifies the actor who triggered the deployment.
-}
creator : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.DeploymentStatus
creator object_ =
    Object.selectionField "creator" [] object_ (identity >> Decode.nullable)


{-| Identifies the deployment associated with status.
-}
deployment : SelectionSet decodesTo Github.Object.Deployment -> SelectionSet decodesTo Github.Object.DeploymentStatus
deployment object_ =
    Object.selectionField "deployment" [] object_ identity


{-| Identifies the description of the deployment.
-}
description : SelectionSet (Maybe String) Github.Object.DeploymentStatus
description =
    Object.fieldDecoder "description" [] (Decode.string |> Decode.nullable)


{-| Identifies the environment URL of the deployment.
-}
environmentUrl : SelectionSet (Maybe Github.Scalar.Uri) Github.Object.DeploymentStatus
environmentUrl =
    Object.fieldDecoder "environmentUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri |> Decode.nullable)


id : SelectionSet Github.Scalar.Id Github.Object.DeploymentStatus
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Identifies the log URL of the deployment.
-}
logUrl : SelectionSet (Maybe Github.Scalar.Uri) Github.Object.DeploymentStatus
logUrl =
    Object.fieldDecoder "logUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri |> Decode.nullable)


{-| Identifies the current state of the deployment.
-}
state : SelectionSet Github.Enum.DeploymentStatusState.DeploymentStatusState Github.Object.DeploymentStatus
state =
    Object.fieldDecoder "state" [] Github.Enum.DeploymentStatusState.decoder


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.Scalar.DateTime Github.Object.DeploymentStatus
updatedAt =
    Object.fieldDecoder "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)
