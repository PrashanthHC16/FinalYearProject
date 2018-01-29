[s,h]=sload('record-[2012.07.06-19.02.16].gdf');
 events=h.EVENT.TYP(:,1);
 
 st=32779;
 en=32780;
 

 
 samples=h.EVENT.POS(:,1);
 classes=[33024;33025;33026;33027]; %Class to be found
 clscnt=zeros(length(classes),1);   %count of the classes in data
 
 for i=1:length(classes)
     for j=1:length(events)
         if(classes(i,1)==events(j,1))
             clscnt(i,1)=clscnt(i,1)+1;
             
             strti=j+1;
             stpi=j+2;
             sampl1=h.EVENT.POS(strti,1);
             sampl2=h.EVENT.POS(stpi,1);
             
             
         end
       
     end
 end
 
% 
% z is the Stim code number
% t is the sample value
% 
% If z1 and z2 are two stim codes, then the values of s between the sample
% number t1 and t2 are the EEG signal within the event z1 and z2.
% 
