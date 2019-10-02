.class public Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;
.super Ljava/lang/Object;
.source "VmapAdRequest.java"


# instance fields
.field private adTagUrl:Ljava/lang/String;

.field private adsResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAdTagUrl(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;->adTagUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setAdsResponse(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;->adsResponse:Ljava/lang/String;

    return-object p0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;->adTagUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "adTagUrl"

    iget-object v3, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;->adTagUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;->adsResponse:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "adsResponse"

    iget-object v3, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;->adsResponse:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_1
    return-object v1

    :catch_0
    return-object v1
.end method
