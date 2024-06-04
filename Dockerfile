FROM openmmlab/lmdeploy:latest

RUN apt-get update && apt-get install -y python3 python3-pip git

WORKDIR /app

RUN pip3 install --upgrade pip
RUN pip3 install timm

CMD  ["lmdeploy", "serve", "api_server", "OpenGVLab/InternVL-Chat-V1-5-AWQ", "--backend", "turbomind", "--model-format",  "awq"]
