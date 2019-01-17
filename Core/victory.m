function victory

% disp('VICTORY!!!')

disp('********************************************')
disp('\    /  |  -----  -----  -----  |--\  \ /  |')
disp(' \  /   |  |        |    |   |  |__/   |   |')
disp('  \/    |  -----    |    -----  |  \   |   .')
disp('********************************************')

try
    [soundwav,soundFreq] = audioread('ffVII_victory.wav'); %new matlab
catch
    [soundwav,soundFreq] = wavread('ffVII_victory.wav'); %old matlab
end

sound(soundwav,soundFreq)