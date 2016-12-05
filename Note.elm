module Note exposing (Model, Note)

type alias Note = { name : String , body : String }
type Model = List Note
