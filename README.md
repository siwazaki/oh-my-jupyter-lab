# oh-my-notebooks

```oh-my-notebooks = jupyter lab + jupyter/datascience-notebook + tensorflow```

## 下準備

jupyter labの実行ユーザーをホストの実行ユーザーと合わせる。
自分のgidとuidを調べて、```docker-compose.yml```の \${GID}、${UID}を置き換える。

<調べかた>

```bash
> id -g # gid
> id -u # uid
```

<docker-compose.ymlの例>

```yaml
NB_GID: 20
NB_UID: 500
```

## dockerイメージのビルド

```bash
> docker-compose build
```

## dockerコンテナの実行

```bash
> docker-compose up -d
```

補足
docker-compose.yamlのGID、UIDをいれかえなくても

```bash
> env GID=20 UID=500 docker-compose up -d
```

とすればUID、GIDがセットされる。

## 動作確認

[ローカルの8888ポートにアクセスする。](http://localhost:8888)

## [NOTE] パスワードについて

デフォルトではパスワードなしです。パスワードは`jupyter_notebook_config.py`で設定できます。
