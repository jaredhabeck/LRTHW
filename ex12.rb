# exercises
# the diff between include and require:
# require - run another file, checks if previously run and can refrain, LoadError on failure
# include - takes all methods and includes in current, form of extend

# require uses $LOAD_PATH to locate short-named files passed to it
# basically it looks in a /lib dir.
