from django.shortcuts import render

# Create your views here.


def Pasteur(request):
    return render(request, 'Pasteur/index.html', {})
