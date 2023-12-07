<h1 align="center">Certbot LetsEncyrpt SSL Certificate</h1> 

<br>

<div align="center">
    <img width=350 src="src/banner.png">
</div>

<br/>

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Instructions](#instructions)
- [Technologies](#technologies)
- [Features](#features)
- [Contributors](#contributors)

<br/>

## Introduction

This project facilitates the acquisition of Let's Encrypt certificates and keys through the use of a Docker container, eliminating the need for any additional program installation.

<br/>

## Prerequisites

* Domain name

<br/>

## Instructions

```
docker build -t i-letssl .
```

```
docker run -it --rm -d -v ./letsencrypt:/etc/letsencrypt/ -p 80:80 --name c-letssl i-letssl 
```

```
docker exec -it c-letssl /bin/bash
```

```
certbot certonly
```

```
exit
```

```
docker stop c-letssl
```

```
docker rmi i-letssl
```

<br/>

## Technologies

[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)

* Certbot

<br/>

## Features

* 3 Month free letsencrypt ssl can is obtainable.
* Certificate is generated in letsencrypt folder.

<br/>

## Contributors

<a href="https://github.com/ahmettoguz" target="_blank"><img width=60 height=60 src="https://avatars.githubusercontent.com/u/101711642?v=4"></a>

[🔝](#certbot-letsencyrpt-ssl-certificate)
