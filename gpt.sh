#!/bin/bash

function gpt()
{
# This puts your query into chatgpt and tries to get a bash command out of it
# it puts the result into your history, so press up to get access to it

# TODO: caching

preprompt="Write a single line bash command for the given task. For example list files in the users Downloads folder would be ls ~/Downloads. The task is "
args="$@"

if [ ! -v OPENAI_API_KEY ]
then
  echo OPENAI_API_KEY not set
  return -1
fi

tmpfile="$(mktemp)"
curl https://api.openai.com/v1/completions \
  -o "${tmpfile}" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d "{\"model\": \"gpt-3.5-turbo\", \"prompt\": \"$preprompt$args\", \"max_tokens\": 256, \"temperature\": 0}"
if [ $? -eq 0 ]
then
  result="$(jq -r '.choices[0].text' "${tmpfile}")"
  history -s "${result}"
else
  echo failed to access OpenAI API
  return -1
fi

}
