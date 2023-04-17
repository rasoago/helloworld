v1= input('v1= ');
v2= input('v2= ');
v3= input('v3= ');
% 1


dis_v1_v2 = norm(v1-v2)
dis_v1_v3 = norm(v1-v3)
dis_v2_v3 = norm(v2-v3)

mag_v1 = norm(v1);
mag_v2 = norm(v2);
mag_v3 = norm(v3);

simil_v1_v2 = dot(v1, v2)/mag_v1/mag_v2;
simil_v1_v3 = dot(v1, v3)/mag_v1/mag_v3;
simil_v2_v3 = dot(v2, v3)/mag_v2/mag_v3;
% 2


fprintf("nearist vector\n")
if dis_v1_v2<dis_v1_v3
    if dis_v1_v2<dis_v2_v3 , disp(['v1 = [',num2str(v1),']']), disp(['v2 = [',num2str(v2),']'])
    else     , disp(['v2 = [',num2str(v2),']']), disp(['v3 = [',num2str(v3),']'])
    end
else
    if dis_v1_v3<dis_v2_v3 , disp(['v1 = [',num2str(v1),']']), disp(['v3 = [',num2str(v3),']'])
    else     , disp(['v2 = [',num2str(v2),']']), disp(['v3 = [',num2str(v3),']'])
    end
end

fprintf("most similar vector\n")
if simil_v1_v2>simil_v1_v3
    if simil_v1_v2>simil_v2_v3 , disp(['v1 = [',num2str(v1),']']), disp(v2)
    else     , disp(['v2 = [',num2str(v2),']']), disp(['v3 = [',num2str(v3),']'])
    end
else
    if simil_v1_v3>simil_v2_v3 , disp(['v1 = [',num2str(v1),']']), disp(['v3 = [',num2str(v3),']'])
    else     , disp(['v2 = [',num2str(v2),']']), disp(['v3 = [',num2str(v3),']'])
    end
end
% 3