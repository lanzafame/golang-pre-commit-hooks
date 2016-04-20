# golang-pre-commit-hooks

Pre-commit hooks for Golang projects. See http://pre-commit.com/ for pre-commit installation instructions.

### Using these hooks with pre-commit

Add this to your repository's `.pre-commit-config.yaml`:

```
-   repo: git://github.com/chuyeow/golang-pre-commit-hooks
    sha: HEAD
    hooks:
    -   id: go-lint
    -   id: go-vet
    -   id: go-fmt
    -   id: go-metalinter
```
