# Generated by Django 3.2.7 on 2021-09-28 02:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('discaltest_api', '0023_delete_listaitems'),
    ]

    operations = [
        migrations.AlterField(
            model_name='area',
            name='descripcion',
            field=models.CharField(max_length=130),
        ),
    ]
