# PySparkDockerExample
Example Spark Submit application using docker-compose.

## To run:
Pull the repo and cd into the directory.  Then start the images:
```docker-compose up -d```

And then run the images:
```docker run -it spark-master /bin/bash```

And add new directory in the image:
```mkdir apps```

Copy files to this new directory in the image:
```docker cp arquivo-cod-001.txt spark-master:/apps/.```
```docker cp arquivo-cod-002.txt spark-master:/apps/.```
```docker cp arquivo-cod-003.txt spark-master:/apps/.```
```docker cp arquivo-cod-004.txt spark-master:/apps/.```
```docker cp arquivo-cod-005.txt spark-master:/apps/.```
```docker cp arquivo-cod-006.txt spark-master:/apps/.```
```docker cp transacao-municipios-scala.jar spark-master:/apps/.```


Exec Spark Submit:
```./spark-submit --class com.minsait.exec.Transacao /apps/transacao-municipios-scala.jar```