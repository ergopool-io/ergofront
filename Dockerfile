FROM nginx:latest
COPY ./build /usr/share/nginx/html
COPY entrypoint.sh entrypoint.sh
RUN chmod a+x entrypoint.sh
EXPOSE 80
CMD ["./entrypoint.sh"]
