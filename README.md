# docs-server
A Server and Utils to serve static sites

## how to run server

```bash
git clone https://github.com/msina-me/docs-server.git
cd docs-server
image build . -t docs-server:0.1.0 --no-cache
docker run --name docs-web --rm  -p 8800:80 -itd docs-server:0.1.0
```

These commands will run docs-server on port `http://0.0.0.0:8800`

## upload files
To upload files you can use the following command:

```bash
curl -T <path/to/local/filer> -u admin:1234 http://0.0.0.0:8800/upload/<destination/path>
```

## upload folder
To upload folders or files You can use the `upload.sh` script:

```bash
bash upload.sh <path/to/file/or/folder> <URL>
```

-------------------

Inspired by [julcap/nginx-style-autoindex](https://github.com/julcap/nginx-style-autoindex) 