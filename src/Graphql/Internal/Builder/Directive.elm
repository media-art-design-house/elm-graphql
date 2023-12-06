module Graphql.Internal.Builder.Directive exposing (directive)

import Graphql.Directive exposing (Directive(..))
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)


directive : String -> List Argument -> Directive
directive name args =
    Directive name args
