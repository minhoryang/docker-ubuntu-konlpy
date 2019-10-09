- **WARNING: This repo was forked for the development environment of KoNLPy.**

# docker-ubuntu-konlpy
Docker image of latest Ubuntu for KoNLPy on Python 3.

## Build

```bash
$ docker build -t konlpy -f Dockerfile .
```

## Run

```bash
$ docker run -i -t konlpy
```

```python
from konlpy.tag import *
mecab = Mecab()
kkma = Kkma()
okt = Okt()
han = Hannanum()
kmr = Komoran()
mecab.pos("안녕 친구들")
kkma.pos("안녕 친구들")
okt.pos("안녕 친구들")
han.pos("안녕 친구들")
kmr.pos("안녕 친구들")
# all works fine
```

## Test

```bash
$ docker run -i -t konlpy -m pytest /sandbox
```
