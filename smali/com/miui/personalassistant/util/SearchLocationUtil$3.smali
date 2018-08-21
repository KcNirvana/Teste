.class Lcom/miui/personalassistant/util/SearchLocationUtil$3;
.super Ljava/lang/Object;
.source "SearchLocationUtil.java"

# interfaces
.implements Lcom/autonavi/its/protocol/ReqCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/SearchLocationUtil;->getReqCallback(Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)Lcom/autonavi/its/protocol/ReqCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/util/SearchLocationUtil;

.field final synthetic val$callBack:Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/SearchLocationUtil;Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$3;->this$0:Lcom/miui/personalassistant/util/SearchLocationUtil;

    iput-object p2, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$3;->val$callBack:Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$3;->val$callBack:Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/autonavi/its/protocol/BaseRequest;->getResponseContent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;->reqGeoEnd(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$3;->this$0:Lcom/miui/personalassistant/util/SearchLocationUtil;

    invoke-static {v0}, Lcom/miui/personalassistant/util/SearchLocationUtil;->access$300(Lcom/miui/personalassistant/util/SearchLocationUtil;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$3;->this$0:Lcom/miui/personalassistant/util/SearchLocationUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/SearchLocationUtil;->access$402(Lcom/miui/personalassistant/util/SearchLocationUtil;Z)Z

    return-void
.end method

.method public onNetError(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$3;->val$callBack:Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/autonavi/its/protocol/BaseRequest;->getResponseContent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;->reqGeoEnd(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$3;->this$0:Lcom/miui/personalassistant/util/SearchLocationUtil;

    invoke-static {v0}, Lcom/miui/personalassistant/util/SearchLocationUtil;->access$300(Lcom/miui/personalassistant/util/SearchLocationUtil;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$3;->this$0:Lcom/miui/personalassistant/util/SearchLocationUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/SearchLocationUtil;->access$402(Lcom/miui/personalassistant/util/SearchLocationUtil;Z)Z

    return-void
.end method

.method public onStart(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v5, "ReqReverseGeoCode"

    invoke-virtual {p1}, Lcom/autonavi/its/protocol/BaseRequest;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    check-cast p1, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;

    invoke-virtual {p1}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->getReverseGeo()Lcom/autonavi/its/protocol/model/ReverseGeo;

    move-result-object v4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getCity()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string/jumbo v5, "country"

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "provice"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "city"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "district"

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getDistrict()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "detail"

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v5, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$3;->val$callBack:Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;->reqGeoEnd(ILjava/lang/String;)V

    const-string/jumbo v5, "SearchLocationUtil"

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/ReverseGeo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$3;->this$0:Lcom/miui/personalassistant/util/SearchLocationUtil;

    invoke-static {v5}, Lcom/miui/personalassistant/util/SearchLocationUtil;->access$300(Lcom/miui/personalassistant/util/SearchLocationUtil;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/HandlerThread;->quit()Z

    iget-object v5, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$3;->this$0:Lcom/miui/personalassistant/util/SearchLocationUtil;

    invoke-static {v5, v7}, Lcom/miui/personalassistant/util/SearchLocationUtil;->access$402(Lcom/miui/personalassistant/util/SearchLocationUtil;Z)Z

    return-void

    :cond_1
    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
