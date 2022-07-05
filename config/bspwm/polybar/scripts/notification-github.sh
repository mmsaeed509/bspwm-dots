#!/bin/sh

#
# Copyright (C) 2022 Mahmoud Mohamed (Ozil)  <https://github.com/mmsaeed509>
# LICENSE © GNU-GPL3
#

USER="yourUserName"
# You can get your Personal access tokens from here : https://github.com/settings/tokens #
TOKEN="yourToken"

notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

echo "%{T3} $notifications"

