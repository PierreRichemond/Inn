class ContactFormsController < ApplicationController
  def new
    @form = ContactForm.new
  end

  def create
    @form = ContactForm.new(contact_params)
    @form.request = request
    if @form.deliver
      flash.now[:notice] = "Thanks! I'll contact you soon."
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact_form).permit(:from_email, :from_name, :message)
  end
end
