# Usage:

```bash
chmod +x init.sh
docker build --tag tts .
docker run --rm -v $(pwd):/out tts xenia "Привет Ник+ита. Как твои дела? Что кушал?" 123.wav
```

### Voices:

* aidar
* baya
* kseniya
* xenia
* eugene
* random
