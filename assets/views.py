# coding=utf-8
from django.shortcuts import render, render_to_response, HttpResponse, RequestContext, HttpResponseRedirect
from django.http import JsonResponse
import json
from start.public import login_valid, get_local_datetime, change_pic_filename, get_json_dept
from assets.models import *
from system.models import *
from django.db.models import Q
from django.core import serializers

import sys

reload(sys)
sys.setdefaultencoding("utf-8")


# 个人用户资产页面
@login_valid
def my_assets(request):
    return render_to_response('assets/assets_mydisplay.html')


# 个人用户显示数据页面
@login_valid
def ajax_assets_mydisplay(request):
    sid = request.GET.get('id')
    sname = request.GET.get('name')
    smodel = request.GET.get('model')
    brand = request.GET.get('brand')
    data = Assets.objects.filter(ass_id__icontains=sid, ass_enabled=0).exclude(ass_flag=2)
    data = data.filter(ass_name__icontains=sname, ass_model__icontains=smodel, ass_brand__icontains=brand)
    data = data.filter(Q(ass_user=request.session.get('username', '')) | Q(ass_acceptUser=request.session.get('username', '')))
    json_item = {'total': data.count(), "rows": []}
    for d in data:
        if d.ass_flag == 0:
            d.ass_flag = '闲置'
        elif d.ass_flag == 1:
            d.ass_flag = '使用中'
        else:
            d.ass_flag = '报废'
        json_item['rows'].append({
            'sid': d.ass_id,
            'sname': d.ass_name,
            'sbrand': d.ass_brand,
            'smodel': d.ass_model,
            'sconfiguration': d.ass_configuration,
            'scategory': d.ass_category,
            'squantity': d.ass_quantity,
            'sbuydate': str(d.ass_buyDate),
            'sacceptdept': d.ass_acceptDept,
            'sacceptuser': d.ass_acceptUser,
            'suser': d.ass_user,
            'sacceptdate': str(d.ass_acceptDate),
            'sflag': d.ass_flag
        })
    return JsonResponse(json_item)


@login_valid
def assets_display(request):
    return render_to_response('assets/assets_display.html')


@login_valid
def my_assets_change(request):
    return render_to_response("assets/test.html", RequestContext(request, locals()))


@login_valid
def assets_input(request):
    return render_to_response('assets/test.html')


@login_valid
def assets_receive(request):
    return render_to_response('assets/test.html')

@login_valid
def assets_change(request):
    return render_to_response('assets/test.html')


# 维修表
@login_valid
def assets_repair(request):
    return render_to_response('assets/assets_repair.html', RequestContext(request, locals()))


# 加载维修记录数据
@login_valid
def ajax_assets_repair(request):
    sid = request.GET.get('id')
    sname = request.GET.get('name')
    smodel = request.GET.get('model')
    data = Assets.objects.filter(ass_id__icontains=sid, ass_enabled=0, ass_name__icontains=sname, ass_model__icontains=smodel )
    data = data.exclude(ass_flag=2)
    lis = []
    for l in data:
        lis.append(l.ass_id)
    da = Repair.objects.filter(ass_id__ass_id__in=lis).order_by('ass_id', 're_date')
    json_item = {'total': da.count(), "rows": []}
    for d in da:
        json_item['rows'].append({
            'sid': d.ass_id.ass_id,
            'sname': d.ass_id.ass_name,
            'smodel': d.ass_id.ass_model,
            'sdate': d.re_date,
            'scontent': d.re_content,
            'sprice': d.re_price,
            'soperator': d.re_operator,
            'sreason': d.re_reason,
            'scomment': d.re_comment,
        })
    return JsonResponse(json_item)


# 加载维修记录combogrid数据
@login_valid
def ajax_assets_repair_id(request):
    s = request.GET.get('s')
    data = Assets.objects.filter(ass_enabled=0).exclude(ass_flag=2)
    data = data.filter(Q(ass_id__icontains=s) | Q(ass_name__icontains=s) | Q(ass_model__icontains=s))
    json_item = {'total': data.count(), "rows": []}
    for d in data:
        if d.ass_flag == 0:
            d.ass_flag = '闲置'
        elif d.ass_flag == 1:
            d.ass_flag = '使用中'
        else:
            d.ass_flag = '报废'
        json_item['rows'].append({
            'sid': d.ass_id,
            'sname': d.ass_name,
            'sbrand': d.ass_brand,
            'smodel': d.ass_model,
            'sflag': d.ass_flag
        })
    return JsonResponse(json_item)


@login_valid
def post_assets_repair(request):
    if request.method == "POST":
        sid = request.POST['fid']
        user = request.POST.get('r_user', '')
        date = request.POST.get('r_date', '')
        content = request.POST['r_content']
        price = request.POST['r_price']
        reason = request.POST['r_reason']
        comment = request.POST['r_comment']
        data = Repair()
        data.ass_id = Assets.objects.get(ass_id=sid)
        data.re_operator = user
        data.re_date = date
        data.re_content =content
        data.re_price = price
        data.re_reason = reason
        data.re_comment = comment
        try:
            data.save()
        except:
            return HttpResponse("请检查输入格式是否正确！")

        return HttpResponse("提交成功!")


# 报废页面
@login_valid
def assets_scrap(request):
    return render_to_response('assets/assets_scrap.html', RequestContext(request, locals()))


# 加载报废页面查询数据
@login_valid
def ajax_assets_scrap(request):
    sid = request.GET.get('id')
    sname = request.GET.get('name')
    smodel = request.GET.get('model')
    data = Assets.objects.filter(ass_id__icontains=sid, ass_enabled=0).exclude(ass_flag=2)
    data = data.filter(ass_name__icontains=sname, ass_model__icontains=smodel)
    json_item = {'total': data.count(), "rows": []}
    for d in data:
        if d.ass_flag == 0:
            d.ass_flag = '闲置'
        elif d.ass_flag == 1:
            d.ass_flag = '使用中'
        else:
            d.ass_flag = '报废'
        json_item['rows'].append({
            'sid': d.ass_id,
            'sname': d.ass_name,
            'sbrand': d.ass_brand,
            'smodel': d.ass_model,
            'sconfiguration': d.ass_configuration,
            'scategory': d.ass_category,
            'squantity': d.ass_quantity,
            'sbuydate': str(d.ass_buyDate),
            'sacceptdept': d.ass_acceptDept,
            'sacceptuser': d.ass_acceptUser,
            'suser': d.ass_user,
            'sacceptdate': str(d.ass_acceptDate),
            'sflag': d.ass_flag
        })
    return JsonResponse(json_item)


# 提交报废数据
@login_valid
def post_assets_scrap(request):
    if request.method == "POST":
        sid = request.POST['fid']
        date = request.POST['scrapdate']
        reason = request.POST['reason']
        comment = request.POST['comment']
        location = request.POST['location']
        operator = request.session['account']
        operdate = get_local_datetime()
        data = Assets_Detail()
        data.ass_id = Assets.objects.get(ass_id=sid)
        data.ass_acceptDept = ''
        data.ass_acceptUser = ''
        data.ass_user = ''
        data.ass_changeDate = date
        data.ass_location = location
        data.ass_reason = reason
        data.ass_comment = comment
        data.ass_operator = operator
        data.ass_operDate = operdate
        data.ass_flag = 2
        data.ass_action = "报废"
        try:
            data.save()
        except:
            return HttpResponse("请检查输入格式是否正确！")
        return HttpResponse("报废成功!")


# 显示资产信息
@login_valid
def ajax_assets_display(request):
    sid = request.GET.get('id')
    sname = request.GET.get('name')
    smodel = request.GET.get('model')
    acceptUser = request.GET.get('acceptUser')
    user = request.GET.get('user')
    brand = request.GET.get('brand')
    acceptdate = request.GET.get('acceptdate','')
    if acceptdate == "":
        acceptdate = "1990-1-1"
    status = request.GET.get('status')
    data = Assets.objects.filter(ass_id__icontains=sid, ass_enabled=0)
    data = data.filter(ass_name__icontains=sname, ass_model__icontains=smodel, ass_acceptUser__icontains=acceptUser,
                       ass_user__icontains=user, ass_brand__icontains=brand, ass_operDate__gte=acceptdate)
    if status == "-1":
        data = data.exclude(ass_flag=2)
    else:
        data = data.filter(ass_flag=status)
    json_item = {'total': data.count(), "rows": []}
    for d in data:
        if d.ass_flag == 0:
            d.ass_flag = '闲置'
        elif d.ass_flag == 1:
            d.ass_flag = '使用中'
        else:
            d.ass_flag = '报废'
        json_item['rows'].append({
            'sid': d.ass_id,
            'sname': d.ass_name,
            'sbrand': d.ass_brand,
            'smodel': d.ass_model,
            'sconfiguration': d.ass_configuration,
            'scategory': d.ass_category,
            'squantity': d.ass_quantity,
            'sbuydate': str(d.ass_buyDate),
            'sacceptdept': d.ass_acceptDept,
            'sacceptuser': d.ass_acceptUser,
            'suser': d.ass_user,
            'sacceptdate': str(d.ass_acceptDate),
            'sflag': d.ass_flag
        })
    return JsonResponse(json_item)


# 显示资产详情
@login_valid
def assets_showdetail(request):
    sid = request.GET.get('id')
    data = Assets.objects.get(ass_id=str(sid))
    return render_to_response('assets/assets_showdetail.html', {'d': data})


# 显示资产变更信息
@login_valid
def assets_showchangedetail(request):
    sid = request.GET.get('id')
    data = Assets_Detail.objects.filter(ass_id__ass_id=str(sid))
    json_item = {'total': data.count(), "rows": []}
    for d in data:
        print d.ass_operDate
        if d.ass_flag == 0:
            d.ass_flag = '闲置'
        elif d.ass_flag == 1:
            d.ass_flag = '使用中'
        else:
            d.ass_flag = '报废'
        json_item['rows'].append({
            'saction': d.ass_action,
            'sacceptDept': d.ass_acceptDept,
            'sacceptUser': d.ass_acceptUser,
            'suser': d.ass_user,
            'schangeDate': d.ass_changeDate,
            'slocation': d.ass_location,
            'sflag': d.ass_flag,
            'sreason': d.ass_reason,
            'scomment': d.ass_comment,
            'soperator': d.ass_operator,
            'soperDate': str(d.ass_operDate)
        })
    return JsonResponse(json_item)
    # return render_to_response('assets/assets_showchangedetail.html', locals())


# 录入资产信息
@login_valid
def assets_input(request):
    if request.method == "POST":
        sid = request.POST['id']
        name = request.POST['name']
        brand = request.POST['brand']
        model = request.POST['model']
        configuration = request.POST['configuration']
        category = request.POST['category']
        quantity = request.POST['quantity']
        price = request.POST['price']
        buydate = request.POST['buydate']
        period = request.POST['period']
        provider = request.POST['provider']
        islabel = request.POST['islabel']
        sn = request.POST['sn']
        cls = request.POST['class']
        if islabel == "是":
            islabel = 0
        else:
            islabel = 1
        if buydate == "":
            buydate = "1990-1-1"
        location = request.POST['location']
        comment = request.POST['comment']
        deadline = request.POST.get('deadline', 0)
        billpic = request.FILES.get('billpic', '')
        pic = request.FILES.get('pic', '')
        if billpic and (str(billpic).split('.')[-1].lower() not in ('jpg', 'png', 'bmp', 'gif')):
            return HttpResponse("只能上传图片格式（jpg/png/bmp/gif）")
        if pic and (str(pic).split('.')[-1].lower() not in ('jpg', 'png', 'bmp', 'gif')):
            return HttpResponse("只能上传图片格式（jpg/png/bmp/gif）")
        if Assets.objects.filter(ass_id=sid).count() > 0 or sid =="":
            return HttpResponse(" 您输入的资产编号已存在，请重新输入！")
        ass = Assets()
        ass.ass_name = name
        ass.ass_id = sid
        ass.ass_brand = brand
        ass.ass_model = model
        ass.ass_configuration = configuration
        ass.ass_category = category
        ass.ass_quantity = quantity
        ass.ass_price = price
        ass.ass_buyDate = buydate
        ass.ass_period = period
        ass.ass_provider = provider
        ass.ass_isLabel = islabel
        ass.ass_location = location
        ass.ass_comment = comment
        ass.ass_operator = request.session.get('account')
        ass.ass_operDate = get_local_datetime()
        ass.ass_acceptDeadline = deadline
        ass.ass_billPic = change_pic_filename(billpic, 'static/billpic/')
        ass.ass_pic = change_pic_filename(pic, 'static/pic/')
        ass.ass_SN = sn
        ass.ass_class = cls
        try:
            ass.save()
        except:
            return HttpResponse("数据保存出错，请检查是否按要求输入后再次提交，如仍有问题请联系管理员。")
        return HttpResponse("录入成功")
    else:
        provider = Providers.objects.filter(pro_delflag=0)
        brand = Brand.objects.filter(brand_delflag=0).order_by('brand_order')
    return render_to_response("assets/assets_input.html", RequestContext(request, locals()))


# 资产领用表
@login_valid
def assets_accept(request):
    return render_to_response('assets/assets_accept.html', RequestContext(request, locals()))


# 显示可领用的资产信息
@login_valid
def ajax_assets_accept(request):
    flag = request.GET.get('flag', '')
    sid = request.GET.get('id')
    sname = request.GET.get('name')
    smodel = request.GET.get('model')
    data = Assets.objects.filter(ass_id__icontains=sid, ass_enabled=0, ass_flag=flag)
    data = data.filter(ass_name__icontains=sname, ass_model__icontains=smodel)
    json_item = {'total': data.count(), "rows": []}
    for d in data:
        if d.ass_flag == 0:
            d.ass_flag = '闲置'
        elif d.ass_flag == 1:
            d.ass_flag = '使用中'
        else:
            d.ass_flag = '报废'
        json_item['rows'].append({
            'sid': d.ass_id,
            'sname': d.ass_name,
            'sbrand': d.ass_brand,
            'smodel': d.ass_model,
            'sconfiguration': d.ass_configuration,
            'scategory': d.ass_category,
            'squantity': d.ass_quantity,
            'sbuydate': str(d.ass_buyDate),
            'sacceptdept': d.ass_acceptDept,
            'sacceptuser': d.ass_acceptUser,
            'suser': d.ass_user,
            'sacceptdate': str(d.ass_acceptDate),
            'sflag': d.ass_flag
        })
    return JsonResponse(json_item)


# 资产变更表
@login_valid
def assets_change(request):
    return render_to_response('assets/assets_change.html', RequestContext(request, locals()))


# 显示资产变更指定信息
@login_valid
def ajax_assets_change(request):
    sid = request.GET.get('id')
    d = Assets.objects.get(ass_id=str(sid))
    json_items = {'item': []}
    json_items['item'].append({
        'id': d.ass_id,
        'acceptdept': d.ass_acceptDept,
        'acceptuser': d.ass_acceptUser,
        'user': d.ass_user,
        'flag':d.ass_flag,
        'location': d.ass_location,
    })
    return JsonResponse(json_items)
    # return HttpResponse(serializers.serialize("json",d))


# 提交保存领用信息
@login_valid
def post_assets_accept(request):
    if request.method == "POST":
        sid = request.POST['id']
        acceptdept = request.POST['dept']
        acceptuser = request.POST['acceptuser']
        user = request.POST['user']
        changedate = request.POST['date']
        location = request.POST['location']
        reason = request.POST['reason']
        comment = request.POST['comment']
        operator = request.session['account']
        operdate = get_local_datetime()
        data = Assets_Detail()
        data.ass_id = Assets.objects.get(ass_id=sid)
        data.ass_acceptDept = acceptdept
        data.ass_acceptUser = acceptuser
        data.ass_user = user
        data.ass_changeDate = changedate
        data.ass_location = location
        data.ass_reason = reason
        data.ass_comment = comment
        data.ass_operator = operator
        data.ass_operDate = operdate
        data.ass_flag = 1
        data.ass_action = "领用"
        try:
            data.save()
        except:
            return HttpResponse("请检查输入格式是否正确！")
        return HttpResponse("领用成功!")


# 提交保存变更信息
@login_valid
def post_assets_change(request):
    if request.method == "POST":
        sid = request.POST['fid']
        acceptdept = request.POST.get('dept', '')
        acceptuser = request.POST.get('acceptuser', '')
        user = request.POST['user']
        changedate = request.POST['changedate']
        location = request.POST['location']
        reason = request.POST['reason']
        comment = request.POST['comment']
        operator = request.session['account']
        operdate = get_local_datetime()
        iscyle = request.POST['recyle']
        data = Assets_Detail()
        data.ass_id = Assets.objects.get(ass_id=sid)
        data.ass_acceptDept = acceptdept
        data.ass_acceptUser = acceptuser
        data.ass_user = user
        data.ass_changeDate = changedate
        data.ass_location = location
        data.ass_reason = reason
        data.ass_comment = comment
        data.ass_operator = operator
        data.ass_operDate = operdate
        data.ass_action = "变更"
        if iscyle == "是":
            data.ass_flag = 0
        else:
            data.ass_flag = 1
        try:
            data.save()
        except:
            return HttpResponse("请检查输入格式是否正确！")

        return HttpResponse("变更成功!")


def ajax_mod_dept(request):
    temp = json.dumps(get_json_dept())
    return HttpResponse(temp)
