[s,h]=sload('record-[2012.07.06-19.02.16].gdf');
 events=h.EVENT.TYP(:,1);
 
 st=32779;  %Starting stim code
 en=32780;  %Ending stim code
 

 
 samples=h.EVENT.POS(:,1);
 classes=[33024;33025;33026;33027]; %Stim codes of the classes to be found in data
 clscnt=zeros(length(classes),1);   %count of the classes in data
 
 for i=1:length(classes)
     for j=1:length(events)
         if(classes(i,1)==events(j,1))
             clscnt(i,1)=clscnt(i,1)+1; %Simply storing the count of each class as an exercise, not required actually.
          
          
          %Part below isn't working right now. Try to fix this. Here I am trying to extract the data and know which class it belongs to.
             strti=j+1;   %Supposed to be index of starting sample
             stpi=j+2;    %Index of ending sample
             sampl1=h.EVENT.POS(strti,1);  % Actual sample where class 'i' starts in data
             sampl2=h.EVENT.POS(stpi,1);   % Actual sample where class 'i' ends in data
             
             %The data to be extracted is in between these two samples. Try to extract it. This belongs in class i
             
             
         end
       
     end
 end
 
