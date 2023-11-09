# effect plot
ggplot() + 
  geom_line(aes(x=dt$T, y=fit_ITS$fitted.values)) +
  geom_ribbon(aes(x=dt$T, ymin=fitted1, ymax=fitted4), alpha=0.2, color="red") + 
  geom_ribbon(aes(x=dt$T, ymin=fitted3, ymax=fitted2), alpha=0.2, color="blue")+
  geom_point(data=dt, aes(x=T, y=Y)) + 
  geom_vline(xintercept= sum(dt$X), linetype="dashed", color="grey40") + 
  xlab("Time") + ylab("Outcome")

# counterfactual plot
ggplot() + 
  geom_line(aes(x=dt$T, y=fit_ITS$fitted.values)) +
  geom_ribbon(aes(x=dt$T, ymin=cf_fitted1, ymax=cf_fitted4), alpha=0.2, color="red") + 
  geom_ribbon(aes(x=dt$T, ymin=cf_fitted3, ymax=cf_fitted2), alpha=0.2, color="blue")+
  geom_point(data=dt, aes(x=T, y=Y)) + 
  geom_vline(xintercept= sum(dt$X), linetype="dashed", color="grey40") + 
  xlab("Time") + ylab("Outcome")
