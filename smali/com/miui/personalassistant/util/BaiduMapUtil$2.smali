.class Lcom/miui/personalassistant/util/BaiduMapUtil$2;
.super Ljava/lang/Object;
.source "BaiduMapUtil.java"

# interfaces
.implements Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/BaiduMapUtil;->getAddressByCode(Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/util/MapHelper$AddressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

.field final synthetic val$callback:Lcom/miui/personalassistant/util/MapHelper$AddressCallback;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/BaiduMapUtil;Lcom/miui/personalassistant/util/MapHelper$AddressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$2;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    iput-object p2, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$2;->val$callback:Lcom/miui/personalassistant/util/MapHelper$AddressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetGeoCodeResult(Lcom/baidu/mapapi/search/geocode/GeoCodeResult;)V
    .locals 0

    return-void
.end method

.method public onGetReverseGeoCodeResult(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v1, v2, :cond_2

    :cond_0
    const-string/jumbo v1, "GeoLocationManager.BaiduMapUtil"

    const-string/jumbo v2, "onGetReverseGeoCodeResult error"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$2;->this$0:Lcom/miui/personalassistant/util/BaiduMapUtil;

    invoke-virtual {v1}, Lcom/miui/personalassistant/util/BaiduMapUtil;->sendQuiteMsg()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$2;->val$callback:Lcom/miui/personalassistant/util/MapHelper$AddressCallback;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getAddressDetail()Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    move-result-object v1

    iget-object v0, v1, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->city:Ljava/lang/String;

    const-string/jumbo v1, "GeoLocationManager.BaiduMapUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "geo city:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/personalassistant/util/BaiduMapUtil$2;->val$callback:Lcom/miui/personalassistant/util/MapHelper$AddressCallback;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/miui/personalassistant/util/MapHelper$AddressCallback;->getAddress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
