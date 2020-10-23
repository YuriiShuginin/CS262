
def findShark target
    sharks = ["Hammerhead", "Great White", "Tiger", "Whale"]
    sharks.find {|item| item.include?(target)}
end

p findShark("Gre")

# sharks = ["Hammerhead", "Great White", "Tiger", "Whale"]
# p sharks.find {|item| item.include?("Gre")}