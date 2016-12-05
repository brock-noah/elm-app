import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import String

type alias Note = { name : String , body : String }

type Model = List Note
model = [{ name = "yes", body = "yes"}]
main =
  beginnerProgram { model = model, view = view, update = update }


view : Model -> Html msg
view model = div [] [
    input [] []
  ]



other =
  makeList
    [ { name = "yes", body = "yes"}
    , { name = "no", body = "no"}
    ]

makeList : List Note -> Html msg
makeList notes = ol [] (List.map viewString notes)

viewString : Note -> Html msg
viewString note = li [] [ text (String.toUpper note.body) ]

--userControl: a -> Html msg
--userControl a = div [] [
--  input [placeholder "Note", onInput Add] []
--  button [ onClick Add ] [ text "+" ]
--]

type Msg = Add
update : Msg List Note -> List Note
update msg model =
  case msg of
    Add ->
      model ++ [ { name = "yes", body = "yes"} ]

    _ ->
      model

