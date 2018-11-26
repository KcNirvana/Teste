.class public Lcom/miui/luckymoney/webapi/FloatResourceHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatResourceHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFloatTipsConfigLocalUpdate(Landroid/content/Context;)V
    .locals 22

    invoke-static/range {p0 .. p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsConfig()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v3, "FloatResourceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FloatTipsConfig:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "contents"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v18

    const/4 v2, 0x0

    move/from16 v20, v2

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v6

    move-wide v6, v8

    move/from16 v9, v20

    :goto_0
    move/from16 v0, v18

    if-ge v9, v0, :cond_5

    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    if-nez v19, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "FloatResourceHelper"

    const-string/jumbo v4, "parse json failed :"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v8, "startTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string/jumbo v8, "stopTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v8, v12, v16

    if-gez v8, :cond_4

    cmp-long v8, v10, v16

    if-lez v8, :cond_4

    :goto_2
    const-string/jumbo v2, "iconLeft"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "iconRight"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    move-wide v6, v10

    move-wide v4, v12

    :goto_3
    invoke-virtual {v14}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsStartTime()J

    move-result-wide v2

    invoke-virtual {v14}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsStopTime()J

    move-result-wide v10

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    cmp-long v2, v6, v10

    if-eqz v2, :cond_3

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lcom/miui/luckymoney/webapi/FloatResourceHelper;->updateFloatTips(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void

    :cond_4
    cmp-long v8, v12, v16

    if-lez v8, :cond_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move-object v9, v2

    move-object v8, v3

    move-wide/from16 v20, v4

    move-wide v4, v6

    move-wide/from16 v6, v20

    goto :goto_3
.end method

.method public static initConfig(Landroid/content/Context;Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;)V
    .locals 17

    invoke-static/range {p0 .. p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatAssistantConfig()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatActivityDefaultConfig()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v2

    :goto_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v2

    :goto_1
    if-eqz v5, :cond_4

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_2
    const-string/jumbo v2, "contents"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    const/4 v2, 0x0

    move v5, v2

    move-object v2, v3

    :goto_2
    if-ge v5, v8, :cond_6

    :try_start_3
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v3, "startTime"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string/jumbo v3, "endTime"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v3, v14, v10

    if-ltz v3, :cond_1

    cmp-long v3, v14, v12

    if-gtz v3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->isFour:Z

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->startTime:J

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->endTime:J

    const-string/jumbo v3, "text"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->text:Ljava/lang/String;

    new-instance v3, Ljava/io/FileInputStream;

    const-string/jumbo v10, "Float_5"

    const-string/jumbo v11, "icon1"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->icon1:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    const-string/jumbo v4, "isFlashing"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->isFlashing:Z

    const-string/jumbo v4, "flashStartTime"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->flashStartTime:J

    const-string/jumbo v4, "flashEndTime"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->flashEndTime:J

    new-instance v4, Ljava/io/FileInputStream;

    const-string/jumbo v10, "Float_5"

    const-string/jumbo v11, "icon2"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->icon2:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v2, v4

    :cond_0
    :try_start_6
    const-string/jumbo v4, "type"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->type:Ljava/lang/String;

    const-string/jumbo v4, "intent"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->type:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "errorText"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0701b7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->errorText:Ljava/lang/String;

    const-string/jumbo v4, "goto"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_3

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v11

    :try_start_7
    const-string/jumbo v12, "componentName"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->componentNames:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    const-string/jumbo v5, "FloatResourceHelper"

    const-string/jumbo v7, "parse config failed :"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v4

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v4, "FloatResourceHelper"

    const-string/jumbo v6, "parse default config failed :"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v3

    goto/16 :goto_1

    :cond_1
    move-object v3, v4

    :cond_2
    :goto_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    goto/16 :goto_2

    :cond_3
    :try_start_8
    const-string/jumbo v4, "url"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->type:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "goto"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->url:Ljava/lang/String;

    const-string/jumbo v9, "package"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->packageName:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    :catch_2
    move-exception v4

    move-object/from16 v16, v4

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_6
    const/4 v5, 0x1

    :try_start_9
    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->isFour:Z

    const-string/jumbo v5, "FloatResourceHelper"

    const-string/jumbo v7, "parse json array failed :"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    :cond_4
    :goto_7
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->componentNames:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.tencent.mm"

    const-string/jumbo v5, "com.tencent.mm.plugin.shakelucky.ui.ShakeLuckyUI"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->componentNames:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.tencent.mm"

    const-string/jumbo v5, "com.tencent.mm.plugin.shake.ui.ShakeReportUI"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->componentNames:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    const-string/jumbo v5, "com.alipay.android.wallet.newyear.activity.MonkeyYearActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->componentNames:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    const-string/jumbo v5, "com.alipay.mobile.xiuxiu.ui.MainActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_5

    const-string/jumbo v2, "wechat"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "alipay"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070176

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v4}, Lcom/miui/luckymoney/webapi/FloatResourceHelper;->processDefaultConfig(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070175

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v3, v1, v2}, Lcom/miui/luckymoney/webapi/FloatResourceHelper;->processDefaultConfig(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_7

    :catchall_0
    move-exception v2

    :goto_8
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2

    :catchall_1
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_8

    :catchall_2
    move-exception v4

    move-object/from16 v16, v4

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_8

    :catchall_3
    move-exception v2

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    goto :goto_8

    :catch_3
    move-exception v2

    goto/16 :goto_6

    :catch_4
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_6

    :catch_5
    move-exception v2

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    goto/16 :goto_6

    :catch_6
    move-exception v11

    goto/16 :goto_4
.end method

.method private static processDefaultConfig(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->text:Ljava/lang/String;

    const-string/jumbo v0, "goto"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_2

    move v0, v1

    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_5

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "componentName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    iget-object v6, p2, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->componentNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v6, p2, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->componentNames:Ljava/util/ArrayList;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :try_start_0
    const-string/jumbo v0, "icon"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/FileInputStream;

    const-string/jumbo v3, "Float_3_4"

    invoke-static {p0, v3, v1}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p2, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->icon:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    :goto_4
    return-void

    :catch_0
    move-exception v0

    :goto_5
    :try_start_2
    const-string/jumbo v1, "FloatResourceHelper"

    const-string/jumbo v3, "parse item failed :"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_6
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :cond_6
    move-object v0, v2

    goto :goto_3
.end method

.method private static updateFloatTips(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "FloatResourceHelper"

    const-string/jumbo v1, "updateFloatTips"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/luckymoney/config/CommonConfig;->setFloatTipsStartTime(J)V

    invoke-virtual {v0, p3, p4}, Lcom/miui/luckymoney/config/CommonConfig;->setFloatTipsStopTime(J)V

    invoke-virtual {v0, p5}, Lcom/miui/luckymoney/config/CommonConfig;->setFloatTipsImageLeft(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/miui/luckymoney/config/CommonConfig;->setFloatTipsImageRight(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/luckymoney/config/CommonConfig;->setFloatTipsUpdateTime(J)V

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "action_refresh_data_usage_daily"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method
