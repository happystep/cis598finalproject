from django.shortcuts import render, get_object_or_404
from django.utils import timezone

from chatbot import chat_bot_console_interface as cb
from .models import Post


# Create your views here.
def post_list(request):
    posts = Post.objects.filter(published_date__lte=timezone.now()).order_by('published_date')
    return render(request, 'blog/post_list.html', {'posts': posts})

def post_detail(request, pk):
    post = get_object_or_404(Post, pk=pk)
    return render(request, 'blog/post_detail.html', {'post': post})

def chat(request):
    return render(request, 'blog/chat.html', {})

def about(request):
    return render(request, 'blog/about.html', {})

def answer(request):
    return cb.response(request.data['string'])
