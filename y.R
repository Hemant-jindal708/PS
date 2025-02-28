outcomes <- c("HHH", "HHT", "HTH", "THH", "HTT", "THT", "TTH", "TTT")

draws <- sample(outcomes, 10000, replace = TRUE)

two_heads <- sum(grepl("^HHT|^HTH|^THH", draws)) / 10000
first_head <- sum(grepl("^HHH|^HHT|^HTH|^HTT", draws)) / 10000
first_head_two_head <- sum(grepl("^HHT|^HTH", draws)) / 10000
union_prob <- first_head + two_heads - first_head_two_head

cat("Simulated P(E):", two_heads, "\n")
cat("Simulated P(F):", first_head, "\n")
cat("Simulated P(E ∩ F):", first_head_two_head, "\n")
cat("Simulated P(E ∪ F):", union_prob, "\n")