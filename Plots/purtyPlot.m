function purtyPlot
% function purtyPlot
% Contains preferred stylings for plots.
% Operates on all axes in the current figure.
% Tweak to your preference.
% 20151101 GMW

ax = findobj(gcf,'Type','axes');
set(ax,'FontSize',16,'FontWeight','bold','box','on');
set(findobj(gcf,'Type','line'),'LineWidth',2,'MarkerSize',8);

for i=1:length(ax)
    axnow = ax(i);
    set(get(axnow,'Xlabel'),'FontSize',20,'FontWeight','bold');
    set(get(axnow,'Ylabel'),'FontSize',20,'FontWeight','bold');
    set(get(axnow,'Title'),'FontSize',20,'FontWeight','bold');
end
