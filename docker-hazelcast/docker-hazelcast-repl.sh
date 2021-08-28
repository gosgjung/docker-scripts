# hazelcast docker container repl 접속 스크립트

name_local_hazelcast='local-hazelcast'

cnt_local_hazelcast=`docker container ls --filter name=local-hazelcast | wc -l`
cnt_local_hazelcast=$(($cnt_local_hazelcast -1))

if [ $cnt_local_hazelcast -eq 0 ]
then
    echo "'$name_local_hazelcast' 컨테이너가 없습니다. 컨테이너를 구동해주세요."

else
    echo "'$name_local_hazelcast' 컨테이너의 BASH 쉘 접속을 시작합니다."
    docker container exec -it local-hazelcast sh
fi
