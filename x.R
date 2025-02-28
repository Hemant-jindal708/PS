# Define suits and ranks
suits <- c("Hearts", "Diamonds", "Clubs", "Spades")
ranks <- c("2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A")

# Create the deck
deck <- expand.grid(Rank = ranks, Suit = suits)
deck$Card <- paste(deck$Rank, "of", deck$Suit)

# Define conditions for events
is_heart <- deck$Suit == "Hearts"
is_face <- deck$Rank %in% c("J", "Q", "K")
is_heart_face <- is_heart & is_face # Face cards that are hearts

# Simulation with replacement
set.seed(123) # Ensure reproducibility
draws <- sample(deck$Card, 10000, replace = TRUE)

# Count occurrences correctly
hearts <- sum(grepl("Hearts", draws)) / 10000
face_cards <- sum(grepl("^J|^Q|^K", draws)) / 10000 # Face cards of any suit
heart_face <- sum(grepl("^J of Hearts|^Q of Hearts|^K of Hearts", draws)) /
  10000
union_prob <- hearts + face_cards - heart_face # Apply formula

# Print results
cat("Simulated P(E):", hearts, "\n")
cat("Simulated P(F):", face_cards, "\n")
cat("Simulated P(E ∩ F):", heart_face, "\n")
cat("Simulated P(E ∪ F):", union_prob, "\n")
