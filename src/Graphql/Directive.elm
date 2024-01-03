module Graphql.Directive exposing (Directive(..))

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)


type Directive
    = Directive String (List Argument)
