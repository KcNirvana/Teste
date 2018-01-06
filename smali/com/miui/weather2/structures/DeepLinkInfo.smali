.class public Lcom/miui/weather2/structures/DeepLinkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCategory:Ljava/lang/String;

.field public mDeepLinkUrl:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mDownloadUrl:Ljava/lang/String;

.field public mEx:Ljava/lang/String;

.field public mFullInfo:Ljava/lang/String;

.field public mH5Url:Ljava/lang/String;

.field public mIconUrl:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mPackage:Ljava/lang/String;

.field public mUseSystemBrowser:Ljava/lang/String;

.field public mWeatherExpId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadInfo()Ljava/lang/String;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "ex"

    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mEx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "package"

    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "description"

    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "category"

    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "downloadUrl"

    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    :goto_5
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "iconUrl"

    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mIconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    :goto_6
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "landingPageDeeplinkUrl"

    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mDeepLinkUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ""

    :goto_7
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "landingPageH5Url"

    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mH5Url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ""

    :goto_8
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mEx:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mPackage:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mDescription:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mCategory:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mDownloadUrl:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mIconUrl:Ljava/lang/String;

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mDeepLinkUrl:Ljava/lang/String;

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/miui/weather2/structures/DeepLinkInfo;->mH5Url:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_9
.end method
