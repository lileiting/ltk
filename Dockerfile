FROM homebrew/brew:latest
ENV HOMEBREW_NO_AUTO_UPDATE=1
RUN brew tap brewsci/bio && brew install \
  samtools bcftools vcftools diamond freebayes \
  lastz minimap2 muscle mrbayes raxml \
  prank bowtie2 bwa mummer datamash pigz \
  htop glances parallel \
  brewsci/bio/star-aligner brewsci/bio/subread \
  brewsci/bio/last \
  cpanm && cpanm local::lib && \
  rm -rf /home/linuxbrew/.cache /home/linuxbrew/.cpanm \
         /home/linuxbrew/.bundle /home/linuxbrew/.gem
