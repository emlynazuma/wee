from django.shortcuts import render

# Create your views here.
def greets(request):
    return render(request, 'greets/greets.html')