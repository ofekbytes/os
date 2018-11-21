## create a group
sudo groupadd -g 1100 kessler

## add user to group (user --> group)
sudo adduser user kessler
sudo adduser ofir kessler
sudo adduser noam kessler
 sudo adduser suziekessler

## set group directory/folder owner
sudo chown -Rv user:kessler /srv

## sest directory/folder permission
sudo chmod -Rv 774 /srv


