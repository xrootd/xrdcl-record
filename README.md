XrdClRecorder Plugin
  
This XRootD Client Plugin can be used to record all user's actions on XrdCl::File object and store them into a csv file. Afterwards, using the xrdreplay utily the actions can be replayed preserving the original timing.
The output file can be provided either using `XRD_RECORDERPATH` environment variable or the `output` key in the plug-in configuration file (the enviroment variable takes precedence). If neither is provided the recorded actions will be stored at a default location: `/tmp/xrdrecord.csv`.


Config file format:

**recorder.conf:**

```bash
url = *
lib = /home/simonm/git/xrootd-xrdreply/build/src/libXrdClRecorder-5.so
enable = true
output = /tmp/out.csv # optional
```

In order to replay either do:

```bash
xrdreplay /tmp/out.csv
```

or

```bash
cat /tmp/out.csv | xrdreplay
```
