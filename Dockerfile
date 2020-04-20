FROM debian:buster-slim AS builder
RUN apt-get update && apt-get install -y curl unzip
RUN curl -L -o terraform.zip https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip && unzip terraform.zip && rm terraform.zip

FROM debian:buster-slim
RUN apt-get update && apt-get install -y ca-certificates && update-ca-certificates || /dev/null
COPY --from=0 terraform /usr/bin
CMD ["terraform", "version"]