module AdminHelper
  @active_action = nil
  @active_module = nil

  def setup(controller)
    @active_module = controller.controller_path.split("/")[1]
    @active_controller = controller.controller_name
  end

  def get_action
    @active_action
  end

  def get_module
    @active_module
  end

  def render_menu(controller)
    setup(controller)
    divider  = ModuleHandlerDivider.new
    instance = divider.get_instance(@active_module)
    render instance.render_template
  end

  def activate_sub_menu(controller, controller_name)
    setup(controller)
    output = ''.html_safe
    output << "active".html_safe if @active_controller.eql?(controller_name)
    output
  end

  def activate_menu(controller, module_name)
    p controller
    p module_name
    setup(controller)
    output = ''.html_safe
    output << "active".html_safe if @active_module.eql?(module_name)
    output
  end
end

class MembersModuleHandler
  def render_template
    'layouts/admin_menus/users_sub_tab'
  end
end

class ProductsModuleHandler
  def render_template
    'layouts/admin_menus/goods_sub_tab'
  end
end

class TenantsModuleHandler
  def render_template
    'layouts/admin_menus/tenants_sub_tab'
  end
end

class ModuleHandlerDivider
  def initialize
    @module_keys = {
      "members"  => MembersModuleHandler.new,
      "products" => ProductsModuleHandler.new,
      "tenants" =>  TenantsModuleHandler.new
    }
  end

  def get_instance(key)
    @module_keys[key]
  end

end

