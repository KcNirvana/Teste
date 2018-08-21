.class Lcom/miui/personalassistant/util/AutoNaviUtil$3;
.super Ljava/lang/Object;
.source "AutoNaviUtil.java"

# interfaces
.implements Lcom/autonavi/its/protocol/ReqCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/AutoNaviUtil;->getAddressByCode(Ljava/lang/String;Ljava/lang/String;ZLcom/miui/personalassistant/util/MapHelper$AddressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

.field final synthetic val$callback:Lcom/miui/personalassistant/util/MapHelper$AddressCallback;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/AutoNaviUtil;Lcom/miui/personalassistant/util/MapHelper$AddressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$3;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    iput-object p2, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$3;->val$callback:Lcom/miui/personalassistant/util/MapHelper$AddressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 2

    const-string/jumbo v0, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v1, "ReverseGeoCode fail"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNetError(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 2

    const-string/jumbo v0, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v1, "ReverseGeoCode fail"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$3;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    invoke-virtual {v0}, Lcom/miui/personalassistant/util/AutoNaviUtil;->sendQuiteMsg()V

    return-void
.end method

.method public onStart(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 2

    const-string/jumbo v0, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v1, "ReqReverseGeoCode onStart"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 5

    const-string/jumbo v2, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v3, "ReqReverseGeoCode onSuccess"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ReqReverseGeoCode"

    invoke-virtual {p1}, Lcom/autonavi/its/protocol/BaseRequest;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;

    invoke-virtual {v2}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->getReverseGeo()Lcom/autonavi/its/protocol/model/ReverseGeo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getDesc()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;

    invoke-virtual {p1}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->getReverseGeo()Lcom/autonavi/its/protocol/model/ReverseGeo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getCity()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GeoLocationManager.AutoNaviUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "geo city:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$3;->val$callback:Lcom/miui/personalassistant/util/MapHelper$AddressCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$3;->val$callback:Lcom/miui/personalassistant/util/MapHelper$AddressCallback;

    invoke-interface {v2, v1, v0}, Lcom/miui/personalassistant/util/MapHelper$AddressCallback;->getAddress(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
