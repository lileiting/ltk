FROM homebrew/brew:latest
RUN export HOMEBREW_NO_AUTO_UPDATE=1 && brew tap brewsci/bio && \
  brew install samtools genometools bcftools vcftools fastqc \
  diamond freebayes lastz minimap2 muscle mrbayes raxml igvtools \
  brewsci/bio/star-aligner mafft prank bowtie2 bwa seqkit \
  mummer meme gatk picard-tools \
  datamash pigz pixz p7zip unrar htop glances parallel rename 
