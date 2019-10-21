ptCloud = pcread('table_scene_lms400.pcd');
pcshow(ptCloud);
X = ptCloud.Location;

minpts = 500;

%kD = pdist2(X,X,'euc','Smallest',minpts);

%plot(sort(kD(end,:)));
%title('k-distance graph')
%xlabel('Points sorted with 50th nearest distances')
%ylabel('50th nearest distances')
%grid

epsilon = 0.1;

labels = dbscan(X,epsilon,minpts);
gscatter(X(:,1),X(:,2),labels);
title('epsilon = 2 and minpts = 50')
grid