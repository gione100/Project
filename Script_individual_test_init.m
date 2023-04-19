% script initializes Simulink performance test model
% can be used to initialize model for long term test of individual model
% Simulink model has to be started manually
% Test result evaluation via script_individual_test_evaluation.m 

clear all
close all
clc

Ts_com = 0.1;       %sample time of SimConnect blocks
T_sim_end   = 600;   %duration of Model simulation
pause_time = 2;      %pause time between tests

%--------------------------------------------------------------------
% load propriate Connection Variable
%--------------------------------------------------------------------
%load M1_connVar_192_0_2_230.mat %connection to any M1 PLC, no login data
load M1_connVar_192_168_0_153_R2.mat %connection to any M1 PLC, no login data

%--------------------------------------------------------------------
% load bus definition
%--------------------------------------------------------------------
load Bus_exchange.mat %bus definition for data exchange via structure
load SiLSBus4.mat
