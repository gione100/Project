% script evaluates individual conducted Simulink Sim-Connect performance test 


%--------------------------------------------------------------------
% Data evaluation
%--------------------------------------------------------------------

Ts_com_vector = ones(length(out.Ts_investigation.signal2.Time),1)*Ts_com; %Data series of desired sample time

figure
title('SimConn Performance tests: sample rate achieved')
plot(out.Ts_investigation.signal2.Time, Ts_com_vector, 'LineWidth',2)
ylim([0, 4*Ts_com]);
grid on
hold on
plot(out.Ts_investigation.signal2.Time, out.Ts_investigation.signal2.Data)

legend('base sample time',...
    'sample rate conducted test');


