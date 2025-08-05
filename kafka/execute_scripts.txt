docker exec kafka-kafka-1 kafka-topics --bootstrap-server localhost:9092 --create --replication-factor 1 --partitions 1 --topic test
docker exec -it kafka-kafka-1 kafka-console-producer --bootstrap-server localhost:9092 --topic test
docker exec -it kafka-kafka-1 kafka-console-consumer --bootstrap-server localhost:9092 --topic test