FROM nginx:latest
COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /etc/nginx/sites-enabled && \
    mkdir -p /etc/nginx/sites-available
COPY varsitytutors.dev /etc/nginx/sites-available/varsitytutors.dev
RUN ln -s /etc/nginx/sites-available/varsitytutors.dev /etc/nginx/sites-enabled/varsitytutors.dev

COPY nginx_gen_cert.sh .
RUN /bin/bash -c "source ./nginx_gen_cert.sh"
RUN rm nginx_gen_cert.sh
