import os, sys


modify1 = {
    "1": "0",
    "2": "0",
    "3": "0",
    "4": "1",
    "5": "1",
    "6": "2",
    "7": "2",
    "8": "2",
    "9": "2",
    "10": "2",
    "11": "2",
    "12": "2",
    "13": "3",
    "14": "3"
}

path = './pre_txt/'
path2 = './convert_txt/'
file_list = os.listdir(path)

print('FILE CNT : {}'.format(len(file_list)))
for file in file_list:
    f_read = open(path+file, 'r').read()

    out_str = ''
    for line in f_read.strip('\n').split('\n'):
        if len(line) == 0: continue
        words = line.split()
        if words[0] in modify1.keys():
            words[0] = modify1[words[0]]

        out_str += " ".join(words) + '\n'
        # print(words)

    res_str = out_str.rstrip('\n')

    print(file)
    print(f_read.strip())
    print('=======================')
    print(res_str)
    print()

    with open(path2+file, 'w') as f:
        f.write(res_str)
        f.close()

