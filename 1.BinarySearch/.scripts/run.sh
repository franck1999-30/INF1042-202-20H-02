#!/bin/bash

sh .scripts/participation.sh > .scripts/Participation.md 2>&1
sh .scripts/notation.sh > .scripts/Correction.md 2>&1
sh .scripts/grader.sh > .scripts/Grader.md 2>&1
