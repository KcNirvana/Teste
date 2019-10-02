.class public Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;
.super Ljava/lang/Object;
.source "NativeAdResponse.java"

# interfaces
.implements Lcom/miui/zeus/columbus/ad/enity/IResponseEntity;


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final KEY_AD_INFOS:Ljava/lang/String; = "adInfos"

.field private static final KEY_ERR_MSG:Ljava/lang/String; = "message"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "NativeAdResponse"


# instance fields
.field private adInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private errorMessage:Ljava/lang/String;

.field private json:Lorg/json/JSONObject;

.field private status:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->status:I

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->json:Lorg/json/JSONObject;

    const-string p1, "status"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->status:I

    iget p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->status:I

    if-nez p1, :cond_1

    const-string p1, "adInfos"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->adInfos:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->deserialize(Lorg/json/JSONObject;)Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->checkInfoInvalid(Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->adInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v1, "NativeAdResponse"

    const-string v2, "invalid or empty ad !"

    invoke-static {v1, v2}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->json:Lorg/json/JSONObject;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->adInfos:Ljava/util/List;

    const-string v0, "message"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->errorMessage:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->errorMessage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "NativeAdResponse"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetch ad failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, "NativeAdResponse"

    const-string v0, "Fetch ad failure, no error message."

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "NativeAdResponse"

    const-string v1, "NativeAdResponse e : "

    invoke-static {v0, v1, p1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private checkInfoInvalid(Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getCustomActionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdCoverImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;->getAdIconUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final deserialize(Ljava/lang/String;)Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;
    .locals 1

    new-instance v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;

    invoke-direct {v0, p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAdData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->adInfos:Ljava/util/List;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->status:I

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "NativeAdResponse"

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->json:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->json:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdResponse;->serialize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
