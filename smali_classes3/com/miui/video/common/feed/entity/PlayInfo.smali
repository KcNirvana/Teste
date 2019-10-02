.class public Lcom/miui/video/common/feed/entity/PlayInfo;
.super Ljava/lang/Object;
.source "PlayInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public adInfo:Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_info"
    .end annotation
.end field

.field public app_info:Lcom/google/gson/JsonObject;

.field public cp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cp"
    .end annotation
.end field

.field public fetch_preroll:I

.field public h5_url:Lcom/google/gson/JsonObject;

.field public iframeUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iframe_url"
    .end annotation
.end field

.field public pay_type:[Ljava/lang/String;

.field public plugin_id:Ljava/lang/String;

.field public upgrade:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upgrade"
    .end annotation
.end field

.field public vid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vid"
    .end annotation
.end field

.field public video_status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_status"
    .end annotation
.end field

.field public video_type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdFirstTagId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/PlayInfo;->adInfo:Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/entity/PlayInfo;->adInfo:Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;->getFirstTagId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAppInfoJsonString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/PlayInfo;->app_info:Lcom/google/gson/JsonObject;

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public haveAd()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/PlayInfo;->adInfo:Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/entity/PlayInfo;->adInfo:Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;->getFirstTagId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
