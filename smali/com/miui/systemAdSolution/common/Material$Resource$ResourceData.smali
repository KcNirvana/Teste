.class public Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_LOCAL_PATH:Ljava/lang/String; = "localPath"

.field private static final KEY_LOCAL_PATH_URI:Ljava/lang/String; = "localPathUri"

.field private static final KEY_MD5:Ljava/lang/String; = "digest"

.field private static final KEY_URL:Ljava/lang/String; = "url"


# instance fields
.field private mLocalPath:Ljava/lang/String;

.field private mLocalPathUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private md5:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;

    invoke-direct {v1}, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;-><init>()V

    iput-object v0, v1, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->url:Ljava/lang/String;

    const-string/jumbo v0, "digest"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->md5:Ljava/lang/String;

    const-string/jumbo v0, "localPath"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v0, v1, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->mLocalPath:Ljava/lang/String;

    :cond_2
    const-string/jumbo v0, "localPathUri"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v0, v1, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->mLocalPathUri:Ljava/lang/String;

    :cond_3
    return-object v1
.end method


# virtual methods
.method public getLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPathUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->mLocalPathUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public serialize()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "url"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->url:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "digest"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->md5:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->mLocalPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "localPath"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->mLocalPathUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "localPathUri"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->mLocalPathUri:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Material"

    const-string/jumbo v3, "serializing the ResourceData failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->mLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setLocalPathUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->mLocalPathUri:Ljava/lang/String;

    return-void
.end method
