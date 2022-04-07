FROM node:16

# COPY ./package.json ./
# COPY . ./prisma/
COPY . .

RUN chmod +x ./wait-for-postgres.sh

RUN npm install
RUN npx prisma generate

RUN apt update
RUN apt --assume-yes install postgresql-client

# Git will replace the LF line-endings with CRLF, causing issues while executing the wait-for-postgres shell script
# Install dos2unix and replace CRLF (\r\n) newlines with LF (\n)
RUN apt --assume-yes install dos2unix
RUN dos2unix ./wait-for-postgres.sh

CMD cat package.json && sh ./wait-for-postgres.sh ${DB_HOST} ${POSTGRES_USER} npx prisma migrate deploy && npx prisma db seed