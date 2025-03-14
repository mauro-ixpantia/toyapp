FROM rocker/verse:4.4.1
COPY / /
RUN --mount=type=secret,id=GITHUB_TOKEN,env=GITHUB_TOKEN \
    Rscript -e 'install.packages("pak")' \
    Rscript -e 'pak::pak("maurolepore/toyhiprivate")'
RUN Rscript setup.R
ENTRYPOINT ["Rscript","main.R"]
