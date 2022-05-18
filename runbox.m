% clear
% path_directory='C:\Users\maria\OneDrive\Unifesp_projetos\Karina\artigos 2021\E1.2\E1.2\SET1\day4\Licometro Coleta segunda-feira, 30 de novembro de 2020\Resultados\coleta'; 
% Files=dir(path_directory);
% day = 4;
% Set =1;
% name_spreadsheet = 'E1.2_SET1_day4.xls';
% fs = 1/0.06;
% index = 1;
% tempo_minutos = 30;




   %% 1A
 for k =1:length(Files)
   if(strcmp(Files(k).name, 'Caixa1') )
    caixa = 1;
    lick = "A";
    pathcaixa1A= '\Caixa';
    path_caixa1A = strcat(pathcaixa1A, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir1A = path_directory;
    path_dayone_lick1A = '\LicometroA\LicometroASinalBruto.txt';
    path_day1A = strcat(path_caixa1A, path_dayone_lick1A);
    full_dayone_Lick1A = strcat(pathfulldir1A,path_day1A);
    
    if(isfile(full_dayone_Lick1A))
    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
            lerlicks(full_dayone_Lick1A, fs, tempo_minutos); 
 
        if qtde_total_licks ~= -1
        qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
        qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
        media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
        total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
                
        lickf = cell2table({lick});
        T(1,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout))
       elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(1,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
       else
                      vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
        date = "00/00/0000";
         T(1,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
          
       end
    else
          vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
        date = "00/00/0000";
         T(1,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    
    end

   %% 1B

  
    caixa = 1;
    lick = "B";
    pathcaixa1B= '\Caixa';
    path_caixa1B = strcat(pathcaixa1B, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir1B = path_directory;
    path_dayone_lick1B = '\LicometroB\LicometroBSinalBruto.txt';
    path_day1B = strcat(path_caixa1B, path_dayone_lick1B);
    full_dayone_Lick1B = strcat(pathfulldir1B,path_day1B);

    clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
     if(isfile(full_dayone_Lick1B))
    
        [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
                 lerlicks(full_dayone_Lick1B, fs, tempo_minutos); 
        if qtde_total_licks ~= -1
            qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
            qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
            media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
            total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})    
           
            lickf = cell2table({lick});
            T(2,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout))
        elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(2,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
    
        else
         vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
        date = "00/00/0000";
             T(2,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
        end
      else
          vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
        date = "00/00/0000";

           T(2,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
        
      end
 
   elseif( strcmp(Files(k).name, 'Caixa2') )
    %% 2A

      caixa = 2;
    lick = "A";
    pathcaixa2A= '\Caixa';
    path_caixa2A = strcat(pathcaixa2A, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir2A = path_directory;
    path_dayone_lick2A = '\LicometroA\LicometroASinalBruto.txt';
    path_day2A = strcat(path_caixa2A, path_dayone_lick2A);
    full_dayone_Lick2A = strcat(pathfulldir2A,path_day2A);
   
    
    clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
    
    if(isfile(full_dayone_Lick2A))

    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick2A, fs, tempo_minutos) 
       if qtde_total_licks ~= -1
        qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
        qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
        media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
        total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
        
        
        lickf = cell2table({lick});
           T(3,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));
        elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(3,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
     
       
       else
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(3,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
       end
     else
            vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(3,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
     end
%% 2B

    caixa = 2;
    lick = "B";
    pathcaixa2B= '\Caixa';
    path_caixa2B = strcat(pathcaixa2B, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir2B = path_directory;
    path_dayone_lick2B = '\LicometroB\LicometroBSinalBruto.txt';
    path_day2B = strcat(path_caixa2B, path_dayone_lick2B);
    full_dayone_Lick2B = strcat(pathfulldir2B,path_day2B);
 clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
   
   if(isfile(full_dayone_Lick2B))

     [ date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick2B, fs, tempo_minutos) 
      if qtde_total_licks ~= -1
        qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
        qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
        media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
        total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
        
        
        lickf = cell2table({lick});
        T(4,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));
        elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(4,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
     
      else
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(4,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
      end
    else
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(4,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
      
    end
       %% 3A
  elseif( strcmp(Files(k).name, 'Caixa3') )
       caixa = 3;
    lick = "A";
    pathcaixa3A= '\Caixa';
    path_caixa3A = strcat(pathcaixa3A, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir3A = path_directory;
    path_dayone_lick3A = '\LicometroA\LicometroASinalBruto.txt';
    path_day3A = strcat(path_caixa3A, path_dayone_lick3A);
    full_dayone_Lick3A = strcat(pathfulldir3A,path_day3A);
    clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
   if(isfile(full_dayone_Lick3A))

    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick3A, fs, tempo_minutos) 
     if qtde_total_licks ~= -1
        qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
        qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
        media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
        total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
        
        
        lickf = cell2table({lick});
        T(5,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));
      elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(5,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
    
     else
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(5,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
     end
    else
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(5,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    end
     
  
%% 3B

    caixa = 3;
    lick = "B";
    pathcaixa3B= '\Caixa';
    path_caixa3B = strcat(pathcaixa3B, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir3B = path_directory;
    path_dayone_lick3B = '\LicometroB\LicometroBSinalBruto.txt';
    path_day3B = strcat(path_caixa3B, path_dayone_lick3B);
    full_dayone_Lick3B = strcat(pathfulldir3B,path_day3B);

     clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
   if(isfile(full_dayone_Lick3B))

     [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick3B, fs, tempo_minutos) 
      if qtde_total_licks ~= -1
        qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
        qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
        media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
        total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
        
        
        lickf = cell2table({lick});
        T(6,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));
       elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(6,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
     
      else
             vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(6,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
      end
    else
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(6,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
     
   end
       %% 4A
  elseif( strcmp(Files(k).name, 'Caixa4') )
   caixa = 4;
    lick = "A";
    pathcaixa4A= '\Caixa';
    path_caixa4A = strcat(pathcaixa4A, string(caixa)); 
   % path_day1A = '\DAY1\';

    pathfulldir4A = path_directory;
    path_dayone_lick4A = '\LicometroA\LicometroASinalBruto.txt';
    path_day4A = strcat(path_caixa4A, path_dayone_lick4A);
    full_dayone_Lick4A = strcat(pathfulldir4A,path_day4A);
     clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
    
   if(isfile(full_dayone_Lick4A))
 
    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick4A, fs, tempo_minutos) 
     if qtde_total_licks ~= -1
        qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
        qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
        media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
        total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
        
        
        lickf = cell2table({lick});
        T(7,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));
      
      elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(7,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
    
      else
            
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(7,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
      end
   
   else
           vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(7,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
      
     
   end
%% 4B

   caixa = 4;
    lick = "B";
    pathcaixa4B= '\Caixa';
    path_caixa4B = strcat(pathcaixa4B, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir4B = path_directory;
    path_dayone_lick4B = '\LicometroB\LicometroBSinalBruto.txt';
    path_day4B = strcat(path_caixa4B, path_dayone_lick4B);
    full_dayone_Lick4B = strcat(pathfulldir4B,path_day4B);
     clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
    if(isfile(full_dayone_Lick4B))

     [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick4B, fs, tempo_minutos) 
      if qtde_total_licks ~= -1
        qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
        qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
        media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
        total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
        
        
        lickf = cell2table({lick});
        T(8,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));
       elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(8,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
       
       else
          
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(8,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
      end
     else
     
            vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(8,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
     end
   
  elseif( strcmp(Files(k).name, 'Caixa5') )
       %% 5A
     caixa = 5;
    lick = "A";
    pathcaixa5A= '\Caixa';
    path_caixa5A = strcat(pathcaixa5A, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir5A = path_directory;
    path_dayone_lick5A = '\LicometroA\LicometroASinalBruto.txt';
    path_day5A = strcat(path_caixa5A, path_dayone_lick5A);
    full_dayone_Lick5A = strcat(pathfulldir5A,path_day5A);

      clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
   if(isfile(full_dayone_Lick5A))
  
    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick5A, fs, tempo_minutos) 
     if qtde_total_licks ~= -1
        qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
        qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
        media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
        total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
        
        
        lickf = cell2table({lick});
        T(9,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));   
     elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(9,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
     
     else
           
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(9,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
     end
   else
      
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(9,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    end
   
%% 5B
    caixa = 5;
    lick = "B";
    pathcaixa5B= '\Caixa';
    path_caixa5B = strcat(pathcaixa5B, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir5B = path_directory;
    path_dayone_lick5B = '\LicometroB\LicometroBSinalBruto.txt';
    path_day5B = strcat(path_caixa5B, path_dayone_lick5B);
    full_dayone_Lick5B = strcat(pathfulldir5B,path_day5B);
          clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
    
    if(isfile(full_dayone_Lick5B))

          
    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick5B, fs, tempo_minutos) 

        if qtde_total_licks ~= -1
    qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
    qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
    media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
    total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
    
    
    lickf = cell2table({lick});
    T(10,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));
        elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(10,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
    
        
        else
           
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(10,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
         end
    else
        
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(10,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
     
    end
       %% 6A
  elseif( strcmp(Files(k).name, 'Caixa6') )
     caixa = 6;
    lick = "A";
    pathcaixa6A= '\Caixa';
    path_caixa6A = strcat(pathcaixa6A, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir6A = path_directory;
    path_dayone_lick6A = '\LicometroA\LicometroASinalBruto.txt';
    path_day6A = strcat(path_caixa6A, path_dayone_lick6A);
    full_dayone_Lick6A = strcat(pathfulldir6A,path_day6A);
          clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
    
    if(isfile(full_dayone_Lick6A))

     [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick6A, fs, tempo_minutos) 

      if qtde_total_licks ~= -1
        qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
        qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
        media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
        total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
        
        
        lickf = cell2table({lick});
        T(11,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));

      elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(11,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
    
      else
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(11,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
      end
    else
        
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(11,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    
    end
%% 6B
   
 caixa = 6;
    lick = "B";
    pathcaixa6B= '\Caixa';
    path_caixa6B = strcat(pathcaixa6B, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir6B = path_directory;
    path_dayone_lick6B = '\LicometroB\LicometroBSinalBruto.txt';
    path_day6B = strcat(path_caixa6B, path_dayone_lick6B);
    full_dayone_Lick6B = strcat(pathfulldir6B,path_day6B);

          clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout

    if(isfile(full_dayone_Lick6B))

    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick6B, fs, tempo_minutos) 
     if qtde_total_licks ~= -1
        qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
        qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
        media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
        total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
        
        
        lickf = cell2table({lick});
        T(12,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));
      elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(12,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
     
     else
         
             vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(12,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
     end
    else
        
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(12,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    end
      
 %% 7A
   elseif( strcmp(Files(k).name, 'Caixa7') )
   caixa = 7;
    lick = "A";
    pathcaixa7A= '\Caixa';
    path_caixa7A = strcat(pathcaixa7A, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir7A = path_directory;
    path_dayone_lick7A = '\LicometroA\LicometroASinalBruto.txt';
    path_day7A = strcat(path_caixa7A, path_dayone_lick7A);
    full_dayone_Lick7A = strcat(pathfulldir7A,path_day7A);
          clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout

    if(isfile(full_dayone_Lick7A))

    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick7A, fs, tempo_minutos) 
     if qtde_total_licks ~= -1
        qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
        qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
        media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
        total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
        
        
        lickf = cell2table({lick});
        T(13,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout))
     elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(13,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
     
     else
         
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(13,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
     end
    else
       
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(13,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    
    end
%% 7B

 caixa = 7;
    lick = "B";
    pathcaixa7B= '\Caixa';
    path_caixa7B = strcat(pathcaixa7B, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir7B = path_directory;
    path_dayone_lick7B = '\LicometroB\LicometroBSinalBruto.txt';
    path_day7B = strcat(path_caixa7B, path_dayone_lick7B);
    full_dayone_Lick7B = strcat(pathfulldir7B,path_day7B);         
    clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
   
    if(isfile(full_dayone_Lick7B))

    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick7B, fs, tempo_minutos) 
       if qtde_total_licks ~= -1
            qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
            qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
            media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
            total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
            
            
            lickf = cell2table({lick});
            T(14,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout))
        elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(14,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
    
       else
            
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(14,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
        end
    else
          vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(14,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    
    end
   elseif( strcmp(Files(k).name, 'Caixa8') )

    %% 8A
 caixa = 8;
    lick = "A";
    pathcaixa8A= '\Caixa';
    path_caixa8A = strcat(pathcaixa8A, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir8A = path_directory;
    path_dayone_lick8A = '\LicometroA\LicometroASinalBruto.txt';
    path_day8A = strcat(path_caixa8A, path_dayone_lick8A);
    full_dayone_Lick8A = strcat(pathfulldir8A,path_day8A);
          clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
   if(isfile(full_dayone_Lick8A))
    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick8A, fs, tempo_minutos) 
     if qtde_total_licks ~= -1
    qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
    qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
    media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
    total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
    
    
    lickf = cell2table({lick});
    T(15,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));  
      elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(15,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
     
     else
           
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(15,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
     end
   else
       
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(15,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    end
 
%% 8B

 caixa = 8;
    lick = "B";
    pathcaixa8B= '\Caixa';
    path_caixa8B = strcat(pathcaixa8B, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir8B = path_directory;
    path_dayone_lick8B = '\LicometroB\LicometroBSinalBruto.txt';
    path_day8B = strcat(path_caixa8B, path_dayone_lick8B);
    full_dayone_Lick8B = strcat(pathfulldir8B,path_day8B);
    
    clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
   if(isfile(full_dayone_Lick8B))
    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick8B, fs, tempo_minutos) 
     if qtde_total_licks ~= -1
    qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
    qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
    media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
    total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
    
    
    lickf = cell2table({lick});
    T(16,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout)); 
     elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(16,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
     
     else
          
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(16,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
     
     end
   else
       
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(16,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    end
   
  elseif( strcmp(Files(k).name, 'Caixa9') )

    %% 9A

   caixa = 9;
    lick = "A";
    pathcaixa9A= '\Caixa';
    path_caixa9A = strcat(pathcaixa9A, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir9A = path_directory;
    path_dayone_lick9A = '\LicometroA\LicometroASinalBruto.txt';
    path_day9A = strcat(path_caixa9A, path_dayone_lick9A);
    full_dayone_Lick9A = strcat(pathfulldir9A,path_day9A);
    
          clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
    
   if(isfile(full_dayone_Lick9A))
    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick9A, fs, tempo_minutos) 
     if qtde_total_licks ~= -1
    qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
    qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
    media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
    total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
    
    
    lickf = cell2table({lick});
    T(17,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));   
     elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(17,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
    
     else
            
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(17,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
     
     end
   else
      
             vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(17,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    
  end
%% 9B

      caixa = 9;
    lick = "B";
    pathcaixa9B= '\Caixa';
    path_caixa9B = strcat(pathcaixa9B, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir9B = path_directory;
    path_dayone_lick9B = '\LicometroB\LicometroBSinalBruto.txt';
    path_day9B = strcat(path_caixa9B, path_dayone_lick9B);
    full_dayone_Lick9B = strcat(pathfulldir9B,path_day9B);
    

          clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
   
   if(isfile(full_dayone_Lick9B))
    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick9B, fs, tempo_minutos) 
     if qtde_total_licks ~= -1
    qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
    qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
    media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
    total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
    
    
    lickf = cell2table({lick});
    T(18,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));
     elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(18,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
     
     else
    
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(18,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
     end
     
   else
      
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(18,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    end
   
       %% 10A
 elseif( strcmp(Files(k).name, 'Caixa10') )

        caixa = 10;
    lick = "A";
    pathcaixa10A= '\Caixa';
    path_caixa10A = strcat(pathcaixa10A, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir10A = path_directory;
    path_dayone_lick10A = '\LicometroA\LicometroASinalBruto.txt';
    pathday10A = strcat(path_caixa10A, path_dayone_lick10A);
    full_dayone_Lick10A = strcat(pathfulldir10A,path_day10A);
    
          clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
    
   if(isfile(full_dayone_Lick10A))
    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick10A, fs, tempo_minutos)
     if qtde_total_licks ~= -1
        qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
        qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
        media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
        total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
        
        
        lickf = cell2table({lick});
     
        T(19,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout))
         index = index+1;    
      elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(19,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
     
     else
           
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(19,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
      end
     
   else
      
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(19,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    
   end
    %% 10B

  caixa = 10;
    lick = "B";
    pathcaixa10B= '\Caixa';
    path_caixa10B = strcat(pathcaixa10B, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir10B = path_directory;
    path_dayone_lick10B = '\LicometroB\LicometroBSinalBruto.txt';
    pathday10B = strcat(path_caixa10B, path_dayone_lick10B);
    full_dayone_Lick10B = strcat(pathfulldir10B,path_day10B);
    

          clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
   if(isfile(full_dayone_Lick10B))
    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick10B, fs, tempo_minutos) 
        if qtde_total_licks ~= -1
    qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
    qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
    media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
    total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
    
    
    lickf = cell2table({lick});
    T(20,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout)); 
        elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(20,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
     
        else
            
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(20,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
     
         end
   else
        
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(20,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    
   end
           %% 11A
 elseif( strcmp(Files(k).name, 'DAY11') )

  caixa = 11;
    lick = "A";
    pathcaixa11A= '\Caixa';
    path_caixa11A = strcat(pathcaixa11A, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir11A = path_directory;
    path_dayone_lick11A = '\LicometroA\LicometroASinalBruto.txt';
    pathday11A = strcat(path_caixa11A, path_dayone_lick11A);
    full_dayone_Lick11A = strcat(pathfulldir11A,path_day11A);
    
          clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
   if(isfile(full_dayone_Lick11A))
     [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick11A, fs, tempo_minutos) 
      if qtde_total_licks ~= -1
    qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
    qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
    media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
    total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
    
    
    lickf = cell2table({lick});
    T(21,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));
      elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(21,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
    
      else
           
            vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(21,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
     
      end

   else
        
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(21,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    end
   
%% 11B

  caixa = 11;
    lick = "B";
    pathcaixa11B= '\Caixa';
    path_caixa11B = strcat(pathcaixa11B, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir11B = path_directory;
    path_dayone_lick11B = '\LicometroB\LicometroBSinalBruto.txt';
    pathday11B = strcat(path_caixa11B, path_dayone_lick11B);
    full_dayone_Lick11B = strcat(pathfulldir11B,path_day11B);
    

          clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
   if(isfile(full_dayone_Lick11B))
    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick11B, fs, tempo_minutos) 
     if qtde_total_licks ~= -1
        qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
        qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
        media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
        total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
        
        
        lickf = cell2table({lick});
        T(22,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));   
     elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(22,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
    
     else
           
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(22,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
     
     end
   else
       
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(22,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    end
  
 elseif( strcmp(Files(k).name, 'DAY12') )
    %% 12A
   
  caixa = 12;
    lick = "A";
    pathcaixa12A= '\Caixa';
    path_caixa12A = strcat(pathcaixa12A, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir12A = path_directory;
    path_dayone_lick12A = '\LicometroA\LicometroASinalBruto.txt';
    pathday12A = strcat(path_caixa12A, path_dayone_lick12A);
    full_dayone_Lick12A = strcat(pathfulldir12A,path_day12A);
    
    
 
          clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
   if(isfile(full_dayone_Lick12A))
    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick12A, fs, tempo_minutos) 
     if qtde_total_licks ~= -1
    qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
    qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
    media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
    total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
    
    
    lickf = cell2table({lick});
    T(23,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout));
     elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(23,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
     
     else
            
              vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(23,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
     end
     
   else
        
               vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(23,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
    end
   
%% 12B
  caixa = 12;
    lick = "B";
    pathcaixa12B= '\Caixa';
    path_caixa12B = strcat(pathcaixa12B, string(caixa)); 
   % path_day1A = '\DAY1\';
    pathfulldir12B = path_directory;
    path_dayone_lick12B = '\LicometroB\LicometroBSinalBruto.txt';
    pathday12B = strcat(path_caixa12B, path_dayone_lick12B);
    full_dayone_Lick12B = strcat(pathfulldir12B,path_day12B);
    

          clear qtde_total_licks qtde_bout_total media_lambidas_bout qtde_lks_30 qtde_bouts_30 media_ILI_bout_30min...
        latencia_primeira latencia_bout total_licks_bout
   if(isfile(full_dayone_Lick12B))
    [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_lks_30, qtde_bouts_30, media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout ] = ...
    lerlicks(full_dayone_Lick12B, fs, tempo_minutos) 
     if qtde_total_licks ~= -1
    qtde_bouts_30=cell2table({strjoin(cellstr(num2str(qtde_bouts_30')),';')})
    qtde_lks_30 = cell2table({strjoin(cellstr(num2str(qtde_lks_30')),';')})
    media_ILI_bout_30min =cell2table({strjoin(cellstr(num2str(media_ILI_bout_30min')),';')})
    total_licks_bout = cell2table({strjoin(cellstr(num2str(total_licks_bout')),';')})
    
    
    lickf = cell2table({lick});
    T(24,:) = table(Set,  caixa, day, {lick}, date, string(qtde_total_licks), string(qtde_bout_total), string(media_lambidas_bout), qtde_lks_30, qtde_bouts_30,...
            media_ILI_bout_30min, total_licks_bout, string(latencia_primeira), string(latencia_bout))
     elseif qtde_total_licks == 0
           vazio = '0';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({'0'});
        qtde_lks_30 = table({'0'});
        qtde_bouts_30 =table({'0'});
        total_licks_bout = table({'0'});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
    
         T(24,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)
     
     else
           
            vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
             T(24,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                    qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
              
     
     end

   else
         vazio = '';
        qtde_total_licks = string(vazio);
        qtde_bout_total = string(vazio);
        media_lambidas_bout = string(vazio);
        media_ILI_bout_30min = table({''});
        qtde_lks_30 = table({''});
        qtde_bouts_30 =table({''});
        total_licks_bout = table({''});
        latencia_primeira = string(vazio);
        latencia_bout =string(vazio);
            date = "00/00/0000";
           T(24,:) = table(Set,  caixa, day, {lick}, date,  qtde_total_licks, qtde_bout_total, media_lambidas_bout, ...
                qtde_lks_30, qtde_bouts_30,media_ILI_bout_30min, total_licks_bout, latencia_primeira, latencia_bout)    
           
   end

   
   end
end
%table2
close all;
T_final = T;
index = 1;
% for i = 1:24
%  
%         if(T.Set(i,1) ~= 0)
      
         
            T_final.qtde_lks_30 = cellstr(table2cell(T.qtde_lks_30))
            T_final.qtde_bouts_30= cellstr(table2cell(T.qtde_bouts_30))
            T_final.media_ILI_bout_30min = cellstr(table2cell(T.media_ILI_bout_30min))
            T_final.total_licks_bout = cellstr(table2cell(T.total_licks_bout))
%             T_final.media_lambidas_bout = string(T.media_lambidas_bout)
%             T_final.latencia_primeira = string(T.latencia_primeira);
%             T_final.latencia_bout = string(T.latencia_bout)
%             %T_final.date(i,1) = cellstr(string(table2cell(T.date(i,1))))
            
%          end
%     
% en
% 
writetable(T_final, name_spreadsheet)
























































































































































































































