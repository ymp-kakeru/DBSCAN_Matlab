ptCloud = pcread('table_scene_lms400.pcd');
pcshow(ptCloud);
X = ptCloud.Location;

minpts = 500;

kD = pdist2(X,X,'euc','Smallest',minpts);

plot(sort(kD(end,:)));
title('k-distance graph')
xlabel('Points sorted with 500th nearest distances')
ylabel('500th nearest distances')
grid