#!/bin/sh

#
# Copyright (C) 29-April 2022 Mahmoud Mohamed (Ozil)  <https://github.com/mmsaeed509>
# Everyone is permitted to copy and distribute copies of this file under GNU-GPL3
#

USER=""
# You can get your Personal access tokens from here : https://github.com/settings/tokens #
TOKEN=""

notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

if [ "$notifications" -gt 0 ]; then
    echo "%{T3} $notifications"
else
    echo "%{T3} 0"
fi
