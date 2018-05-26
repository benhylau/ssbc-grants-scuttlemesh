Example Commands with ssb Docker
================================

## `sbot whoami`

```
root@bloor:~# docker exec -it ssb sbot whoami
{
  "id": "@Z7ZNWo9z49p94eVf7gIOusjrW9t5nEuqaHuTJZGRcoo=.ed25519"
}
```

## `sbot publish`

```
root@bloor:~# docker exec -it ssb sbot publish --type post --text "Hello, world"
{
  "key": "%ffAp00T4I1tQZ0F8KX3Qt+udXCrilGWMEvh4FBD1WDY=.sha256",
  "value": {
    "previous": null,
    "sequence": 1,
    "author": "@Z7ZNWo9z49p94eVf7gIOusjrW9t5nEuqaHuTJZGRcoo=.ed25519",
    "timestamp": 1527037940298,
    "hash": "sha256",
    "content": {
      "type": "post",
      "text": "Hello, world"
    },
    "signature": "6joMmp7Wg1+hOJ50iFbbragrNt+9ksWhyMTZ8bQ2vU4KetP0EbWq7J8d/Su4yAeVVWBcD4Z+WsWvfYmZaYRZCQ==.sig.ed25519"
  },
  "timestamp": 1527037940321
}
```

## `sbot log`

```
root@bloor:~# docker exec -it ssb sbot log
{
  "key": "%ffAp00T4I1tQZ0F8KX3Qt+udXCrilGWMEvh4FBD1WDY=.sha256",
  "value": {
    "previous": null,
    "sequence": 1,
    "author": "@Z7ZNWo9z49p94eVf7gIOusjrW9t5nEuqaHuTJZGRcoo=.ed25519",
    "timestamp": 1527037940298,
    "hash": "sha256",
    "content": {
      "type": "post",
      "text": "Hello, world"
    },
    "signature": "6joMmp7Wg1+hOJ50iFbbragrNt+9ksWhyMTZ8bQ2vU4KetP0EbWq7J8d/Su4yAeVVWBcD4Z+WsWvfYmZaYRZCQ==.sig.ed25519"
  },
  "timestamp": 1527037940321
}
```

## `sbot gossip.peers`

This happens over local network discovery with three Raspberry Pis plugged into a home router via ethernet cables. No ssb pub is involved here.

```
root@bloor:~# docker exec -it ssb sbot gossip.peers
[
  {
    "host": "192.168.1.141",
    "port": 8008,
    "key": "@KtcWUFe7CaStdfrvQG30vjNYLn7rstd6qERC5s46qSQ=.ed25519",
    "source": "local",
    "announcers": 1,
    "duration": null,
    "stateChange": 1527038262379,
    "state": "connected",
    "client": true,
    "ping": {
      "rtt": {
        "mean": 42,
        "stdev": 0,
        "count": 1,
        "sum": 42,
        "sqsum": 1764
      },
      "skew": {
        "mean": -29,
        "stdev": 0,
        "count": 1,
        "sum": -29,
        "sqsum": 841
      }
    },
    "failure": 0
  },
  {
    "host": "192.168.1.237",
    "port": 8008,
    "key": "@kcxDeAvKEP9sKlrIFgBAMkaXUIhHCOKSo5EwIFepZIQ=.ed25519",
    "source": "local",
    "announcers": 1,
    "duration": null,
    "stateChange": 1527038262442,
    "state": "connected",
    "client": true,
    "ping": {
      "rtt": {
        "mean": 91,
        "stdev": 0,
        "count": 1,
        "sum": 91,
        "sqsum": 8281
      },
      "skew": {
        "mean": -3.5,
        "stdev": 0,
        "count": 1,
        "sum": -3.5,
        "sqsum": 12.25
      }
    },
    "failure": 0
  }
]
```
