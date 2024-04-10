// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _YoutubeApiService implements YoutubeApiService {
  _YoutubeApiService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://youtube.googleapis.com/youtube/v3';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<YoutubeSearchModel>> getSearch({
    String? part,
    String? maxResults,
    String? q,
    String? type,
    String? key,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'part': part,
      r'maxResults': maxResults,
      r'q': q,
      r'type': type,
      r'key': key,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    print('trigged');

    final _result = await _dio.fetch<Map<String,dynamic>>(
        _setStreamType<HttpResponse<List<YoutubeSearchModel>>>(Options(
          method: 'GET',
          headers: _headers,
          extra: _extra,
        )
            .compose(
          _dio.options,
          '/search',
          queryParameters: queryParameters,
          data: _data,
        )
            .copyWith(
            baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    print("leo ${_result.data}");


    YoutubeSearchModel value = YoutubeSearchModel.fromJson(_result.data as Map<String, dynamic>);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}