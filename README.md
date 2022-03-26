# CV

CV is available here: https://kuyanov.github.io/CV/CV-[target].pdf,

where [target] is `it` or `math`

# Build

```
docker build -t cv_[target] --build-arg target=[target] .
docker run -v $PWD/[target]:/CV/[target] -t cv_[target]
```
