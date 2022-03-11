# CV

CV is available here: https://kuyanov.github.io/cv/cv-[target].pdf,

where [target] is `common`, `it` or `math`

# Build

```
docker build -t cv_[target] --build-arg target=[target] .
docker run -v $PWD/[target]:/cv/[target] -t cv_[target]
```
