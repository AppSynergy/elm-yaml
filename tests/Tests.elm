module Tests where

import ElmTest exposing (..)

import String

import Yaml


block1 : (String, List String)
block1 =
  (
  """
  - Mark McGwire
  - Sammy Sosa
  - Ken Griffey
  """
  , [ "Mark McGwire", "Sammy Sosa", "Ken Griffey" ]
  )


all : Test
all =
  suite "All the tests"
  [ suite "Silly tests"
    [ test "Test the test1" (assertEqual 42 Yaml.answer)
    , test "Test the test2" (assertEqual (Just ["Dave"]) (List.tail Yaml.trivia))
    ]
  , suite "Collection Tests"
    [ test "Basic block" (assertEqual (snd block1) (Yaml.convert (fst block1)))
    ]
  ]
