# coding=utf-8
from django.core import serializers
from django.http import HttpResponse

from assets.models import Assets


def ajax1(request):
    sid = request.GET.get('id')
    d = Assets.objects.get(ass_id=str(sid))
    # json_items = {'item': []}
    # json_items['item'].append({
    #     'id': d.ass_id,
    #     'acceptdept': d.ass_acceptDept,
    #     'acceptuser': d.ass_acceptUser,
    #     'user': d.ass_user,
    #     'flag':d.ass_flag,
    #     'location': d.ass_location,
    # })
    # return JsonResponse(json_items)
    return HttpResponse(serializers.serialize("json", d))
