library(evently)

data_48 <- read.csv("data/communication_fixed_84.csv")
data_118 <- read.csv("data/communication_fixed_118.csv")

library(repr)
options(repr.plot.width = 14, repr.plot.height = 7, repr.plot.res = 200)


observation_time <- 100000


print("-------------------------User 84: Krenel EXP-------------------------")
fitted_model_exp <- fit_series(data_48, model_type = 'EXP', observation_time = observation_time, cores = 8)

print(fitted_model_exp)

print("branching factor:")
print(get_branching_factor(fitted_model_exp))

print("final population:")
predict_final_popularity(fitted_model_exp)
plot_event_series(fitted_model_exp)


print("-------------------------User 84: Krenel mEXP-------------------------")
fitted_model_mexp <- fit_series(data_48, model_type = 'mEXP', observation_time = observation_time, cores = 8)

print(fitted_model_mexp)

print("branching factor:")
print(get_branching_factor(fitted_model_mexp))

print("final population:")
predict_final_popularity(fitted_model_mexp)
plot_event_series(fitted_model_mexp)


print("-------------------------User 118: Krenel EXP-------------------------")
fitted_model_exp <- fit_series(data_118, model_type = 'EXP', observation_time = observation_time, cores = 8)

print(fitted_model_exp)

print("branching factor:")
print(get_branching_factor(fitted_model_exp))

print("final population:")
predict_final_popularity(fitted_model_exp)
plot_event_series(fitted_model_exp)


print("-------------------------User 118: Krenel mEXP-------------------------")
fitted_model_mexp <- fit_series(data_118, model_type = 'mEXP', observation_time = observation_time, cores = 8)

print(fitted_model_mexp)

print("branching factor:")
print(get_branching_factor(fitted_model_mexp))

print("final population:")
predict_final_popularity(fitted_model_mexp)
plot_event_series(fitted_model_mexp)
