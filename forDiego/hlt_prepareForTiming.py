#!/usr/bin/env python
############################################################################
#
# Edgar Carrera
# ecarrera@cern.ch
#
# This script takes an hlt.py template (gotten with hltGetConfiguration) and
# prepares it for timing studies: hltTiming.py
# It adds a bunch of needed configuration lines
# and dump a list of files from a give txt file
###########################################################################

"""
   usage: %prog [options]
   -f, --files = FILES: text file with root data/mc files.
"""


import os,sys
import subprocess
import string, re
import fileinput
import commands
from time import gmtime, localtime, strftime


# _____________________OPTIONS_______________________________________________

############################################################################
# Code taken from http://code.activestate.com/recipes/278844/
############################################################################
import optparse
USAGE = re.compile(r'(?s)\s*usage: (.*?)(\n[ \t]*\n|$)')
def nonzero(self): # will become the nonzero method of optparse.Values
    "True if options were given"
    for v in self.__dict__.itervalues():
        if v is not None: return True
    return False

optparse.Values.__nonzero__ = nonzero # dynamically fix optparse.Values

class ParsingError(Exception): pass

optionstring=""

def exit(msg=""):
    raise SystemExit(msg or optionstring.replace("%prog",sys.argv[0]))

def parse(docstring, arglist=None):
    global optionstring
    optionstring = docstring
    match = USAGE.search(optionstring)
    if not match: raise ParsingError("Cannot find the option string")
    optlines = match.group(1).splitlines()
    try:
        p = optparse.OptionParser(optlines[0])
        for line in optlines[1:]:
            opt, help=line.split(':')[:2]
            short,long=opt.split(',')[:2]
            if '=' in opt:
                action='store'
                long=long.split('=')[0]
            else:
                action='store_true'
            p.add_option(short.strip(),long.strip(),
                         action = action, help = help.strip())
    except (IndexError,ValueError):
        raise ParsingError("Cannot parse the option string correctly")
    return p.parse_args(arglist)


#_________________________________________________________________________

#######################################################
def prepare_for_timing():
#######################################################
#    datafile = dicOpt['files']
    #clear config and copy template
    os.system("rm -f hltTiming.py hltTimingaux.py")
    sedstr = 'sed -e "s/\[\'myroot.root\'\]/readFiles/g" hlt.py > hltTimingaux.py'
#    print sedstr
    os.system(sedstr)
    cfg = open("hltTimingaux.py","a")






    #insert some lines
    f_old = open("hltTimingaux.py")
    f_new = open("hltTiming.py","w")

    for line in f_old:
        f_new.write(line)
        if "process.DQMOutput = cms.EndPath( process.dqmOutput )" in line:
            f_new.write(
"""
import FWCore.Utilities.FileUtils as FileUtils                                                                                                                                 
mylist = FileUtils.loadListFromFile ('filelist.txt')                                                                                                                           
readFiles = cms.untracked.vstring( *mylist) 

process.source.skipBadFiles = cms.untracked.bool(True)

""") 

    f_old.close()
    f_new.close()
    os.system("rm -f hltTimingaux.py")
            
#######################################################
def get_default_options(option):
#######################################################
    dicOpt = {}

    dicOpt['files']= str(option.files)
  
    return dicOpt

#######################################################
if __name__ =='__main__':
#######################################################

    #import optionparser
#    option,args = parse(__doc__)
#    if not args and not option:
#        exit()
    
    
    #set default options
#    dicOpt = get_default_options(option)

    #print configuration
#    for k in dicOpt:
#        print str(k)+" = "+str(dicOpt[k])
    
    #transform the file
    prepare_for_timing()

    
