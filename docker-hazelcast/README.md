# Hazelcast 구동 스크립트

## 구동

```bash
$ source docker-hazelcast-start.sh
a5faa1450d14ecc40a8bb95b0c51c36ef7b2026ec79ce9a6a5743357835b86ce
```

<br>

## 컨테이너 상태 조회

```bash
$ source docker-hazelcast-ls.sh
CONTAINER ID   IMAGE                       COMMAND                  CREATED         STATUS         PORTS                                         NAMES
a5faa1450d14   hazelcast/hazelcast:4.1.5   "/opt/hazelcast/star…"   9 seconds ago   Up 7 seconds   0.0.0.0:15701->5701/tcp, :::15701->5701/tcp   local-hazelcast
```

<br>

## 컨테이너 내부 Bash 접속

```bash
$ source docker-hazelcast-repl.sh
'local-hazelcast' 컨테이너의 BASH 쉘 접속을 시작합니다.
/opt/hazelcast $ exit
```

<br>

## 컨테이너 중지 + 삭제

```bash
$ source docker-hazelcast-stop.sh
'local-hazelcast' 컨테이너가 존재합니다. 기존 컨테이너를 중지하고 삭제합니다.
local-hazelcast

'local-hazelcast' 컨테이너 삭제를 완료했습니다.
```

<br>

