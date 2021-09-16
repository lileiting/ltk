FROM ghcr.io/lileiting/ltk01:main
RUN brew install vcftools diamond freebayes \
  minimap2 muscle raxml gnuplot r busco \
  bowtie2 mummer star-aligner subread last && \
  rm -rf /home/linuxbrew/.cache /home/linuxbrew/.cpanm \
         /home/linuxbrew/.bundle /home/linuxbrew/.gem
