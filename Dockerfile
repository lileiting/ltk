FROM ghcr.io/lileiting/ltk01:main
RUN brew install \
  blat \
  last \
  lastz \
  mmseqs2 \
  vcftools \
  stringtie \
  subread \
  raxml \
  iqtree2 \
  busco \
  trinity \
  && \
  chmod -R o+rx /home/linuxbrew && \
  rm -rf /home/linuxbrew/.cache \
         /home/linuxbrew/.cpanm \
         /home/linuxbrew/.bundle \
         /home/linuxbrew/.gem
