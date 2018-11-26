.class public Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_DEEPLINK_URL:Ljava/lang/String; = "deeplinkUrl"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"


# instance fields
.field private deeplinkUrl:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "deeplinkUrl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "packageName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;

    invoke-direct {v2}, Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;-><init>()V

    iput-object v1, v2, Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;->packageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;->deeplinkUrl:Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method public getDeeplinkUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;->deeplinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string/jumbo v0, "packageName"

    iget-object v1, p0, Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "deeplinkUrl"

    iget-object v1, p0, Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;->deeplinkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Material"

    const-string/jumbo v2, "serializing the deeplink failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
