module Graphql.Document.Directive exposing (serialize)

import Graphql.Directive exposing (Directive(..))
import Graphql.Document.Argument as Argument


serialize : List Directive -> String
serialize directives =
    case directives of
        [] ->
            ""

        nonemptyDirectives ->
            nonemptyDirectives
                |> List.map directiveToString
                |> String.join " "


directiveToString : Directive -> String
directiveToString (Directive name args) =
    "@" ++ name ++ Argument.serialize args
