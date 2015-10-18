import sys
import json
import time
import urllib2

def sendData(dataDict, rasId):
    urlstr = 'https://weatherpistation-mbalamat.rhcloud.com/push.php?APIkey=' + rasId + \
    '&data=' + dataDict
    print urlstr;
    try:
        urllib2.urlopen(urlstr).read();
    except:
        pass

Qdef main(fileName, rasId):
    file = open(fileName, 'r');
    for line in file:
        jl = json.loads(line);
        sendData(jl, rasId);
    while True:
        line = file.readline();
        if not line:
            time.sleep(0.5);
            continue;
        jl = json.loads(line);
        sendData(jl, rasId);
    file.close();


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print 'Usage: ', sys.argv[0], '<file_with_json>', '<AirPi ID>';
        sys.exit(1);
        main(sys.argv[1], sys.argv[2], sys.argv[3])
