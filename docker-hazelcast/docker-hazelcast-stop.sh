# hazelcast docker container 중지 및 볼륨 삭제 스크립트

name_local_hazelcast='local-hazelcast'

cnt_local_hazelcast=`docker container ls --filter name=local-hazelcast | wc -l`
cnt_local_hazelcast=$(($cnt_local_postgresql -1))

if [ $cnt_local_hazelcast -eq 0 ]
then
    echo "'$name_local_hazelcast' 컨테이너가 없습니다. 삭제를 진행하지 않습니다."

else
    echo "'$name_local_hazelcast' 컨테이너가 존재합니다. 기존 컨테이너를 중지하고 삭제합니다."
    docker container stop local-hazelcast
    echo "\n'$name_local_hazelcast' 컨테이너 삭제를 완료했습니다.\n"
fi
