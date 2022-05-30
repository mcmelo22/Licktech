function [date,qtde_total_licks, qtde_bout_total, media_lambidas_bout, qtde_pks_30_final,... 
    qtde_bouts_30, mean_ILI_bout_30min, total_licks_bout_30, latencia_primeira, latencia_bout ] = ...
lerlicks(filename, fs, tempo_minutos) 
 
% Variaveis de entrada
% 
% filename - caminho do arquivo obtido pelo licometro
% fs - frequencia de aquisição 
% tempo_minutos (bin) - tempo que sera definido as subjanelas (default: 30 minutos)


% Variaveis de saída
% 
% date - data dd/mm/aaaa
% 
% tempo_minutos - tempo que sera definido as subjanelas (default: 30 minutos)



% abrir arquivo do licometro
fid = fopen(filename)
if (all(fgetl(fid) ~= -1))
 lick = readtable(filename);
 date = string(table2cell(lick(1,4)));

 data = table2array(lick(:,2)); %ler dados
 time = table2array(lick(:,3)); %ler tempo
 duracao = (length(time)/fs)/60 %fs = amostras/segundos
 janelas_30s = duracao/30;
 signal_mean = mean(data);
 s = std(data);
 signal = 4*s+signal_mean; %definir limiar de picos de lambidas
 intv = 1/fs;

 figure
 findpeaks(data, 'MinPeakHeight', signal);
 title(filename)
 %savefig(filename)
 
 
% encontrar lambidas e posição das mesmas
[pks, locs] = findpeaks(data, 'MinPeakHeight', signal);
findpeaks(data, 'MinPeakHeight', signal);
if(~isempty(locs))
timeBetweenPeaks = diff(locs) * intv; 
soma =0;
index =0;
for l =  1:length(timeBetweenPeaks)
    if(timeBetweenPeaks(l,1)<1)
        soma = soma +timeBetweenPeaks(l,1);
        index = index +1;
    end
end

%qte_total_licks = quantidade de picos encontrados
qtde_total_licks = length(pks)
 mean_ILI = soma/index;
 signal_mean = mean(data(1:fs*tempo_minutos,1));
 s = std(data(1:fs*tempo_minutos,1));
 signal = 4*s+signal_mean;
 dados = data(1:fs*tempo_minutos,1);
 %save('dados', 'dados');

flag =0;
 latencia_primeira = 0;
 latencia_bout =0;
 locs_tempo = (locs/fs)/60; % em minutos
 tempo_minutos = 30*60;
 indice_zero =0;
 qtde_pks_30 =0;
 qtde_segundo =0;
 qtde_bout =0;
 total =0;
 min = 1;
 total_licks_bout =0;
 teste =1;
 qtde_bout_total =0;
 ILI = 0;
 mean_ILI_bout_30min =0;
 total_licks_bout_30 =0;
 index_segundo =1;
 ILI_30min =0;
 index_second = 1;
 index_ILI =1;
 total_bouts = 0;
    count =0;

for index_janela_30 = 1: ((length(data)/fs))/(tempo_minutos)
        t_inicio(min) =0+30*indice_zero;
        t_final(min) =30*indice_zero+30;
             min = min+1;   %f =amostra/segundo

             flag_segundo =0;
    for segundo = (0+1800*indice_zero):1:(1800*indice_zero+1800)
             for l = 1:length(locs_tempo)
                   if(locs_tempo(l)>=0+30*indice_zero && locs_tempo(l)<=30*indice_zero+30)
                          qtde_pks_30 = qtde_pks_30+1;

                                if(locs_tempo(l)*60>=segundo && locs_tempo(l)*60 <= (segundo+1))
                                   
                                       ILI =l;
                                      
                                  
                                   qtde_segundo = qtde_segundo +1;
                                end

                   end
             end
           
               flag_segundo(index_segundo) = qtde_segundo;
               mean_ILI(index_segundo) = ILI;
               index_segundo = index_segundo +1;
               qtde_segundo =0;
               t = 0;
               ILI =0;             
             
             

    end
           index_min = 1;
        
           qtdex =0;
           total_licks_bout =0;
           index_second = 1;
           inicioj =0;
           fimj =0;
           %qtde_bout_total =0;
         %  indice_zero =1;
           for j = 1+1800*indice_zero:1:1800+1800*indice_zero
                        if(flag_segundo(j)>1)
                            qtdex = qtdex+1;
                            if qtdex ==1
                                inicioj =j;
                            end
                            total_licks_bout= total_licks_bout+ flag_segundo(j);
                        elseif( flag_segundo(j)<1)
                          if qtdex>=3
                            fimj =j;
                           
                           total_licks_bout= qtdex;
                           qtdex =0;
                           qtde_bout_total = qtde_bout_total+1;
                             media =0;
%                             
                              
                               
                              for i = mean_ILI(inicioj):mean_ILI(fimj-1)
                                if (i+1 <mean_ILI(fimj-1))
                                media = media +abs(locs_tempo(i)*60 - locs_tempo(i+1)*60);
                                end
                              end
                              total(qtde_bout_total) = media/total_licks_bout;
                              total_bouts(qtde_bout_total) = total_licks_bout;
                              inicioj =0;
                              fimj =0;
                              %total_licks_bout= 0;
                          else
                              inicioj=0;
                              fimj=0;
                              qtdex=0;
                              total_licks_bout =0;
                              
                          end
                        else
                            qtdex =0;
                            inicioj =0;
                            fimj =0;
                            total_licks_bout =0;
                        end
                     
            end
    
     
      qtde_pks_30_final(index_janela_30) = floor(qtde_pks_30/1800);
      qtde_pks_30 =0;
      qtde_bouts_30(index_janela_30) = qtde_bout_total; 
      mean_ILI_bout_30min(index_janela_30) = mean(total);
      total_licks_bout_30(index_janela_30) = mean(total_bouts);
      flag_segundo =0;
       indice_zero = indice_zero+1;
      qtde_bout_total =0;
      total = 0;
      total_bouts =0;
      
end
    

     qtde_segundo_total =0;
     qtde_bout_total = 0;
     flag =0;
       total_licks_bout =0;
       
ILI =0;
flag =0;
flag_s=0;
for segundo = 1:(length(data)/fs)
    
     for l = 1:length(locs_tempo)
        %  if(segundo< length(data)/fs-1)
                   if(locs_tempo(l)>=segundo/60 && locs_tempo(l) <=(segundo+1)/60)
                       qtde_segundo_total = qtde_segundo_total +1;
                       ILI =l;
                    end
                   
       %    end
     end
          
     
     flag_s(segundo) = qtde_segundo_total; %qtde de licks no segundo
     mean_ILI_s(segundo) = ILI;
     qtde_segundo_total = 0;
     ILI =0;
     

end 

inicioj =0;
fimj=0;
 for j = 1:1:length(flag_s)
    if(flag_s(j)>1)
        qtdex = qtdex+1;
        if qtdex ==1
            inicioj =j;
        end
        total_licks_bout= total_licks_bout+ flag_s(j);
    elseif( flag_s(j)<1)
      if qtdex>=3
        fimj =j;
       
       total_licks_bout= qtdex;
       qtdex =0;
       qtde_bout_total = qtde_bout_total+1;
           if(qtde_bout_total == 1 && flag ==0)
              latencia_bout(1,1) = j;
              flag =1;
           end
         media =0;
%                             
                              
          if(inicioj>0 && fimj-1>0)
             
          for i = mean_ILI_s(inicioj):mean_ILI_s(fimj-1)
            if (i+1 <mean_ILI_s(fimj-1))
             media = media +abs(locs_tempo(i)*60 - locs_tempo(i+1)*60);
            end
          end
          total(qtde_bout_total) = media/total_licks_bout;
          total_bouts(qtde_bout_total) = total_licks_bout;
          
          inicioj =0;
          fimj =0;
          %total_licks_bout= 0;
          end
      else
          inicioj=0;
          fimj=0;
          qtdex=0;
          total_licks_bout =0;
          
      end
    else
        qtdex =0;
        inicioj =0;
        fimj =0;
        total_licks_bout =0;
    end
                     
 end
  media_lambidas_bout = mean(total_bouts)

% index_segundo =1;
% for j = 1:3:length(flag_s)
%     
%                     if((j+2) <= length(flag_s) && j-1>0)
% 
%                         if(flag_s(j-1) > 1 && flag_s(j) >1  && flag_s(j+1) >1)
%                              qtde_bout_total = qtde_bout_total+1;
%                              total_licks_bout(index_segundo)=  (flag_s(j-1)+flag_s(j)+flag_s(j+1));
%                              index_segundo = index_segundo +1;
%                             
%                         end
%                     end
%                    
%            if(qtde_bout_total == 1 && flag ==0)
%               latencia_bout(1,1) = j;
%               flag =1;
%            end
% end

%media_lambidas_bout
% latencia_primeira - latencia primeira lambida
latencia_primeira(1,1) = locs(1)/fs; 

else
    qtde_total_licks = -1;
    date =-1;
    qtde_bout_total=-1;
    media_lambidas_bout=-1;
    qtde_pks_30_final=-1;
    qtde_bouts_30=-1;
    mean_ILI_bout_30min=-1;
    total_licks_bout_30=-1;
    latencia_primeira=-1;
    latencia_bout =-1;
end
else
    qtde_total_licks = -1;
    date =-1;
    qtde_bout_total=-1;
    media_lambidas_bout=-1;
    qtde_pks_30_final=-1;
    qtde_bouts_30=-1;
    mean_ILI_bout_30min=-1;
    total_licks_bout_30=-1;
    latencia_primeira=-1;
    latencia_bout =-1;
end
end




     
 


