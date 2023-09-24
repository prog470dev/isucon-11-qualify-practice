# isucon-11-qualify-practice

This is a practice repository for isucon11-qualify using the AMI introduced at https://github.com/matsuu/aws-isucon/tree/main .

## Preparing to Run the Benchmark

Install tools:
```
$ ./scripts/install_tools.sh
```

Apply changes and restart:
```
$ ./scripts/restart.sh
```

## Gathering Logs After Running the Benchmark
Gather logs:
```
$ ./scripts/report_log.sh
```

View logs:
```
// nginx access log
$ cat reports/alp.log
// msyql slow query log
$ cat reports/pt-query-digest.log
```