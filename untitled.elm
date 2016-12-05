import Html exposing (Html, text, beginnerProgram, div, input, ol, li, button)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import String

type alias Note = { name : String , body : String }

type Model = List Note
type Msg = Add

model = [{ name = "yes", body = "yes"}]
main =
  beginnerProgram { model = model, view = view, update = update }

view : List Note -> Html Msg
view model = div [] 
  [  button [ onClick Add ] [ text "+" ]
  ,  makeList model
  ]

other =
  makeList
    [ { name = "yes", body = "yes"}
    , { name = "no", body = "no"}
    ]

makeList : List Note -> Html a
makeList notes = ol [] (List.map viewString notes)

viewString : Note -> Html a
viewString note = li [] [ text (String.toUpper note.body) ]

update : Msg -> List Note -> List Note
update msg model =
  case msg of
    Add ->
      model ++ [ { name = "yes", body = "yes"} ]

