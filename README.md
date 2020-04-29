# TERRAFORM-PLAYGROUND  
This repository is a playground to play with terraform structures

## Avaliable strucutures
- LIST
- MAP

## Output
```js
# Resource that was created of two lists combination
depends_on_concated = [
    default value on abstract dns,
    ibjected value 1,
    injected value 2
]
# Resource that was created by iteration of map structure
secrets = [
    APP_HOST,
    APP_PORT,
    DEBUG,
    FLAG,
    NODE_ENV
]
```