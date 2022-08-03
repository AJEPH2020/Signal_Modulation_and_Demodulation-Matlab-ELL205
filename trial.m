clc
clear
close all
Tmax = 4;
Ymax = 5;
Ymin = -5;
t = 0 :0.00001:Tmax;

signala = create_rectangular_signal(0.3,0.5,t,0,1,3.5);
subplot (3,4,1), plot(t,signala)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('Message Signal1')
xlabel('Time')

[signal2,signal3] = ask_modulation(signala,t,10,1,0,0);
subplot (3,4,2) , plot(t,signal2)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('Carrier(ASK)')
xlabel('Time')
subplot (3,4,4) , plot(t,signal3)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('ASK Modulated')
xlabel('Time')



signalb = create_rectangular_signal(0.1,0.6,t,0,1,3);
subplot (3,4,5), plot(t,signalb)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('Message Signal2')
xlabel('Time')

[high_frequency_carrier, low_frequency_carrier, modulated_signal] = fsk_modulation(signalb, t, 15 , 2 , 0 , 0 , 10 , 1 , 0 , 0);

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

subplot (3,4,8) , plot(t, modulated_signal)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('FSK Modulated')
xlabel('Time')


signalc = create_rectangular_signal(0.2,0.4,t,0,1,4);
subplot (3,4,9), plot(t,signalc)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('Message Signal3')
xlabel('Time')

[carrier_signal, final_signal] = psk_modulation(signalc, t, 7 , 1 , 0 , 0);
subplot (3, 4, 10) , plot(t, carrier_signal)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('Carrier(PSK)')
xlabel('Time')

subplot (3, 4, 12) , plot(t, final_signal)
xlim([0,Tmax])
ylim([Ymin,Ymax])
ylabel('PSK Modulated')
xlabel('Time')
