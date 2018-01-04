# Replace 127.0.0.1 with your server's IP address!
set :stage, :production
server '45.55.180.103', user: 'deploy', roles: %w{app db web}