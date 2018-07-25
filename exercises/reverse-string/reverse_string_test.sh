#!/usr/bin/env bats

# Version = 1.1.0

@test "an empty string" {
  #skip
  run bash reverse_string.sh ""
  [ "$status" -eq 0 ]
  [ "$output" == "" ]
}

@test "a word" {
  skip
  run bash reverse_string.sh "robot"
  [ "$status" -eq 0 ]
  [ "$output" == "tobor" ]
}

@test "a capitalized word" {
  skip
  run bash reverse_string.sh "Ramen"
  [ "$status" -eq 0 ]
  [ "$output" == "nemaR" ]
}

@test "a sentence with punctuation" {
  skip
  run bash reverse_string.sh "I'm hungry!"
  [ "$status" -eq 0 ]
  [ "$output" == "!yrgnuh m'I" ]
}

@test "a palindrome" {
  skip
  run bash reverse_string.sh "racecar"
  [ "$status" -eq 0 ]
  [ "$output" == "racecar" ]
}
