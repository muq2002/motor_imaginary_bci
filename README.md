# motor_imaginary_bci
Most demonstrations of algorithms on BCI data are evaluating classification of EEG trials, i.e., windowed EEG signals for fixed length, where each trial corresponds to a specific mental state. But in BCI applications with asynchronous feedback one is faced with the problem that the classifier has to be applied continuously to the incoming EEG without having cues of when the subject is switching her/his intention. This data set poses the challenge of applying a classifier to continuous EEG for which no cue information is given.
Another issue that is addressed in this data set is that the evaluation data contains periods in which the user has no control intention. During those intervals the classifier is supposed to return 0 (no affiliation to one of the target classes).
## Block Diagram
![Logo](https://github.com/muq2002/motor_imaginary_bci/blob/main/figures/EEG_FOR_BCI_Project.drawio.png?raw=true)
