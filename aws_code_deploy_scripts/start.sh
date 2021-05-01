#!/bin/bash
sudo docker run --detach --restart always -p5000:80
# sudo cp /var/ops-ground/ops-ground.service /etc/systemd/system/
# sudo systemctl enable ops-ground.service
# sudo systemctl start ops-ground.service
