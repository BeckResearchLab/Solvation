import sys
import os
# solvation_path = os.path.abspath(os.path.join(os.path.dirname(__file__), "../pnnlsolpaper"))
# print(solvation_path)
# sys.path.append("../pnnlsolpaper")
from ..pnnlsolpaper import gnn
from ..pnnlsolpaper import mdm
from ..pnnlsolpaper import smi


def run():
    print("beginning training of gnn model")
    gnn.train.run()
    print("beginning training of mdm model")
    mdm.train.run()
    print("beginning training of smi model")
    smi.train.run()
    print("completed training of all models!")

if __name__ == "__main__":
    run()
