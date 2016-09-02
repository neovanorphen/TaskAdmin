module DeviseHelper

  def devise_error_messages!
    return "" if resource.errors.empty?
    flash_messages = []

    messages = resource.errors.full_messages.map { |msg|  msg + '\n' }.join

    flash = { error: messages }

    flash.each do |type, message|
      type = 'success' if type == 'notice'
      type = 'error'   if type == 'alert'
      text = "<script>toastr.#{type}('#{message}');</script>"
      flash_messages << text.html_safe if message
    end
    flash_messages.join("\n").html_safe
  end

end

