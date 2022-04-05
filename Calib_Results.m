% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1298.309518631313267 ; 1312.622675179321050 ];

%-- Principal point:
cc = [ 810.351402841761228 ; 599.772608830674358 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.164971710962640 ; -0.544278461710387 ; -0.004680280419285 ; 0.001163702740216 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 9.265582468278495 ; 9.122031554870519 ];

%-- Principal point uncertainty:
cc_error = [ 7.072589053516290 ; 7.962528996428626 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.019367984048759 ; 0.077616865328515 ; 0.002117888430440 ; 0.002223411673588 ; 0.000000000000000 ];

%-- Image size:
nx = 1599;
ny = 1200;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 15;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -2.198666e+00 ; -2.169992e+00 ; -1.318381e-01 ];
Tc_1  = [ -8.931168e+01 ; -7.766844e+01 ; 3.652671e+02 ];
omc_error_1 = [ 5.897511e-03 ; 6.251769e-03 ; 1.269557e-02 ];
Tc_error_1  = [ 2.017708e+00 ; 2.252876e+00 ; 2.790947e+00 ];

%-- Image #2:
omc_2 = [ -2.235847e+00 ; -2.189598e+00 ; -1.558250e-01 ];
Tc_2  = [ -8.630132e+01 ; -8.386768e+01 ; 4.212899e+02 ];
omc_error_2 = [ 7.232096e-03 ; 7.337212e-03 ; 1.544693e-02 ];
Tc_error_2  = [ 2.331068e+00 ; 2.592954e+00 ; 3.298403e+00 ];

%-- Image #3:
omc_3 = [ -2.230959e+00 ; -2.193854e+00 ; -1.510655e-01 ];
Tc_3  = [ -8.481709e+01 ; -8.241604e+01 ; 4.244119e+02 ];
omc_error_3 = [ 7.253081e-03 ; 7.431248e-03 ; 1.557038e-02 ];
Tc_error_3  = [ 2.346595e+00 ; 2.610679e+00 ; 3.327665e+00 ];

%-- Image #4:
omc_4 = [ -2.233633e+00 ; -2.191154e+00 ; -1.282631e-01 ];
Tc_4  = [ -8.637216e+01 ; -8.832892e+01 ; 4.785150e+02 ];
omc_error_4 = [ 8.934769e-03 ; 8.891136e-03 ; 1.902282e-02 ];
Tc_error_4  = [ 2.642478e+00 ; 2.940825e+00 ; 3.842727e+00 ];

%-- Image #5:
omc_5 = [ 2.229199e+00 ; 2.197549e+00 ; 2.034722e-01 ];
Tc_5  = [ -8.869357e+01 ; -7.210822e+01 ; 2.659605e+02 ];
omc_error_5 = [ 5.281659e-03 ; 4.555435e-03 ; 1.051531e-02 ];
Tc_error_5  = [ 1.470676e+00 ; 1.642335e+00 ; 1.961447e+00 ];

%-- Image #6:
omc_6 = [ 2.114153e+00 ; 2.022018e+00 ; -1.660658e-01 ];
Tc_6  = [ -9.506697e+01 ; -8.672531e+01 ; 4.159324e+02 ];
omc_error_6 = [ 5.493507e-03 ; 5.905466e-03 ; 1.119777e-02 ];
Tc_error_6  = [ 2.276975e+00 ; 2.490504e+00 ; 2.820525e+00 ];

%-- Image #7:
omc_7 = [ -1.934294e+00 ; -1.909420e+00 ; -6.491041e-01 ];
Tc_7  = [ -8.606997e+01 ; -4.549083e+01 ; 2.749452e+02 ];
omc_error_7 = [ 3.979253e-03 ; 5.659307e-03 ; 8.552708e-03 ];
Tc_error_7  = [ 1.509509e+00 ; 1.693146e+00 ; 2.082340e+00 ];

%-- Image #8:
omc_8 = [ -2.065081e+00 ; -2.063078e+00 ; 2.904771e-01 ];
Tc_8  = [ -1.263269e+02 ; -7.908171e+01 ; 4.297489e+02 ];
omc_error_8 = [ 6.137381e-03 ; 5.289548e-03 ; 1.058007e-02 ];
Tc_error_8  = [ 2.335078e+00 ; 2.602364e+00 ; 2.798856e+00 ];

%-- Image #9:
omc_9 = [ 2.046838e+00 ; 1.837396e+00 ; 5.570610e-01 ];
Tc_9  = [ -8.040736e+01 ; -7.387295e+01 ; 3.308501e+02 ];
omc_error_9 = [ 5.365384e-03 ; 4.168517e-03 ; 9.431172e-03 ];
Tc_error_9  = [ 1.852254e+00 ; 2.014527e+00 ; 2.470257e+00 ];

%-- Image #10:
omc_10 = [ 2.254526e+00 ; 2.155997e+00 ; 1.552949e-01 ];
Tc_10  = [ -1.075037e+02 ; -7.960892e+01 ; 3.540334e+02 ];
omc_error_10 = [ 5.883102e-03 ; 5.708543e-03 ; 1.272836e-02 ];
Tc_error_10  = [ 1.969004e+00 ; 2.189811e+00 ; 2.677705e+00 ];

%-- Image #11:
omc_11 = [ -1.884244e+00 ; -1.983799e+00 ; -1.179593e+00 ];
Tc_11  = [ -4.353458e+01 ; -4.383806e+01 ; 2.410060e+02 ];
omc_error_11 = [ 3.431709e-03 ; 6.598612e-03 ; 8.552433e-03 ];
Tc_error_11  = [ 1.330401e+00 ; 1.482709e+00 ; 2.083223e+00 ];

%-- Image #12:
omc_12 = [ -1.832957e+00 ; -1.850728e+00 ; -6.691960e-01 ];
Tc_12  = [ -9.164522e+01 ; -6.766223e+01 ; 3.508332e+02 ];
omc_error_12 = [ 4.468586e-03 ; 5.818294e-03 ; 8.632270e-03 ];
Tc_error_12  = [ 1.927913e+00 ; 2.167440e+00 ; 2.666280e+00 ];

%-- Image #13:
omc_13 = [ -1.834319e+00 ; -1.796773e+00 ; -4.067325e-01 ];
Tc_13  = [ -9.070612e+01 ; -4.827075e+01 ; 4.030768e+02 ];
omc_error_13 = [ 4.783959e-03 ; 5.787237e-03 ; 8.621736e-03 ];
Tc_error_13  = [ 2.192674e+00 ; 2.469243e+00 ; 2.851086e+00 ];

%-- Image #14:
omc_14 = [ -1.771483e+00 ; -1.647474e+00 ; -3.688076e-01 ];
Tc_14  = [ -1.539334e+02 ; -6.120795e+01 ; 3.104378e+02 ];
omc_error_14 = [ 5.008607e-03 ; 4.797338e-03 ; 7.512932e-03 ];
Tc_error_14  = [ 1.704446e+00 ; 1.962030e+00 ; 2.306259e+00 ];

%-- Image #15:
omc_15 = [ -1.926689e+00 ; -1.940244e+00 ; -7.917147e-01 ];
Tc_15  = [ -5.783918e+01 ; -2.358557e+01 ; 3.374590e+02 ];
omc_error_15 = [ 3.955651e-03 ; 6.217226e-03 ; 9.040471e-03 ];
Tc_error_15  = [ 1.841324e+00 ; 2.055776e+00 ; 2.628227e+00 ];

