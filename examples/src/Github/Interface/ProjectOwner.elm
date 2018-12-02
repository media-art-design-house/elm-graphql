-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Interface.ProjectOwner exposing (Fragments, ProjectRequiredArguments, ProjectsOptionalArguments, fragments, id, maybeFragments, project, projects, projectsResourcePath, projectsUrl, selection, viewerCanCreateProjects)

import Github.Enum.ProjectState
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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this Interface.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.ProjectOwner
selection constructor =
    Object.selection constructor


type alias Fragments decodesTo =
    { onOrganization : SelectionSet decodesTo Github.Object.Organization
    , onRepository : SelectionSet decodesTo Github.Object.Repository
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Github.Interface.ProjectOwner
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "Organization" selections.onOrganization
        , Object.buildFragment "Repository" selections.onRepository
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe a)
maybeFragments =
    { onOrganization = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepository = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


id : SelectionSet Github.Scalar.Id Github.Interface.ProjectOwner
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


type alias ProjectRequiredArguments =
    { number : Int }


{-| Find project by number.

  - number - The project number to find.

-}
project : ProjectRequiredArguments -> SelectionSet decodesTo Github.Object.Project -> SelectionSet (Maybe decodesTo) Github.Interface.ProjectOwner
project requiredArgs object_ =
    Object.selectionField "project" [ Argument.required "number" requiredArgs.number Encode.int ] object_ (identity >> Decode.nullable)


type alias ProjectsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    , orderBy : OptionalArgument Github.InputObject.ProjectOrder
    , search : OptionalArgument String
    , states : OptionalArgument (List Github.Enum.ProjectState.ProjectState)
    }


{-| A list of projects under the owner.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - orderBy - Ordering options for projects returned from the connection
  - search - Query to search projects by, currently only searching by name.
  - states - A list of states to filter the projects by.

-}
projects : (ProjectsOptionalArguments -> ProjectsOptionalArguments) -> SelectionSet decodesTo Github.Object.ProjectConnection -> SelectionSet decodesTo Github.Interface.ProjectOwner
projects fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, orderBy = Absent, search = Absent, states = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeProjectOrder, Argument.optional "search" filledInOptionals.search Encode.string, Argument.optional "states" filledInOptionals.states (Encode.enum Github.Enum.ProjectState.toString |> Encode.list) ]
                |> List.filterMap identity
    in
    Object.selectionField "projects" optionalArgs object_ identity


{-| The HTTP path listing owners projects
-}
projectsResourcePath : SelectionSet Github.Scalar.Uri Github.Interface.ProjectOwner
projectsResourcePath =
    Object.fieldDecoder "projectsResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL listing owners projects
-}
projectsUrl : SelectionSet Github.Scalar.Uri Github.Interface.ProjectOwner
projectsUrl =
    Object.fieldDecoder "projectsUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Can the current viewer create new projects on this owner.
-}
viewerCanCreateProjects : SelectionSet Bool Github.Interface.ProjectOwner
viewerCanCreateProjects =
    Object.fieldDecoder "viewerCanCreateProjects" [] Decode.bool
