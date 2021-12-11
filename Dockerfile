FROM ghcr.io/lileiting/ltk01:main
RUN brew install \
  minimap2 bowtie2 hisat2 star-aligner \
  blast blat last lastz \
  diamond muscle mummer mmseqs2 \
  vcftools freebayes stringtie subread \
  raxml r busco genewise && \
  rm -rf /home/linuxbrew/.cache /home/linuxbrew/.cpanm \
         /home/linuxbrew/.bundle /home/linuxbrew/.gem
