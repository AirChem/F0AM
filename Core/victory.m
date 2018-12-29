function victory

% disp('VICTORY!!!')

disp('*******************************************')
disp('\    /  |  -----  -----  -----  |--\  \ /  |')
disp(' \  /   |  |        |    |   |  |__/   |   |')
disp('  \/    |  -----    |    -----  |  \   |   .')
disp('*******************************************')

[soundwav,soundFreq] = wavread('ffVII_victory.wav');
sound(soundwav,soundFreq)