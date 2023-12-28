# Use the official PostgreSQL Alpine image
FROM postgres:alpine

# Copy the SQL script to initialize the database
COPY init.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL port
EXPOSE 5432
