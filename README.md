# Introduction

This repo has a few examples of how to spawn jobs on an Argon/HPC cluster.  These are intended to demonstrate some linux commands and HPC settings.

Sections:
1. BasicSubmission - First place to start with.  This shows very basic job submission commands.
2. LinearProcessing - This is a set of scripts that are intended to run in a linear fashion.  This runs multiple scripts that all wait on one another.
3. LinearProcessingAdvanced - This introduces more parallel operations.
4. GPUQueue - Introduces using GPU systems.

Each directory contains the following structure:

```
<SECTION_NAME>/runme.sh - The main script that'll do the submission of jobs (qsub commands)
<SECTION_NAME/scripts/*.sh - These are the shell files that will be submitted.
```

# BasicSubmission

This is a very simple script that simply outputs the current start time, sleeps for 5 minutes, then outputs the end time.  It also outputs the variables

Files of Interest:
- BasicSubmission/runme.log - This is the log file of the qsub command
- BasicSubmission/

## Example qstat output

```
[dthole@argon-login-1 BasicSubmission]$ sh runme.sh 
Your job 7403539 ("BasicSubmission-job1") has been submitted
[dthole@argon-login-1 BasicSubmission]$ qstat | grep -i 'dthole'
7403539 0.00000 BasicSubmi dthole       qw    07/23/2019 12:46:13                                    1        
[dthole@argon-login-1 BasicSubmission]$ qstat | grep -i 'dthole'
7403539 0.50229 BasicSubmi dthole       r     07/23/2019 12:46:19 all.q@argon-lc-d7-12.hpc           1    
```

# LinearProcessing

This script will qsub 3 scripts, all reliant on each other.  Job 1, then Job 2, then Job 3.  All three are qsubbed immediately, but the other two are in wait status til the previous one completes.

## Example qstat output

```
[dthole@argon-login-1 LinearProcessing]$ qstat | grep -i 'dthole'   
7405620 0.51000 LinearProc dthole       r     07/23/2019 14:53:29 all.q@argon-itf-cf49-31.hpc        1        
7405621 0.00000 LinearProc dthole       hqw   07/23/2019 14:53:27                                    1        
7405622 0.00000 LinearProc dthole       hqw   07/23/2019 14:53:27                                    1
```

# LinearProcessingAdvanced
These scripts are similar to the above, with the addition of 4th script. The 4th script simply merges the output.

## Example qstat output

```

```

# GPUQueue
This script is fairly simple.  It requests a GPU node, runs clinfo, outputs to a local file, then finishes.

## Example qstat output

```

```

# Other Information/Commands

Basic Commands:
- qsub => Submits the job itself
- qacct -j <JOBID> => Outputs historical information about the job (runtime/etc)

