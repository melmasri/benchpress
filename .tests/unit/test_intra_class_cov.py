import os
import sys

import subprocess as sp
from tempfile import TemporaryDirectory
import shutil
from pathlib import Path, PurePosixPath

sys.path.insert(0, os.path.dirname(__file__))

import common


def test_intra_class_cov():

    with TemporaryDirectory() as tmpdir:
        workdir = Path(tmpdir) / "workdir"
        data_path = PurePosixPath(".tests/unit/intra_class_cov/data")
        expected_path = PurePosixPath(".tests/unit/intra_class_cov/expected")

        # Copy data to the temporary workdir.
        shutil.copytree(data_path, workdir)

        # dbg
        print("results/parameters/intra-class/rho=0.4/sigma2=1.0/seed=1/adjmat=/bdgraph_graphsim/p=50/graph=circle/class=None/size=None/prob=0.2/seed=1.csv", file=sys.stderr)

        # Run the test job.
        sp.check_output([
            "python",
            "-m",
            "snakemake", 
            "results/parameters/intra-class/rho=0.4/sigma2=1.0/seed=1/adjmat=/bdgraph_graphsim/p=50/graph=circle/class=None/size=None/prob=0.2/seed=1.csv",
            "-F", 
            "-j1",
            "--keep-target-files",
    
            "--directory",
            workdir,
        ])

        # Check the output byte by byte using cmp.
        # To modify this behavior, you can inherit from common.OutputChecker in here
        # and overwrite the method `compare_files(generated_file, expected_file), 
        # also see common.py.
        common.OutputChecker(data_path, expected_path, workdir).check()
