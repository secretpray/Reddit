module ApplicationHelper

  FLASH_NAME = {  :success => 'alert-success', :error => 'alert-danger',
                  :alert => 'alert-warning', :notice => 'alert-info', :safe_notice => 'alert-primary' }

  def bootstrap_class_for_flash(flash_type)
    flash = FLASH_NAME[flash_type.to_sym] || flash_type.to_s
  end


end
