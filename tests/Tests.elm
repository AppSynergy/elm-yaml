module Tests where

import ElmTest exposing (..)

import String

import Yaml

all : Test
all =
  suite "A Test Suite"
    [ test "Test the test1" (assertEqual 42 Yaml.answer)
    , test "Test the test2" (assertEqual (Just ["Dave"]) (List.tail Yaml.trivia))
    ]
