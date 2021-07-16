import sys

def incr_get(n): 

    myvars = {}
    with open("/etc/os-release") as myfile:
        for line in myfile:
            name, var = line.partition("=")[::2]
            myvars[name.strip()] = var

    pn = myvars["PRETTY_NAME"].replace('"','').replace('\n','')

    response = "\n{}\nPython {}\n\n\t{}+1={}\n\n".format(
      pn, sys.version, n, n+1)

    return response
