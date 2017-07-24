module TwitsHelper
	def choose_index_or_edit
    if action_name == 'index' || action_name == 'confirm' || action_name == 'new'
      confirm_twits_path
    elsif action_name == 'edit'
      twit_path
    end
    end
end
