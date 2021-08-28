# Hazelcast 구동 스크립트

<br>

## 참고자료 리스트

### 설치 문서

- From Embedded to Client-Server
  - https://hazelcast.com/blog/from-embedded-to-client-server/
- Installing
  - https://hazelcast.com/blog/from-embedded-to-client-server/

 

### 설치 방식은 여러가지 방식이 있다.

- 패키지 매니저로 설치하는 방식
  - https://docs.hazelcast.com/imdg/4.1.2/getting-started.html#installing
- Hazelcast 배포판을 다운로드 받아서 이것의 start script 를 구동하는 방식
  - https://docs.hazelcast.com/imdg/4.1.2/installation/installing-using-download-archives.html
- Docker image 를 다운받아서 구동하는 방식
  - https://hub.docker.com/r/hazelcast/hazelcast
- Helm Chart 를 이용하는 방식
  - https://github.com/hazelcast/charts

<br>

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

