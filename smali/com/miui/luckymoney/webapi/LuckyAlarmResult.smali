.class public Lcom/miui/luckymoney/webapi/LuckyAlarmResult;
.super Lcom/miui/luckymoney/webapi/RequestResult;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "LuckyAlarmResult"


# instance fields
.field private context:Landroid/content/Context;

.field private isLocalConfig:Z

.field private items:Ljava/util/ArrayList;

.field private updateTime:J

.field private updateTimeLocal:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/webapi/RequestResult;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/luckymoney/webapi/RequestResult;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->isLocalConfig:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->items:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->parseJson(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->parseLocalJson(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private cancleAllAlarm(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "LuckyAlarmResult"

    const-string/jumbo v1, "cancleAllAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.miui.luckymoney.ACTION_LUCKY_ALARM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private checkServerConfig(Lorg/json/JSONObject;)Z
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmConfig()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "updateTime"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->updateTimeLocal:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-wide v2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->updateTime:J

    iget-wide v4, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->updateTimeLocal:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    return v0

    :catch_0
    move-exception v1

    iput-wide v6, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->updateTimeLocal:J

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->context:Landroid/content/Context;

    const-string/jumbo v2, "LuckyAlarm"

    invoke-static {v1, v2}, Lcom/miui/luckymoney/utils/ResFileUtils;->cleanResDir(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v1, "contents"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "appIcon"

    invoke-virtual {v3, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->context:Landroid/content/Context;

    const-string/jumbo v6, "LuckyAlarm"

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

    :try_start_1
    const-string/jumbo v5, "appIcon"

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
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->cancleAllAlarm(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setLuckyAlarmConfig(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private parseLocalJson(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/miui/luckymoney/webapi/RequestResult;->isSuccess:Z

    return v4

    :cond_0
    iput-object p1, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->mJsonStr:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->isSuccess:Z

    return v4

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->isSuccess:Z

    const-string/jumbo v2, "LuckyAlarmResult"

    const-string/jumbo v3, "parseLocalJson failed "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-boolean v5, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->isSuccess:Z

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->doParseJson(Lorg/json/JSONObject;)V

    return v5
.end method


# virtual methods
.method public disableAllItemTimer()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->items:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    invoke-virtual {v0, v2}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->setTimerRunning(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->savetoLocalConfig()V

    return-void
.end method

.method protected doParseJson(Lorg/json/JSONObject;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Lcom/miui/luckymoney/webapi/RequestResult;->doParseJson(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/miui/common/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->items:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->items:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "LuckyAlarmResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLocal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->isLocalConfig:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v2, "updateTime"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->updateTime:J

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->isLocalConfig:Z

    if-nez v2, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->checkServerConfig(Lorg/json/JSONObject;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmConfig()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const-string/jumbo v2, "updateTime"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->updateTime:J

    const-string/jumbo v2, "contents"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_4

    return-void

    :catch_0
    move-exception v2

    return-void

    :cond_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v7, :cond_a

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_5

    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_5
    :try_start_1
    const-string/jumbo v2, "activityName"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "packageName"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "appIcon"

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "time"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string/jumbo v2, "endTime"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string/jumbo v2, "type"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v4, "url"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v3, "url"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_2
    const-string/jumbo v3, "intent"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v2, "componentName"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_3
    const-string/jumbo v2, "isTimerRunning"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "isTimerRunning"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_6
    const-string/jumbo v2, "isTimerRunning"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    new-instance v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;-><init>(Lcom/miui/luckymoney/webapi/LuckyAlarmResult;Z)V

    iput-object v9, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->activityName:Ljava/lang/String;

    iput-object v10, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->packageName:Ljava/lang/String;

    iput-object v11, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->appIconName:Ljava/lang/String;

    if-nez v11, :cond_7

    const/4 v2, 0x0

    :goto_4
    iput-object v2, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->appIcon:Landroid/graphics/Bitmap;

    iput-wide v12, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    iput-wide v14, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->endTime:J

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->type:Ljava/lang/String;

    iput-object v4, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->url:Ljava/lang/String;

    iput-object v3, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->componentName:Ljava/lang/String;

    const-string/jumbo v2, "url"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->intent:Landroid/content/Intent;

    iget-object v2, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->intent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v3, "LuckyAlarmResult"

    const-string/jumbo v4, "jsonAlarm\u89e3\u6790\u5931\u8d25"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->context:Landroid/content/Context;

    const-string/jumbo v9, "LuckyAlarm"

    invoke-static {v2, v9, v11}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->context:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/miui/luckymoney/utils/ImageUtil;->loadBitmapfromFile(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_4

    :cond_8
    const-string/jumbo v2, "intent"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->intent:Landroid/content/Intent;

    iget-object v3, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->intent:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    iput-object v2, v8, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->intent:Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->setAlarm(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->savetoLocalConfig()V

    return-void

    :cond_b
    move-object v3, v2

    goto/16 :goto_3

    :cond_c
    move-object v4, v3

    goto/16 :goto_2
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public savetoLocalConfig()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/luckymoney/config/CommonConfig;->setLuckyAlarmConfig(Ljava/lang/String;)V

    return-void
.end method

.method public setAlarm(Landroid/content/Context;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_2

    iget-object v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    iget-wide v8, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    const-wide/32 v10, 0xea60

    sub-long/2addr v8, v10

    cmp-long v1, v8, v4

    if-lez v1, :cond_7

    iget-wide v8, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v10, v4

    cmp-long v1, v8, v10

    if-gez v1, :cond_7

    invoke-virtual {v0}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->isTimerRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-eqz v2, :cond_4

    iget-wide v8, v2, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    iget-wide v10, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    cmp-long v1, v8, v10

    if-gez v1, :cond_4

    const-string/jumbo v0, "LuckyAlarmResult"

    const-string/jumbo v1, "shouldn\'t set LuckyAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "com.miui.luckymoney.ACTION_LUCKY_ALARM"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "type"

    iget-object v9, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->type:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "url"

    iget-object v9, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v2, "url"

    iget-object v3, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->url:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    :goto_2
    const-string/jumbo v2, "activityName"

    iget-object v3, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->activityName:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {p1, v2, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-wide v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    const-wide/32 v6, 0xea60

    sub-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->setTimerRunning(Z)V

    const-string/jumbo v1, "LuckyAlarmResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set LuckyAlarm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    const-wide/32 v6, 0xea60

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v8, "intent"

    iget-object v9, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Lcom/miui/luckymoney/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    move-object v0, v2

    :cond_7
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "intent"

    iget-object v3, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->componentName:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "updateTime"

    iget-wide v2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->updateTime:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->items:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    invoke-virtual {v0}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "contents"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1
.end method
