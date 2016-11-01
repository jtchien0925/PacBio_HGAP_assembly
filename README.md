# PacBio_HGAP_assembly

   1, Create a document called “input.fofn” contents all bax.h5 files with absolute dir
  
   2, Create a documnet called “input.xml”
  
   3, Setup parameter at params.xml: Based on generic parameter setting, but modified towards to target genome assembly.
  
   4, submit job: qsub yuorjob.sh 
   
   ***
 
 
   Before you start....pacbio smrtanalysis installation
   
   1, http://www.pacb.com/wp-content/uploads/2015/09/SMRT-Analysis-Software-Installation-v2.3.0.pdf
   
   2,fastq 2 fasta: 
   
   
cat *.fastq | perl -e '$i=0;while(<>){if(/^\@/&&$i==0){s/^\@/\>/;print;}elsif($i==1){s/\./N/g;print;$i=-3}$i++;}' > fasta
