# terraform-dockerfile
simple debian distro with terraform client.

## This image allows you to work with terraform client in a clean environment

## Image description

- Debian Buster distro

- ca-certificates package installed (necessary for terraform client to make API calls)

- terraform binary

## Build procedure

1. Builder container

   a. curl package installed

   b. download of terraform pre-compiled binary

   c. unzip of the archive

1. Terraform container

   a. install ca-certificates package and update

   b. copy terraform binary to PATH location
