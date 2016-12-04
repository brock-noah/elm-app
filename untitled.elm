import Html exposing (..)
import Html.Attributes exposing (..)
import String

type alias Note = { name : String , body : String }

main =
  makeList
    [ { name = "yes", body = "yes"}
    , { name = "no", body = "no"}
    ]

makeList : List Note -> Html msg
makeList notes = ol [] (List.map viewString notes)

viewString : Note -> Html msg
viewString note = li [] [ text (String.toUpper note.body) ]
