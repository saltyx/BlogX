class HavefunController < ApplicationController
  def letmebaiduitforyou
    if params[:search_thing] != nil
      if params[:search_thing][:word] != nil
        redirect_to :action => 'baiduing', :q => params[:search_thing][:word]
      end
    end
  end

  def baiduing
    if params[:q] != nil
      @hint = params[:q]
    end
  end

end
