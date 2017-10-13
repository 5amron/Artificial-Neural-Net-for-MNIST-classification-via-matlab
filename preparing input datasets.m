my_var00 = ones(784,1000);
o = 1;
for m=1:1000
o = 1;
j = m*784;
jj = (m+1)*784;
    if jj>784000
        break;
    end
for i=j:jj
    my_var00(o,m) = my_var0(1,i);
    o = o+1;
end
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


target = zeros(10,1000);%[0;0;0;0;0;0;0;0;0;0];
for i=1:1000
    target(1,i)=1;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

o = 1;
train_0_row = 1;
train_1_row = 1;
train_2_row = 1;
train_3_row = 1;
train_4_row = 1;
train_5_row = 1;
train_6_row = 1;
train_7_row = 1;
train_8_row = 1;
train_9_row = 1;

for i=1:10000
    for j=1:10
        if target(j,i)== 1
            if j==1
                my_pattern(:,o) = train0(train_0_row,:);
                o = o + 1;
                train_0_row = train_0_row + 1;
            end
            
            if j==2
                my_pattern(:,o) = train1(train_1_row,:);
                o = o + 1;
                train_1_row = train_1_row + 1;
            end
            
            if j==3
                my_pattern(:,o) = train2(train_2_row,:);
                o = o + 1;
                train_2_row = train_2_row + 1;
            end
            
            if j==4
                my_pattern(:,o) = train3(train_3_row,:);
                o = o + 1;
                train_3_row = train_3_row + 1;
            end
            
            if j==5
                my_pattern(:,o) = train4(train_4_row,:);
                o = o + 1;
                train_4_row = train_4_row + 1;
            end
            
            if j==6
                my_pattern(:,o) = train5(train_5_row,:);
                o = o + 1;
                train_5_row = train_5_row + 1;
            end
            
            if j==7
                my_pattern(:,o) = train6(train_6_row,:);
                o = o + 1;
                train_6_row = train_6_row + 1;
            end
            
            if j==8
                my_pattern(:,o) = train7(train_7_row,:);
                o = o + 1;
                train_7_row = train_7_row + 1;
            end
            
            if j==9
                my_pattern(:,o) = train8(train_8_row,:);
                o = o + 1;
                train_8_row = train_8_row + 1;
            end
            
            if j==10
                my_pattern(:,o) = train9(train_9_row,:);
                o = o + 1;
                train_9_row = train_9_row + 1;
            end
            

        
        end
        
        
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



my_var0 = zeros(1,784000);
o = 1;

for m=1:1000
    j = m * 28;
    jj = (m+1)*28;
    for k=1:28
        for i=j:jj
            if jj>784000 || o>784000
                break;
            end
            my_var0(1,o) = var0(k,i);
            o = o + 1;
            if jj>784000 || o>784000
                break;
            end

        end
            if jj>784000 || o>784000
                break;
            end
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
test_in = zeros(784,3000);
test_tar = zeros(10,3000);
j = 0;
for i=7001:10000
    j = j+1;
    test_in(:,j) = my_inputs(:,i);
    test_tar(:,j) = target(:,i);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ss_inputs = zeros(784,7000);
ss_tar = zeros(10,7000);
j = 0;
for i=1:7000
    j = j+1;
    ss_inputs(:,j) = my_inputs(:,i);
    ss_tar(:,j) = target(:,i);
end
    
