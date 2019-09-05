mongod --dbpath=/data/db/ --port 27017 --logpath=/data/db/mongodb.log  --logappend --fork
node /opt/cms/server.js