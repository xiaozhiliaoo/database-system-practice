# Person
[Pat Helland](https://dblp.org/pid/h/PatHelland.html)

# Notes
分布式文件系统：GlusterFS，Quantcast File System, HDFS

对象存储:S3, Azure Blob, OpenStack Swift

Hadoop工作流调度：Oozie，Azkaban，Luigi，AirFlow，Pinball

Hadoop高级工具：Pig，Hive，Cascading，Crunch，FlumeJava

广播HashJoin：Pig(Replicated Join) Hive(Map Join)

分区HashJoin：Hive(bucketed map join)

数据集分区元数据：HCatalog，Hive(metastore)

批处理输出键值：Voldemort, Terrapin, ElephantDB, HBase批量加载

HDFS上面计算模型：MR，SQL，HBase，Impala(MPP)

集群调度：YARN，CapacityScheduler,Mesos,K8S

基于MR上创建的高级编程模式：Pig，Hive，Cascading，Crunch

数据流引擎：Spark，Tez，Flink，Beam，Hazelcast Jet

Dryad，Nephele

Spark RDD 弹性分布式数据集

图处理模型：Pregel，BSP模型，Apache Giraph，Spark GraphX，Flink Gelly

apache hawq mpp

流批一体：Bean，Flink，Google Cloud DataFlow

数据流语言：Oz，Juttle
功能性反应式编程语言：Elm
逻辑编程语言：Bloom


# Product

# Site
https://github.com/ept/ddia-references

https://cwiki.apache.org/confluence/display/CASSANDRA2/ArchitectureInternals



# Thinking

mysql和redis同步是双写好，还是异步事件日志kafka好呢？mysql和redis都是shared-disk架构
如果是同步双写，那么写入顺序是什么呢？1 先写DB，后写Redis，DB等价于WAL。 2 不需要写DB，计算结果缓存，直接写Redis。
同步双写本质是分布式事务XA或者2PC层面问题。同步双写的ACID保证。
MySQL写不同的库是XA保证的。

mysql和redis同步策略。1 同步双写 2  异步全序广播（kafka or cdc），后者方案更好，因为同步双写你没办法保证，mysql和redis同时成功或者同时失败，
此时需要xa，2pc类似的机制，或者最终一致性处理，还要保证写入顺序以及读取顺序，有并发以及覆盖更新问题 
2 kafka广播，or cdc，最终一定会成功。

redis(mysql)和内存之间同步？shared-disk和shred-noting架构同步


# Site

https://dataintensive.net/