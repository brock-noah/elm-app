import Html exposing (Html, text, beginnerProgram, div, input, ol, li, button)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import String
import Note exposing (Model, Note)

type Action = Add

model = [{ name = "yes", body = "yes"}]
main =
  beginnerProgram { model = model, view = view, update = update }

view : List Note -> Html Action
view model = div [] 
  [  button [ onClick Add ] [ text "+" ]
  ,  makeList model
  ]

makeList : List Note -> Html a
makeList notes = ol [] (List.map viewString notes)

viewString : Note -> Html a
viewString note = li [] [ text (String.toUpper note.body) ]

update : Action -> List Note -> List Note
update msg model =
  case msg of
    Add ->
      model ++ [ { name = "yes", body = "yes"} ]
