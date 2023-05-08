#!/bin/bash
GROUP_NAME=giftless;
USER=giftless
ROOT=root

if [ $(getent group "$GROUPNAME") ]; then
  groupadd "$GROUPNAME";
fi

if ! (id -nGz "$USER" | grep -qzxF "$GROUP_NAME")
then
    usermod -a -G "$GROUP_NAME" "${USER};
fi

if ! (id -nGz "$ROOT" | grep -qzxF "$GROUP_NAME")
then
    usermod -a -G "$GROUP_NAME" "${ROOT};
fi

chown root:giftless /lfs-storage && chmod 774 /lfs-storage;
