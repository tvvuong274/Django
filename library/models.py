
from datetime import datetime
import uuid
from django.db import models
from django.urls import reverse
from django.utils import timezone
# Create your models here

from django.utils.html import mark_safe
# STATUS_CHOICES = (
#         ('a', 'Available'),
#         ('d', 'Disable'),
#     )

class Category(models.Model):
    name_cate = models.CharField(max_length=100)


    def __str__(self):
        return self.name_cate



class Author(models.Model):
    name_author = models.CharField(max_length=50)


    def __str__(self):
        return self.name_author




class Book(models.Model):
    #Fields
    status = models.BooleanField(default=1)
    name_book = models.CharField(max_length=100)
    quantity_book = models.IntegerField(default=1)
    cate = models.ManyToManyField(Category)
    author = models.ManyToManyField(Author)
    image = models.ImageField(upload_to='./img', default='./img/default.png')

    def get_status(selfs):
            if (selfs.quantity_book >= 1):
                return selfs.status == 1
            else:
                return selfs.status == 0

    @property
    def image_preview(self):
        if self.image:
            return mark_safe('<img src="{}" width="50" height="75" />'.format(self.image.url))
        return ""



    def get_authors(self):
        return ",".join([str(p) for p in self.author.all()])
    def get_cates(self):
        return ",".join([str(p) for p in self.cate.all()])
    def __unicode__(self):
        return "{0}".format(self.name_book)
    def __str__(self):
        return self.name_book


class Borrower(models.Model):
    name = models.CharField(max_length=100)
    phone = models.CharField(max_length=12)
    cmnd = models.CharField(max_length=15)



    def __str__(self):
        return self.name


class BorrowBook(models.Model):

    borrower = models.ForeignKey(Borrower, on_delete=models.CASCADE)
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    status = models.CharField(max_length=50, default='Chưa tới hạn')

    borrow_date = models.DateTimeField(auto_now_add=True)
    due_back = models.DateTimeField(null=True)


    #ý tưởng: Truy suất vào borrowbook lay book_id
    #từ book_id lấy quantity_book
    # c= BorrowBook.objects.get(self.book_id)





    a= 'Trễ hạn'
    b = 'Chưa tới hạn'



    def __str__(self):
        return f'{self.id} ({self.book.name_book})'

    # def realtime(self):
    #     return timezone.now()

    def set_statuss(self):
        now = timezone.now()
        if(self.due_back <= now):
            return self.a
        else:
            return self.b

    #def test_update_quantity(self):


    # def save(self, *args, **kwargs):
    #     if self.Book.status == 0:
    #         return # Yoko shall never have her own blog!
    #     else:
    #         super().save(*args, **kwargs)  # Call the "real" save() method.