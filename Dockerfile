FROM rocker/tidyverse

LABEL maintainer = "D. Alex Hughes <d.alex.hughes@gmail.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev \
    && rm -rf /var/lib/apt/lists/*

COPY Rprofile.site /etc/R
ENV _R_SHLIB_STRIP_=true

# RUN Rscript -e "install.packages('littler')"
RUN install2.r remotes
COPY DESCRIPTION .
RUN Rscript -e "remotes::install_deps()"
RUN rm -f DESCRIPTION

# RUN echo "local(options(shiny.port = 3838, shiny.host = '0.0.0.0'))" > /usr/lib/R/etc/Rprofile.site

# RUN addgroup --system app && adduser --system --ingroup app app
# WORKDIR /home/app

# COPY app .

# RUN chown app:app -R /home/app
# USER app

# EXPOSE 3838

# CMD ["R", "-e", "shiny::runApp('/home/app')"]
