FROM homebrew/brew:latest
ENV HOMEBREW_NO_AUTO_UPDATE=1
RUN brew tap brewsci/bio && brew install \
  samtools bcftools bwa \
  datamash pigz htop glances parallel \
  cpanm && cpanm local::lib && \
  rm -rf /home/linuxbrew/.cache /home/linuxbrew/.cpanm \
         /home/linuxbrew/.bundle /home/linuxbrew/.gem
RUN brew install vcftools diamond freebayes \
  lastz minimap2 muscle mrbayes raxml \
  prank bowtie2 mummer \
  brewsci/bio/star-aligner brewsci/bio/subread \
  brewsci/bio/last && \
  rm -rf /home/linuxbrew/.cache /home/linuxbrew/.cpanm \
         /home/linuxbrew/.bundle /home/linuxbrew/.gem
