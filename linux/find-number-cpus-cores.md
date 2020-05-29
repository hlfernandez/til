### Find the number of CPUs and cores

The `nproc` command displays the number of processing units available to the current process. In my current computer equipped with an *Intel(R) Core(TM) i7-8565U CPU @ 1.80GHz* `nproc` outputs `8`.

Another useful command is `lscpu`, which prints the following:

```
Architecture:          x86_64
CPU op-mode(s):        32-bit, 64-bit
Byte Order:            Little Endian
CPU(s):                8
On-line CPU(s) list:   0-7
Thread(s) per core:    2
Core(s) per socket:    4
CPU socket(s):         1
NUMA node(s):          1
Vendor ID:             GenuineIntel
CPU family:            6
Model:                 142
Model name:            Intel(R) Core(TM) i7-8565U CPU @ 1.80GHz
Stepping:              11
CPU MHz:               696.874
BogoMIPS:              4600,0000
Virtualization:        VT-x
L1d cache:             32K
L1i cache:             32K
L2 cache:              256K
L3 cache:              8192K
NUMA node0 CPU(s):     0-7
```

As it can be seen, my processor has 1 CPU sockets with 4 physical cores each, making a total of 4 physical cores. Each physical core can run 2 threads, thus the total number of logical cores is `8` (`1 x 4 x 2 = CPU socket(s) x Core(s) per socket x Thread(s) per core`).

Some references:
- https://baiweiblog.wordpress.com/2017/10/27/how-many-physical-and-logical-cpu-cores-in-your-computer/
- https://www.cyberciti.biz/faq/linux-get-number-of-cpus-core-command/
