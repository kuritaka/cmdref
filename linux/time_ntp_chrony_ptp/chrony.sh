#!/bin/bash

exit


chronyc sources
chronyc sources -v

chronyc sourcestats # check offset


chrony makestep # Correct the time

