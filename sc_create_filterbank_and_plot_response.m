function createFilterbankAndPlot = sc_create_filterbank_and_plot_response(file, n_filters, f_c_min, f_c_max, q, a_pb)

% %% specify parameters of bandpass filterbank
% n_filters = 16; % [#], number of bandpass filters
% f_c_min = 100; % [Hz], center frequency of lowest-frequency bandpass filter
% f_c_max = 4e3; % [Hz], center frequency of highest-frequency bandpass filter
% q = 3; % [#], quality factor of all bandpass filters
% a_pb = 1; % [#], passband gain of all bandpass filters


%% create transfer functions of bandpass filters
clear filterBank;
filterBank = strcat('/space1/maria+nolan/FilterBanks', file, 'FilterBank.mat');

f_c = logspace(log10(f_c_min),log10(f_c_max),n_filters); clear f_c_min f_c_max; % [Hz], vector of center frequencies of bandpass responses
createFilterbankAndPlot = tf(zeros(1,1,n_filters));
for i=1:n_filters
    createFilterbankAndPlot(:,:,i) = tf([a_pb*(2*pi*f_c(i))/q,0],[1,2*pi*f_c(i)/q,(2*pi*f_c(i))^2]);
end
clear i;


%% determine magnitude responses

% define frequency axis
w = logspace(log10(2*pi*10),log10(2*pi*10e3),100000); f = 1/(2*pi)*w;

% original bandpass responses
filterbank_magresp_db = zeros(n_filters,length(f));
for i=1:n_filters
    filter_magresp = freqresp(createFilterbankAndPlot(:,:,i),w);
    filter_magresp = reshape(filter_magresp,[1,size(filter_magresp,3)]);
    filterbank_magresp_db(i,:) = 20*log10(abs(filter_magresp));
end

save(filterBank, 'createFilterbankAndPlot')

clear i filter_magresp;


%% figure: original bandpass responses and combined bandpass responses together
% figure;
% 
% cmap = fliplr(jet(n_filters));
% for i=1:n_filters
%     semilogx(f,filterbank_magresp_db(i,:),...
%         'Color',cmap(i,:),'LineWidth',1);
%     hold on;
% end
% clear w f;
% clear i cmap;
% hold off;
% grid on;
% xlabel('frequency [Hz]'); xlim([10 10e3]);
% ylabel('magnitude [dB]'); ylim([-20 5]);
% title('filterbank response');