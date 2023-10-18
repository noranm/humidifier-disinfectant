library(dplyr)
library(ggplot2)

theme_set(theme_bw())
x_name <- expression(paste(eta, " at ", gamma==0))
ggplot(data=Results, aes(x=epsilon, y=bias, color=tr_beta)) + geom_line() +
  geom_ribbon(aes(ymin = bias - 1.96*mean_SE_diff, ymax = bias + 1.96*mean_SE_diff), alpha = 0.2) + 
  facet_grid(.~prob) + 
  ylab("Bias") + xlab(x_name) + 
  geom_vline(xintercept=0, linetype="dashed", color="grey60") +
  geom_hline(yintercept=0, linetype="dashed", color="grey60") +
  geom_hline(yintercept=c(-1,1), linetype="dashed", color="grey20") +
  scale_x_continuous(limit=c(-0.1, 0.1)) + 
  theme(legend.position=c(0.05, 0.75),
        legend.key.size = unit(0.3, 'cm') ) +
  labs(color=expression(paste(beta, " ") ))
