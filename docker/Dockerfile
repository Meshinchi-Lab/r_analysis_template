FROM rocker/r-ver:4.5.0
LABEL org.opencontainers.image.authors="jennyl.smith12@protonmail.com"

# software versions for project dependencies 
ENV PY_VERSION='3.12'
ENV QUARTO_VER='1.7.13'
ENV QUARTO_ARCH='arm64'
ENV RENV_VER='1.1.4'

# location for dependencies
ENV DIR='/opt'

# update packages and install dependencies
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    build-essential gfortran \
    zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev \
    libssl-dev libreadline-dev libffi-dev \
    wget xorg openbox git gh

# install Rmarkdown dependencies
RUN apt-get -y install libcurl4-openssl-dev \
    libfontconfig1-dev libfreetype6-dev libicu-dev \
    libharfbuzz-dev libfribidi-dev \
    libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev \
    libx11-dev libxml2-dev pandoc
    
# install python and venv
RUN apt-get -y install --no-install-recommends \
    software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get -y install python${PY_VERSION} python${PY_VERSION}-venv
RUN cd /usr/bin && ln -sf python${PY_VERSION} python3 && python3 --version && R --version

# install quarto
RUN wget -q -P $DIR https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VER}/quarto-${QUARTO_VER}-linux-${QUARTO_ARCH}.tar.gz && tar -xzf $DIR/quarto-${QUARTO_VER}-linux-${QUARTO_ARCH}.tar.gz -C $DIR
ENV PATH=$PATH:${DIR}/quarto-${QUARTO_VER}/bin

# install R package renv
# See Ubuntu repos for more packages that can be installed through apt manager: https://cloud.r-project.org/bin/linux/ubuntu/
RUN Rscript -e "install.packages('remotes', repos='https://cloud.r-project.org', verbose='TRUE'); remotes::install_version('renv', version = '$RENV_VER', verbose = 'TRUE')"

