import Html exposing (Html, text, beginnerProgram, div, input, ol, li, button)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import String
import Note exposing (NoteList, Note)

type alias Model = NoteList
model = [{ name = "name", body = "body"}]
main =
  beginnerProgram { model = model, view = view, update = update }

view : Model -> Html Action
view model = div [] 
  [  button [ onClick Add ] [ text "+" ]
  ,  button [ onClick Restart ][ text "-" ]
  ,  input [ onInput Insert ][]
  ,  div [] [ text "sample" ]
  ,  makeList model
  ]

makeList : List Note -> Html a
makeList notes = ol [] (List.map viewString notes)

itemStyle =
  style
    [ ("backgroundColor", "rgb(238, 238, 236)"), ("padding", "5px") ]

viewString : Note -> Html a
viewString note = li [ itemStyle ] [ text (String.toUpper (note.name) ++ note.body)]

type Action = Add | Restart | Insert String
update : Action -> List Note -> List Note
update msg model =
  case msg of
    Add ->
      model ++ [ { name = "name", body = "yes"} ]
    Restart ->
      []
    Insert body ->
      model ++ [ { name = "a", body = body}]
