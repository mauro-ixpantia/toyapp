FROM rocker/verse:4.4.1
COPY / /
RUN Rscript setup.R
ENTRYPOINT ["Rscript","main.R"]
