.class public Lcom/miui/luckymoney/webapi/FloatResourceResult;
.super Lcom/miui/luckymoney/webapi/RequestResult;
.source ""


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private adsUpdateTime:J

.field private context:Landroid/content/Context;

.field private floatActivityDefaultUpdateTime:J

.field private floatActivityUpdateTime:J

.field private floatTipsUpdateTime:J

.field private isFloatTipsUpdate:Z

.field private jsonAds:Lorg/json/JSONObject;

.field private jsonFloatActivity:Lorg/json/JSONObject;

.field private jsonFloatActivityDefault:Lorg/json/JSONObject;

.field private jsonFloatTips:Lorg/json/JSONObject;

.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "FloatResourceResult"

    sput-object v0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/webapi/RequestResult;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)V
    .locals 14

    const/4 v0, 0x0

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    invoke-super {p0, p1}, Lcom/miui/luckymoney/webapi/RequestResult;->doParseJson(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/miui/luckymoney/webapi/FloatResourceResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/luckymoney/webapi/FloatResourceResult;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/miui/common/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    const-string/jumbo v1, "floatActivity"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivity:Lorg/json/JSONObject;

    const-string/jumbo v1, "floatTips"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatTips:Lorg/json/JSONObject;

    const-string/jumbo v1, "floatActivityDefault"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivityDefault:Lorg/json/JSONObject;

    const-string/jumbo v1, "Ads"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonAds:Lorg/json/JSONObject;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatAssistantConfig()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->floatActivityUpdateTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsConfig()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->floatTipsUpdateTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getAdsConfig()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->adsUpdateTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatActivityDefaultConfig()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->floatActivityDefaultUpdateTime:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivity:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivity:Lorg/json/JSONObject;

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v1, v2, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->floatActivityUpdateTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivity:Lorg/json/JSONObject;

    const-string/jumbo v2, "contents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    const-string/jumbo v3, "Float_5"

    invoke-static {v1, v3}, Lcom/miui/luckymoney/utils/ResFileUtils;->cleanResDir(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v0

    :goto_4
    if-ge v1, v3, :cond_5

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_0
    move-exception v1

    iput-wide v12, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->floatActivityUpdateTime:J

    goto :goto_0

    :catch_1
    move-exception v1

    iput-wide v12, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->floatTipsUpdateTime:J

    goto :goto_1

    :catch_2
    move-exception v1

    iput-wide v12, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->adsUpdateTime:J

    goto :goto_2

    :catch_3
    move-exception v1

    iput-wide v12, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->floatActivityDefaultUpdateTime:J

    goto :goto_3

    :cond_2
    :try_start_4
    const-string/jumbo v5, "icon1"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "icon2"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_3

    if-nez v6, :cond_4

    :cond_3
    const-string/jumbo v5, "icon2"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "icon1"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :catch_4
    move-exception v4

    goto :goto_5

    :cond_4
    iget-object v7, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    const-string/jumbo v8, "Float_5"

    invoke-static {v7, v8}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/miui/common/g/b;->aMz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    iget-object v7, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    const-string/jumbo v8, "Float_5"

    invoke-static {v7, v8}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/common/g/b;->aMz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    const-string/jumbo v7, "icon2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ".png"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "icon1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ".png"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_5

    :cond_5
    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivity:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/luckymoney/config/CommonConfig;->setFloatAssistantConfig(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->DEBUG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/miui/luckymoney/webapi/FloatResourceResult;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "jsonFloatActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivity:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatTips:Lorg/json/JSONObject;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatTips:Lorg/json/JSONObject;

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v1, v2, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->floatTipsUpdateTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->isFloatTipsUpdate:Z

    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatTips:Lorg/json/JSONObject;

    const-string/jumbo v2, "contents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_8

    iput-boolean v0, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->isFloatTipsUpdate:Z

    :cond_7
    :goto_6
    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonAds:Lorg/json/JSONObject;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonAds:Lorg/json/JSONObject;

    const-string/jumbo v2, "updateTime"

    invoke-virtual {v1, v2, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->adsUpdateTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_e

    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonAds:Lorg/json/JSONObject;

    const-string/jumbo v2, "contents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    const-string/jumbo v3, "Ads"

    invoke-static {v2, v3}, Lcom/miui/luckymoney/utils/ResFileUtils;->cleanResDir(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_7
    if-ge v0, v2, :cond_d

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_b

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    const-string/jumbo v3, "FloatTips"

    invoke-static {v1, v3}, Lcom/miui/luckymoney/utils/ResFileUtils;->cleanResDir(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v0

    :goto_9
    if-ge v1, v3, :cond_a

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_9

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    :try_start_5
    const-string/jumbo v5, "iconLeft"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "iconRight"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    const-string/jumbo v8, "FloatTips"

    invoke-static {v7, v8}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/miui/common/g/b;->aMz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    iget-object v7, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    const-string/jumbo v8, "FloatTips"

    invoke-static {v7, v8}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/common/g/b;->aMz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    const-string/jumbo v7, "iconLeft"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ".png"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "iconRight"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_a

    :catch_5
    move-exception v4

    goto/16 :goto_a

    :cond_a
    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatTips:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/luckymoney/config/CommonConfig;->setFloatTipsConfig(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->DEBUG:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/miui/luckymoney/webapi/FloatResourceResult;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "jsonFloatTips:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatTips:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_b
    :try_start_6
    const-string/jumbo v4, "icon"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    const-string/jumbo v4, "icon"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    :catch_6
    move-exception v3

    goto/16 :goto_8

    :cond_c
    iget-object v5, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    const-string/jumbo v6, "Ads"

    invoke-static {v5, v6}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/common/g/b;->aMz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    const-string/jumbo v5, "icon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ".png"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_8

    :cond_d
    iget-object v0, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonAds:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setAdsConfig(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->DEBUG:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "jsonAds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonAds:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivityDefault:Lorg/json/JSONObject;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivityDefault:Lorg/json/JSONObject;

    const-string/jumbo v1, "updateTime"

    invoke-virtual {v0, v1, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->floatActivityDefaultUpdateTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    const-string/jumbo v1, "Float_3_4"

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/ResFileUtils;->cleanResDir(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivityDefault:Lorg/json/JSONObject;

    const-string/jumbo v1, "wechat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivityDefault:Lorg/json/JSONObject;

    const-string/jumbo v2, "alipay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v0, :cond_f

    const-string/jumbo v2, "icon"

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    const-string/jumbo v4, "Float_3_4"

    invoke-static {v3, v4}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/common/g/b;->aMz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    :try_start_7
    const-string/jumbo v3, "icon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivityDefault:Lorg/json/JSONObject;

    const-string/jumbo v3, "wechat"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_8

    :cond_f
    :goto_b
    if-eqz v1, :cond_10

    const-string/jumbo v0, "icon"

    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    const-string/jumbo v3, "Float_3_4"

    invoke-static {v2, v3}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/common/g/b;->aMz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    :try_start_8
    const-string/jumbo v2, "icon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivityDefault:Lorg/json/JSONObject;

    const-string/jumbo v2, "alipay"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_10
    :goto_c
    iget-object v0, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivityDefault:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setFloatActivityDefaultConfig(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->DEBUG:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "jsonDefault:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->jsonFloatActivityDefault:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-boolean v0, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->isFloatTipsUpdate:Z

    if-eqz v0, :cond_12

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.luckymoney.ACTION_UPDATE_TIPS_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/webapi/FloatResourceResult;->context:Landroid/content/Context;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_12
    return-void

    :catch_7
    move-exception v0

    goto :goto_c

    :catch_8
    move-exception v0

    goto/16 :goto_b
.end method
