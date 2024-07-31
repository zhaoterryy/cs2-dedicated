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
- Install plugins by uncommenting line 50 in `docker-compose.yml`. Only need to run once or to update plugins. Does not hurt to re-run.
