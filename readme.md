## cs2-dedicated
Docker compose config based on https://github.com/joedwards32/CS2 with MatchZy.

## Steps

- Setup environment variables
- Setup `./admins.json`
    - https://shobhit-pathak.github.io/MatchZy/configuration/#creating-admins
    - https://docs.cssharp.dev/docs/admin-framework/defining-admins.html
    - Example:
    ```
    {
        "<username>": {
            "identity": "<STEAMID64>",
            "flags": [
                "@css/root"
            ]
        }
    }
    ```
- Install plugins by uncommenting: https://github.com/zhaoterryy/cs2-dedicated/blob/f09e450f2ef4de53d5661d341ca0cdf7f2f8b0d6/docker-compose.yml#L49-L50 Only need to run once or to update plugins. Does not hurt to re-run.
