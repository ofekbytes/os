## create a group
sudo groupadd -g 1100 kessler

## add user to group (user --> group)
sudo adduser jaron kessler
sudo adduser yaron kessler
sudo adduser ofir kessler
sudo adduser noam kessler
sudo adduser suzie kessler

## set group directory/folder owner
sudo chown -Rv yaron:kessler /srv

## sest directory/folder permission
sudo chmod -Rv 774 /srv


