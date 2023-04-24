-- psql postgresql://user:passwd@host:5432/db
-- psql -h host -p 5432 -d db -U user
SELECT current_database();
SELECT current_user;
SELECT inet_server_addr(), inet_server_port();
SELECT version();
\conninfo

OmniDB GUI tool

psql -U postgres -c "SELECT current_time"
psql -f examples.sql
psql -c "SELECT current_time" –f examples.sql -c "SELECT current_time"
\?
\h 
\h DELETE 

SET password_encryption = 'scram-sha-256';
\password