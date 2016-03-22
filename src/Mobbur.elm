module Mobbur where
import Time exposing (Time, second, minute, every)
import Html exposing (Html, text)

import StartApp.Simple as StartApp


main =
  StartApp.start { model = model, view = view, update = update }



-- MODEL

type alias Model =
  { running : Bool
  , duration : Time
  }


model : Model
model =
  { running = True
  , duration = 8 * minute
  }


-- ACTION

type Action
  = TimeIsUp
  | Stop
  | Tick
  | Start

-- main : Signal Html
-- main =
--     Signal.map timer (every second)
update : Action -> Model -> Model
update action model =
  case action of
    Tick -> { model | duration = model.duration - second }
    Stop -> { model | running = False }

timer : Time -> Html
timer t = text (toString (model.duration - second))


foo : String
foo = "Hello world"
