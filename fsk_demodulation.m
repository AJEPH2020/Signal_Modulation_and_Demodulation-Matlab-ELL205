function signal5 = fsk_demodulation(low_frequency_carrier, modulated_signal)
signal5 = (modulated_signal ~= low_frequency_carrier);
end
