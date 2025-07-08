#!/bin/bash
sudo chef-client -z -j config/server.json -o mock_arcgis::default  

