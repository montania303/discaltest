from rest_framework import pagination

class PaginacionEjercitarios(pagination.PageNumberPagination):
    page_zise = 5
    page_query_param = 'page'
    page_size_query_param = 'per_pague'
    max_page_size = 1000
