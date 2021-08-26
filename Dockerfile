FROM homebrew/brew:latest
ENV HOMEBREW_NO_AUTO_UPDATE=1
RUN brew tap brewsci/bio && brew install \
  samtools genometools bcftools vcftools \
  diamond freebayes lastz minimap2 muscle mrbayes raxml igv \
  mafft prank bowtie2 bwa \
  mummer datamash pigz pixz p7zip htop glances parallel \
  brewsci/bio/star-aligner brewsci/bio/subread
  cpanm && cpanm local::lib && \
  rm -rf /home/linuxbrew/.cache /home/linuxbrew/.cpanm \
         /home/linuxbrew/.bundle /home/linuxbrew/.gem
