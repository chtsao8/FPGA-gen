# Author: Gedeon Nyengele
###############################################################################
# Usage
#------------------------------------------------------------------------------
# $> python3 update_config.py -k KEY -v VALUE -s SOURCE_FILE -o OUTPUT_FILE
#
# This script updates a configuration parameter in a config.json file
#   parameter name = KEY
#   parameter new value = VALUE
#   original config file = SOURCE_FILE
#   new updated config file = OUTPUT_FILE
###############################################################################

from mako.template import Template
import argparse
import json
import sys
import os
from termcolor import colored

################################################################
# Flags:
#    -k: configuration key
#    -v: new value for configuration key
#    -s: source config file
#    -o: output config file
################################################################

parser = argparse.ArgumentParser()

parser.add_argument("-k", "--key", help="Specifies the configuration key to update.")
parser.add_argument("-v", "--value", help="Specifies the new value.")
parser.add_argument("-s", "--source", help="Specifies the path to the source/original config file.")
parser.add_argument("-o", "--output", help="Specifies the path for the output/new config file.")

args = parser.parse_args()

################################################################
# Argument Logic
################################################################
if args.key == None or args.value == None or args.source == None or args.output == None:
    print("Please specify a key, value, source config file, and output config file.")
    print(colored("usage: update_config.py [-h] [-k KEY] [-v VALUE] [-s SOURCE_FILE] [-o OUTPUT_FILE]", "green"))
    sys.exit(1)
if str(args.source)[-4:] != "json":
    print("source file must be in .json format.")
    print(colored("usage: update_config.py [-h] [-k KEY] [-v VALUE] [-s SOURCE_FILE] [-o OUTPUT_FILE]", "green"))
    sys.exit(1)
else:
    config_init = open(args.source, "r")
    config = json.loads(config_init.read())


config["config"][str(args.key)] = str(args.value)

with open(str(args.output), 'w') as fh:
    json.dump(config, fh)

config_init.close()
print("All done!")
sys.exit(0)
