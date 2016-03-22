module Tests where

import ElmTest exposing (..)

import String
import Mobbur exposing (..)


all : Test
all =
    suite "Hello World"
        [
            test "Hello world" (assertEqual "Hello world" foo)
            test "Test <<" (assertEqual )
        ]
