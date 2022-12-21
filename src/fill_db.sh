postgresPod=$1

cat test/libraries.dump           | kubectl exec -i $postgresPod -- psql -U program libraries
cat test/ratings.dump        | kubectl exec -i $postgresPod -- psql -U program ratings
cat test/reservations.dump           | kubectl exec -i $postgresPod -- psql -U program reservations

#docker ps -a
#docker exec -i postgres psql -U program libraries < test/libraries.dump
#docker exec -i postgres psql -U program ratings < test/ratings.dump
#docker exec -i postgres psql -U program reservations < test/reservations.dump
#
#docker exec -i postgres psql -U program libraries -c "\dt"
#docker exec -i postgres psql -U program ratings -c "\dt"
#docker exec -i postgres psql -U program reservations -c "\dt"