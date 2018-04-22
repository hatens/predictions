require './config/boot'
require './config/environment'
require 'clockwork'

module Clockwork
 every(1.day, 'delete.bet_tips', :at => '00:00') {
   bet_tips.where("created_at >= ?", 3.week.ago.utc).destroy_all
 }
end