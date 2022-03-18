FROM ghcr.io/lileiting/ltk01:main
RUN brew install \
  star-aligner blast blat last lastz \
  diamond mummer mmseqs2 \
  vcftools freebayes stringtie subread \
  raxml busco genewise trinity \
  gd \
  && \
  rm -rf /home/linuxbrew/.cache /home/linuxbrew/.cpanm \
         /home/linuxbrew/.bundle /home/linuxbrew/.gem
