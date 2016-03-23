#/bin/bash
#blastdbcmd -db refseq_rna.00 -entry nm_000122 -out /home/hadoop/spark-install/bin/test_query.fa
#blastn -query /home/hadoop/spark-install/bin/test_query.fa -db refseq_rna.00 -task blastn -dust no -outfmt "7 qseqid sseqid evalue bitscore" -max_target_seqs 2
#/home/hadoop/blastall/bin/blastall -p blastp -i /home/hadoop/spark-install/bin/query.fa -d database.fa -e 1E-05 -v 1000 -b 1000 -m 8
#ssh hadoop@hadoopspark-hadoop-m-1-vm "/home/hadoop/distribui"
scp hadoopspark-hadoop-m-1-vm:/home/hadoop/testes-blast/6hours/database.fa* /home/hadoop/spark-install/bin/
/home/hadoop/blastall/bin/blastall -p blastp -i query.fa -d /home/hadoop/spark-install/bin/database.fa -e 1E-05 -v 1000 -b 1000 -m 8
