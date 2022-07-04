clc
clear 

%%
dir_content = dir;
filenames = {dir_content.name};
current_files = filenames;
while true
    tic
%for k=1:1:1000 
  dir_content = dir;
  filenames = {dir_content.name};
  new_files = setdiff(filenames,current_files);
  if ~isempty(new_files)
    % deal with the new files
    fprintf('New file\n')
    current_files = filenames;
    %% get senders name
    str=new_files{1,:};
    pause(5)
    A=strread(str,'%s','delimiter','(');
    Sender_name= strread(A{2,:},'%s','delimiter',' ');
    First_name= Sender_name{1,:};  
    Last_name= Sender_name{2,:}; 
    %% get filename of attachment received
    B=strread(str,'%s','delimiter','(');
    File_ID=strread(A{4,:},'%s','delimiter','_');
    File_ID=File_ID{3,:};
    
    %% get email id of sender 
    C=strread(str,'%s','delimiter','(');
    EmailID=strread(A{3,:},'%s','delimiter',')');
    EmailID=EmailID{1,:};
     
%% Analyse image
pause(5)
image=imread(str);
image1=rgb2gray(image);
t=imhist(image1);
n=1:1:size(t,1);
histdata=[n' t];
ext='.xls';
nom=strcat(First_name, Last_name, ext);
save(nom, 'histdata','-ascii', '-tabs');


%% Define these variables appropriately:
%EmailID = from above %Receivers Gmail Adress
mail = 'auto.soil.image@gmail.com'; %Your GMail email address
password = 'I&Cms1063'; %Your GMail password
setpref('Internet','SMTP_Server','smtp.gmail.com');

%% Set email setings
setpref('Internet','E_mail',EmailID);
setpref('Internet','SMTP_Username',mail);
setpref('Internet','SMTP_Password',password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');

%% Send the email. Note that the first input is the address you are sending the email to
sendmail(EmailID,'Thanks for sending an image file','Hello! Dear Sir/Madam. We received your image file. For results on histogram analysis please see attachment, where you can plot the data in 2 columns.', nom )
   
    %break;
  else
    fprintf('No new files\n')
  end
  pause(5)
  toc
end



   
    
