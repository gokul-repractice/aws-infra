FROM mongo:5
COPY *.js /docker-entrypoint-initdb.d/
#This specifies that, when we keep some js scripts, mongodb will load it automatically.

#We already saw that in catalogue component, we loaded some mangodb catagoroes, and then in user component, we loaded default users.
#Now Instead of loading them from there,if we keep js files here, mongodb will automatically insert them.

#This variable allows you to specify the name of a database to be used for creation scripts in /docker-entrypoint-initdb.d/*.js