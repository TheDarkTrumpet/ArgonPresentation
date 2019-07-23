# Introduction

This repo has a few examples of how to spawn jobs on an Argon/HPC cluster.  These are intended to demonstrate some linux commands and HPC settings.

Sections:
1. BasicSubmission - First place to start with.  This shows very basic job submission commands.
2. LinearProcessing - This is a set of scripts that are intended to run in a linear fashion.  This runs multiple scripts that all wait on one another.
3. LinearProcessingAdvanced - This introduces more parallel operations.

Each directory contains the following structure:

```
<SECTION_NAME>/runme.sh - The main script that'll do the submission of jobs (qsub commands)
<SECTION_NAME/scripts/*.sh - These are the shell files that will be submitted.
```

