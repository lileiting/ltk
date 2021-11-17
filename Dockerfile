FROM ghcr.io/lileiting/ltk01:main
RUN brew install \
  minimap2 vcftools freebayes \
  bowtie2 hisat2 stringtie \
  star-aligner subread \
  diamond muscle mummer last\
  raxml r busco && \
  rm -rf /home/linuxbrew/.cache /home/linuxbrew/.cpanm \
         /home/linuxbrew/.bundle /home/linuxbrew/.gem
