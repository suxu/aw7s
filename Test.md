# ab -n 100 -c 50 http://www.aw7s.com/
Benchmarking www.aw7s.com (be patient)

Server Software:        WEBrick/1.3.1
Server Hostname:        www.aw7s.com
Server Port:            80

Document Path:          /
Document Length:        3399 bytes

Concurrency Level:      50
Time taken for tests:   1.715 seconds
Complete requests:      13
Failed requests:        0
Write errors:           0
Total transferred:      55835 bytes
HTML transferred:       44187 bytes
Requests per second:    7.58 [#/sec] (mean)
Time per request:       6595.477 [ms] (mean)
Time per request:       131.910 [ms] (mean, across all concurrent requests)
Transfer rate:          31.80 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:      294  311  12.8    314     332
Processing:   486 1079 329.9   1259    1358
Waiting:      480 1072 329.9   1252    1351
Total:        780 1390 338.6   1574    1690

Percentage of the requests served within a certain time (ms)
  50%   1568
  66%   1602
  75%   1614
  80%   1637
  90%   1660
  95%   1690
  98%   1690
  99%   1690
 100%   1690 (longest request)

#ab -n 100 -c 50 http://www.aw7s.com/pages/


Server Software:        WEBrick/1.3.1
Server Hostname:        www.aw7s.com
Server Port:            80

Document Path:          /pages/
Document Length:        4116 bytes

Concurrency Level:      50
Time taken for tests:   4.616 seconds
Complete requests:      36
Failed requests:        0
Write errors:           0
Total transferred:      187506 bytes
HTML transferred:       152562 bytes
Requests per second:    7.80 [#/sec] (mean)
Time per request:       6410.776 [ms] (mean)
Time per request:       128.216 [ms] (mean, across all concurrent requests)
Transfer rate:          39.67 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:      274  600 470.4    301    1312
Processing:   442 1470 479.8   1577    2070
Waiting:      427 1449 477.9   1567    2060
Total:        749 2070 844.7   1859    3382
