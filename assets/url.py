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

import views

urlpatterns = [
    url(r'^user/$', views.my_assets),
    url(r'^user/ajax/$', views.ajax_assets_mydisplay),
    url(r'^user/change/$', views.my_assets_change),
    url(r'^query/$', views.assets_display),
    url(r'^query/ajax/$', views.ajax_assets_display),
    url(r'^query/showdetail/$', views.assets_showdetail),
    url(r'^query/showchangedetail/$', views.assets_showchangedetail),
    url(r'^input/$', views.assets_input),
    url(r'^receive/$', views.assets_accept),
    url(r'^receive/ajax/$', views.ajax_assets_accept),
    url(r'^receive/post/$', views.post_assets_accept),
    url(r'^change/$', views.assets_change),
    url(r'^change/ajax/$', views.ajax_assets_change),
    url(r'^change/post/$', views.post_assets_change),
    url(r'^repair/$', views.assets_repair),
    url(r'^repair/ajax/$', views.ajax_assets_repair),
    url(r'^repair/ajax_id/$', views.ajax_assets_repair_id),
    url(r'^repair/post/$', views.post_assets_repair),
    url(r'^scrap/$', views.assets_scrap),
    url(r'^scrap/ajax/$', views.ajax_assets_scrap),
    url(r'^scrap/post/$', views.post_assets_scrap),
    url(r'^mod/dept/$', views.ajax_mod_dept),
]
