#!/bin/sh

USER="username"
# You can get your Personal access tokens from here : https://github.com/settings/tokens #
TOKEN="yourPersonalAccessTokens"

notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

echo "%{T3} $notifications"

