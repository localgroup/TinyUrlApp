# Tiny URl App using Apache Spark and Redis


## Description
TinyURL is a URL shortening service, a web service that provides short aliases for redirection of long URLs.
This Tiny URl  application built with Apache Spark and Redis.
This will run as a stand alone java application which will internally invoke free marker for generating HTML templates  to user.
Redis server is used for manipulating data in data base and can act as in-memory cache.

Tiny URL Home UI Page
=====================

![Tiny URL Home UI Page](https://upload.wikimedia.org/wikipedia/commons/c/c6/TinyURLHomePage.png)

EnterLongURL in URL Home UI Page
================================

![Blog Post UI Page](https://upload.wikimedia.org/wikipedia/commons/6/68/EnterLongURLinTinyURLApp.png)

Tiny URL for Long URL in  Tiny URL Home UI Page
================================================

![Blog Post UI Page](https://upload.wikimedia.org/wikipedia/commons/e/ea/TinyUrlForLongURL.png)


## Dependencies

### Start Redis

Start your redis instance:
```



           _.-``__ ''-._
      _.-``    `.  `_.  ''-._           Redis 2.8.9 (00000000/0) 64 bit
  .-`` .-```.  ```\/    _.,_ ''-._
 (    '      ,       .-`  | `,    )     Running in stand alone mode
 |`-._`-...-` __...-.``-._|'` _.-'|     Port: 6379
 |    `-._   `._    /     _.-'    |     PID: 13499
  `-._    `-._  `-./  _.-'    _.-'
 |`-._`-._    `-.__.-'    _.-'_.-'|
 |    `-._`-._        _.-'_.-'    |           http://redis.io
  `-._    `-._`-.__.-'_.-'    _.-'
 |`-._`-._    `-.__.-'    _.-'_.-'|
 |    `-._`-._        _.-'_.-'    |
  `-._    `-._`-.__.-'_.-'    _.-'
      `-._    `-.__.-'    _.-'
          `-._        _.-'
              `-.__.-'
```              
              
              

Downloads Redis server from

https://github.com/rgl/redis/downloads

This needs to be installed in your machine and Running with port :6379

Note:
Before starting Redis server replace TinyUrlApp/redis.conf  with existing file 
For windows redis.conf will be present 
=====================================
C:\Program Files\Redis\conf


Technologies/Frameworks used here :
=================================

- Java
- Spark Java
- Free Marker
- Redis
- Modernizr
- JQuery


## Installation

Clone the repository with:

git clone https://github.com/localgroup/TinyUrlApp.git



## Run

For testing it locally, there's a `TinyURLAppController.java` file included in the `src/com/TinyUrlApp/Controller` folder. 
Open up the java terminal and run the TinyURLAppController.java file ( You need to have **Redis server** installed  before start running java code ).


You can now open your browser: `http://localhost:4567/tinyUrl`


Want to Contribute?
===================

I'm so happy if you do. Fork the project, make whatever changes you want to do and submit a pull request.


## Licence
The MIT License (MIT)

Copyright (c) 2015
Ramachandran Krishnan (ramackri@gmail.com)
Nishant Shreshth (nishantshreshth@gmail.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
