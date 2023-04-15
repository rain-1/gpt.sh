# gpt.sh

Setup:

```
source secret.sh # contains OPENAI_API_KEY=blahblah
source gpt.sh
```

To use the tool ask it for a bash command then press up to view and edit the line before running it

# Example

```
[river@river gpt-bash]$ gpt show me the size of all the files in this directory
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   546  100   272  100   274    538    542 --:--:-- --:--:-- --:--:--  1081
[river@river gpt-bash]$ 
<<<< USER PRESSES THE UP KEY AT THIS POINT >>>
du -h *
4.0K	completions
4.0K	gpt2MpP
4.0K	gpteOvu
4.0K	gpt.py
4.0K	gpt.sh
4.0K	gptSN3p
4.0K	key.py
44K	models.txt
4.0K	openai.key.txt
4.0K	request-compare.txt
4.0K	secret.sh
4.0K	secret.sh~
4.0K	tmp.TX8vjksf9f
4.0K	tmp.txt
[river@river gpt-bash]$ gpt search all the files in this folder for the string id
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   558  100   282  100   276    448    439 --:--:-- --:--:-- --:--:--   888
[river@river gpt-bash]$ 

grep -r "id" .
./models.txt:      "id": "babbage",
./models.txt:          "id": "modelperm-49FUp5v084tBB49tC4z8LPH5",
./models.txt:      "id": "davinci",
./models.txt:          "id": "modelperm-U6ZwlyAd0LyMk4rcMdz33Yc3",
./models.txt:      "id": "text-davinci-edit-001",
./models.txt:          "id": "modelperm-otmQSS0hmabtVGHI9QB3bct3",
./models.txt:      "id": "babbage-code-search-code",
./models.txt:          "id": "modelperm-4qRnA3Hj8HIJbgo0cGbcmErn",
./models.txt:      "id": "text-similarity-babbage-001",
./models.txt:          "id": "modelperm-48kcCHhfzvnfY84OtJf5m8Cz",
./models.txt:      "id": "code-davinci-edit-001",
./models.txt:          "id": "modelperm-Foe5Y4TvaKveYxt74oKMw8IB",
./models.txt:      "id": "text-davinci-001",
./models.txt:          "id": "modelperm-MVM5NfoRjXkDve3uQW3YZDDt",
./models.txt:      "id": "ada",
./models.txt:          "id": "modelperm-u0nKN4ub7EVQudgMuvCuvDjc",
^C
```
