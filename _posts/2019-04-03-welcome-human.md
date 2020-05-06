---
title:  Welcome, Human!
author: Augusto Goulart
date:   2019-04-03 18:07:23 -0300
categories:
  - jekyll
  - update
---

Shall I welcome you to this site, make your way through the posts and you'll find many useless stuff, that's because the current content in here is intended for tests purposes only.

As one may see, this is located in the `_posts` directory. Take a look at the source for this post to get an idea about how it works.

- [x] Say this post is just a test
+ [ ] Make this post gone
- [ ] Dominate this planet

Some code from my ongoing projects:

{% highlight c lineos %}
#if defined(_WIN32) || defined(_WIN64) || defined(__MINGW32__) || defined (__MINGW64__) || defined(__CYGWIN__)
  #undef __WINDOWS__
  #define __WINDOWS__ 1
#endif
#if defined(__ILP32__) || defined(_ILP32) || defined(__i386__) || defined(_M_IX86) || defined(_X86_)
  #undef __X86_ARCH__
  #define __X86_ARCH__ 1
#endif
typedef unsigned char ubyte_t;
#if defined(__X86_ARCH__)
  typedef uint32_t ulong_t;
#else
  typedef uint64_t ulong_t;
#endif
{% endhighlight %}

{% highlight c lineos %}
size_t file_find_size(const char* filename)
{
  struct STAT file_status;

  /* get file size */
  if (!STAT(filename, &file_status))
    return file_status.st_size;
  else
    return 0;
}
{% endhighlight %}

Go to [Jekyll docs][jekyll-docs] for more info on how to destroy your enemies.

[jekyll-docs]: https://jekyllrb.com/docs/home
