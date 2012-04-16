module TodosHelper
  def state_of_todo(it_is_done)
    if it_is_done
      "Done"
    else
      "Open"
    end
  end
end
