.class public Lcom/miui/luckymoney/webapi/UploadSettingResult;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private isSuccess:Z

.field private mJsonStr:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UploadSettingResult"

    sput-object v0, Lcom/miui/luckymoney/webapi/UploadSettingResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x191

    iput v0, p0, Lcom/miui/luckymoney/webapi/UploadSettingResult;->statusCode:I

    iput-object p1, p0, Lcom/miui/luckymoney/webapi/UploadSettingResult;->mJsonStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/luckymoney/webapi/UploadSettingResult;->parseJson(Ljava/lang/String;)Z

    return-void
.end method

.method private doParseJson(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "code"

    const/16 v1, 0x191

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/webapi/UploadSettingResult;->statusCode:I

    invoke-virtual {p0}, Lcom/miui/luckymoney/webapi/UploadSettingResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/luckymoney/webapi/UploadSettingResult;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/miui/common/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setConfigChanged(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/webapi/UploadSettingResult;->mJsonStr:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/webapi/UploadSettingResult;->isSuccess:Z

    return v0
.end method

.method public parseJson(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/miui/luckymoney/webapi/UploadSettingResult;->isSuccess:Z

    return v4

    :cond_0
    iput-object p1, p0, Lcom/miui/luckymoney/webapi/UploadSettingResult;->mJsonStr:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcom/miui/luckymoney/webapi/UploadSettingResult;->isSuccess:Z

    return v4

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/miui/luckymoney/webapi/UploadSettingResult;->isSuccess:Z

    sget-object v2, Lcom/miui/luckymoney/webapi/UploadSettingResult;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "parse json failed :"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-boolean v5, p0, Lcom/miui/luckymoney/webapi/UploadSettingResult;->isSuccess:Z

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/webapi/UploadSettingResult;->doParseJson(Lorg/json/JSONObject;)V

    return v5
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
