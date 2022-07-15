

import os
from PyTrack.formatBridge import generateCompatibleFormat
from PyTrack.Experiment import Experiment

print("Running generateCompatibleFormat()")
generateCompatibleFormat(
    exp_path="/opt/MORE_Project",
    device="eyelink",
    stim_list_mode='NA',
    startstring='SCANNER START',
    eye='B',
    reading_method='CSV'
)

print("Running Experiment()")
exp = Experiment(json_file=os.path.abspath("/opt/MORE_Project/MORE_Project.json"),
                  reading_method='CSV')
print("Initializing matrix")
exp.metaMatrixInitialisation() 

print("Analyzing...")
exp.analyse(parameter_list={"all"},
            statistical_test="None",
            file_creation=True)
print("Analyzing...")
exp.analyse(parameter_list={"all"},
           between_factor_list=["Subject_type"],
           within_factor_list=['Stimuli_type'],
           statistical_test='anova',
           file_creation=True)
