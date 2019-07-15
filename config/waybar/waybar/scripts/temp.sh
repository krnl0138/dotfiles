#!/bin/bash
sensors | awk 'NR==15 {print $2}'
