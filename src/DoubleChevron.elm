module DoubleChevron where
import Time exposing (second, every)
import Html exposing (text)

main = Signal.map foo (every second)

foo = text << toString
