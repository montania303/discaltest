from rest_framework import pagination

class PaginacionUserProfile(pagination.PageNumberPagination):
    page_size = 2
    page_query_param = 'page'
    page_size_query_param = 'per_pague'
    max_page_size = 20

class PaginacionEntidades(pagination.PageNumberPagination):
    page_size = 2
    page_query_param = 'page'
    page_size_query_param = 'per_pague'
    max_page_size = 20

class PaginacionProfesores(pagination.PageNumberPagination):
    page_size = 10
    page_query_param = 'page'
    page_size_query_param = 'per_pague'
    max_page_size = 20

class PaginacionAlumnos(pagination.PageNumberPagination):
    page_size = 10
    page_query_param = 'page'
    page_size_query_param = 'per_pague'
    max_page_size = 20    

class PaginacionQuestion(pagination.PageNumberPagination):
    page_size = 10
    page_query_param = 'page'
    page_size_query_param = 'per_pague'
    max_page_size = 20   

class PaginacionEjercitarios(pagination.PageNumberPagination):
    page_size = 2
    page_query_param = 'page'
    page_size_query_param = 'per_pague'
    max_page_size = 20     