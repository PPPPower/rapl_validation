#!/bin/sh
#/home/vince/research/linux-kernel/linux-4.1.5/tools/perf/perf stat -a -e cycles,instructions,cache-misses,cache-references,uncore_imc_0/cas_count_read/,uncore_imc_0/cas_count_write/,power/energy-cores/,power/energy-pkg/,power/energy-ram/ -I 100 -x , ./run_test.sh 2> sleep.perf.phase 1> sleep.stdio.phase ; done

/home/vince/research/linux-kernel/linux-4.1.5/tools/perf/perf stat -a -e power/energy-ram/ -I 100 -x , mpiexec.mpich -np 4 ./xhpl_intel64 2> hpl_mkl.perf.phase 1> hpl_mkl.stdio.phase ; done
