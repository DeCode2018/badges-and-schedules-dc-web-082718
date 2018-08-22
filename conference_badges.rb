# conference_badges
#   #badge_maker
#     should return a formatted badge (FAILED - 1)
  def badge_maker(name)
    return "Hello, my name is #{name}."
  end
#   #batch_badge_creator
#     should return a list of badge messages (FAILED - 2)
#     should not hard-code response (FAILED - 3)
  def batch_badge_creator(attendee)
    # the below code would work more effectively but since I found it somewhere else I decided to use another method to prove to myself I could do it on my own. Since the collect method saves the results automatically to a new array, it doesnt require the extra step I needed to do with the .each method.
    # attendee.collect do |i|
    #   badge_maker(i)
    # end

    badges =[]
    attendee.each {|i| badges.push badge_maker(i)}
    return badges
end

###############################################################################

# #   #assign_rooms
# #     should return a list of welcome messages and room assignments (FAILED - 4)
# #     should not hard-code the response (FAILED - 5
#
def assign_rooms(attendee)
    badges = []
    attendee.each.with_index(1) { |val,index| badges.push "Hello, #{val}! You'll be assigned to room #{index}!"}
    return badges
end
################################################################################
#   #printer
#     should puts the list of badges and room_assignments (FAILED - 6)
#
def printer(attendee)
  batch_badge_creator(attendee).each do |x| puts x #interates through the attendee array to out"puts" the list of badges created by "batch_badge_creator"
  end
  assign_rooms(attendee).each do |x| puts x #interates through the attendee array to out"puts" the room assignment list created by "assign_rooms"
  end
end
################################################################################
