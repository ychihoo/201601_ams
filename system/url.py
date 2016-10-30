"""AMS URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url

from system import views

urlpatterns = [
    url(r'^user_man/$', views.users),
    url(r'^user_man/ajax/$', views.ajax_users),
    url(r'^user_man/disable/$', views.ajax_disable_user),
    url(r'^user_man/enable/$', views.ajax_enable_user),
    url(r'^user_man/remove/$', views.ajax_del_user),
    url(r'^user_man/post/resetPwd/$', views.post_resetPwd),
    url(r'^user_man/post/addUser/$', views.post_addUser),
    url(r'^user_man/post/editUser/$', views.post_editUser),
    url(r'^user_man/checkAccount/$', views.check_account_exsit),
    url(r'^dept_man/$', views.dept),
    url(r'^dept_man/add/$', views.dept),
    url(r'^dept_man/remove/$', views.remove_dept),
    url(r'^dept_man/edit/$', views.dept),
    url(r'^dept_man/drag/$', views.update_dept),
    url(r'^dept_man/showdetail/$', views.showdetail_dept),
    url(r'^dept_man/post/$', views.save_update_dept),
    url(r'^role_man/$', views.roles),
    url(r'^role_man/getRole/$', views.get_roles),
    url(r'^role_man/menus/$', views.get_menus),
    url(r'^role_man/remove/$', views.remove_role),
    url(r'^role_man/checkRoleName/$', views.check_role_exsit),
    url(r'^role_man/post/$', views.save_update_role),
]
