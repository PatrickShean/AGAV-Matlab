clear;

name = 'test1';
[carSpeed, speedText, carSize, carWidth] = controller('001.jpg', '002.jpg');
fprintf('%s | %iMPH %s  | %2.2fM %s \n', name, speedText, carSpeed, carSize, carWidth)
display (' ')

name = 'test2';
[carSpeed, speedText, carSize, carWidth] = controller('001.jpg', '008.jpg');
fprintf('%s | %iMPH %s  | %2.2fM %s \n', name, speedText, carSpeed, carSize, carWidth)
display (' ')

name = 'test3';
[carSpeed, speedText, carSize, carWidth] = controller('oversized.jpg', '011.jpg');
fprintf('%s | %iMPH %s  | %2.2fM %s \n', name, speedText, carSpeed, carSize, carWidth)
display (' ')

name = 'test4';
[carSpeed, speedText, carSize, carWidth] = controller('fire01.jpg', 'fire02.jpg');
fprintf('%s | %iMPH %s  | %2.2fM %s \n', name, speedText, carSpeed, carSize, carWidth)
display (' ')

%Instructions
%To do the tests type 'tests' into the command window for all of them to be
%run at the same time. 
%The second image on the controller function on test1 and test2 can be changed to 
%any value ranging from 002 to 011 e.g. from '002.jpg' to '005.jpg'.