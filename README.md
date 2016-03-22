# spark-blast
Using Parallel Blast on Apache Spark.

To use Parallel Blast on Apache Spark you have to create a cluster with Apache Hadoop and Apache Spark.
You must install the Blast, after that set up the file "executablast.sh" and distribute it among nodes.

You must follow steps:

1 - Split file that contain a query;

$./dividi-query

2 - Execute spark-shell in a window;

$spark-shell // you can specify some atributes, use --help for that.

3 - In other window execute one script that disbrituted the split querys in step 1;

$./distribui

4 - On spark-shell execute that steps.

scala> val data = “query.fa”

scala> val dataRDD = sc.makeRDD(data)

scala> val script = “/home/hadoop/spark-install/bin/executablast.sh”

scala> val pipeRDD = dataRDD.pipe(script)

scala> pipeRDD.saveAsTextFile(“output”)

5 - In this point you have executed de Spark Blast. Now you have to merge the parts generated with Apache Spark, so execute:

$ hadoop fs -getmerge

6 - And now, put that file in repository, we use a Google Storage:

$ hadoop fs -copyFromLocal output.blast gs://hadoop-spark-fiocruz/ 



