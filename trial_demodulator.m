
subplot (3,4,2) , plot(t,signal2)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('Carrier(ASK)')
xlabel('Time')

subplot (3,4,1) , plot(t,signal3)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('ASK Modulated')
xlabel('Time')





subplot (3,4,6) , plot(t, high_frequency_carrier)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('High freq carrier(FSK)')
xlabel('Time')

subplot (3,4,7) , plot(t,low_frequency_carrier)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('Low freq carrier(FSK)')
xlabel('Time')

subplot (3,4,5) , plot(t, modulated_signal)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('FSK Modulated')
xlabel('Time')





subplot (3, 4, 10) , plot(t, carrier_signal)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('Carrier(PSK)')
xlabel('Time')

subplot (3, 4, 9) , plot(t, final_signal)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('PSK Modulated')
xlabel('Time')





signal4 = ask_demodulation(signal3,signal2);
subplot (3,4,4), plot(t,signal4)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('ASK Demodulated')
xlabel('Time')

signal5 = fsk_demodulation(low_frequency_carrier,modulated_signal);
subplot (3,4,8), plot(t,signal5)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('FSK Demodulated')
xlabel('Time')

signal6 = psk_demodulation(carrier_signal,final_signal);
subplot (3,4,12), plot(t,signal6)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('PSK Demodulated')
xlabel('Time')