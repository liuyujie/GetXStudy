// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;
import 'package:getx_study/entity/account_info_entity.dart';
import 'package:getx_study/entity/article_info_entity.dart';
import 'package:getx_study/entity/banner_entity.dart';
import 'package:getx_study/entity/coin_rank_entity.dart';
import 'package:getx_study/entity/hot_key_entity.dart';
import 'package:getx_study/entity/my_coin_entity.dart';
import 'package:getx_study/entity/my_coin_history_entity.dart';
import 'package:getx_study/entity/tab_entity.dart';

JsonConvert jsonConvert = JsonConvert();
typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);

class JsonConvert {
	static final Map<String, JsonConvertFunction> _convertFuncMap = {
		(AccountInfoEntity).toString(): AccountInfoEntity.fromJson,
		(ArticleInfoEntity).toString(): ArticleInfoEntity.fromJson,
		(ArticleInfoDatas).toString(): ArticleInfoDatas.fromJson,
		(ArticleInfoDatasTags).toString(): ArticleInfoDatasTags.fromJson,
		(BannerEntity).toString(): BannerEntity.fromJson,
		(CoinRankEntity).toString(): CoinRankEntity.fromJson,
		(CoinRankDatas).toString(): CoinRankDatas.fromJson,
		(HotKeyEntity).toString(): HotKeyEntity.fromJson,
		(MyCoinEntity).toString(): MyCoinEntity.fromJson,
		(MyCoinHistoryEntity).toString(): MyCoinHistoryEntity.fromJson,
		(MyCoinHistoryDatas).toString(): MyCoinHistoryDatas.fromJson,
		(TabEntity).toString(): TabEntity.fromJson,
	};

  T? convert<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    return asT<T>(value);
  }

  List<T?>? convertList<T>(List<dynamic>? value) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => asT<T>(e)).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) => asT<T>(e)!).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  T? asT<T extends Object?>(dynamic value) {
    if (value is T) {
      return value;
    }
    final String type = T.toString();
    try {
      final String valueS = value.toString();
      if (type == "String") {
        return valueS as T;
      } else if (type == "int") {
        final int? intValue = int.tryParse(valueS);
        if (intValue == null) {
          return double.tryParse(valueS)?.toInt() as T?;
        } else {
          return intValue as T;
        }
      } else if (type == "double") {
        return double.parse(valueS) as T;
      } else if (type == "DateTime") {
        return DateTime.parse(valueS) as T;
      } else if (type == "bool") {
        if (valueS == '0' || valueS == '1') {
          return (valueS == '1') as T;
        }
        return (valueS == 'true') as T;
      } else if (type == "Map" || type.startsWith("Map<")) {
        return value as T;
      } else {
        if (_convertFuncMap.containsKey(type)) {
          return _convertFuncMap[type]!(value) as T;
        } else {
          throw UnimplementedError('$type unimplemented');
        }
      }
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return null;
    }
  }

	//list is returned by type
	static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
		if(<AccountInfoEntity>[] is M){
			return data.map<AccountInfoEntity>((Map<String, dynamic> e) => AccountInfoEntity.fromJson(e)).toList() as M;
		}
		if(<ArticleInfoEntity>[] is M){
			return data.map<ArticleInfoEntity>((Map<String, dynamic> e) => ArticleInfoEntity.fromJson(e)).toList() as M;
		}
		if(<ArticleInfoDatas>[] is M){
			return data.map<ArticleInfoDatas>((Map<String, dynamic> e) => ArticleInfoDatas.fromJson(e)).toList() as M;
		}
		if(<ArticleInfoDatasTags>[] is M){
			return data.map<ArticleInfoDatasTags>((Map<String, dynamic> e) => ArticleInfoDatasTags.fromJson(e)).toList() as M;
		}
		if(<BannerEntity>[] is M){
			return data.map<BannerEntity>((Map<String, dynamic> e) => BannerEntity.fromJson(e)).toList() as M;
		}
		if(<CoinRankEntity>[] is M){
			return data.map<CoinRankEntity>((Map<String, dynamic> e) => CoinRankEntity.fromJson(e)).toList() as M;
		}
		if(<CoinRankDatas>[] is M){
			return data.map<CoinRankDatas>((Map<String, dynamic> e) => CoinRankDatas.fromJson(e)).toList() as M;
		}
		if(<HotKeyEntity>[] is M){
			return data.map<HotKeyEntity>((Map<String, dynamic> e) => HotKeyEntity.fromJson(e)).toList() as M;
		}
		if(<MyCoinEntity>[] is M){
			return data.map<MyCoinEntity>((Map<String, dynamic> e) => MyCoinEntity.fromJson(e)).toList() as M;
		}
		if(<MyCoinHistoryEntity>[] is M){
			return data.map<MyCoinHistoryEntity>((Map<String, dynamic> e) => MyCoinHistoryEntity.fromJson(e)).toList() as M;
		}
		if(<MyCoinHistoryDatas>[] is M){
			return data.map<MyCoinHistoryDatas>((Map<String, dynamic> e) => MyCoinHistoryDatas.fromJson(e)).toList() as M;
		}
		if(<TabEntity>[] is M){
			return data.map<TabEntity>((Map<String, dynamic> e) => TabEntity.fromJson(e)).toList() as M;
		}

		debugPrint("${M.toString()} not found");
	
		return null;
}

	static M? fromJsonAsT<M>(dynamic json) {
		if (json is List) {
			return _getListChildType<M>(json.map((e) => e as Map<String, dynamic>).toList());
		} else {
			return jsonConvert.asT<M>(json);
		}
	}
}