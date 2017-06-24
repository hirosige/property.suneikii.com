class Admin::Members::RolesController < AdminController
  before_action :set_breadcrumps_base

  def index
    @roles = RolesDecorator.decorate(
        RoleDecorator.decorate_collection(
            Role.all
        )
    )
  end

  private
    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_5.title')
      add_breadcrumb t('admin.roles.title')
    end
end
