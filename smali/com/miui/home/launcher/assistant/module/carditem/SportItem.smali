.class public Lcom/miui/home/launcher/assistant/module/carditem/SportItem;
.super Ljava/lang/Object;
.source "SportItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;
    }
.end annotation


# static fields
.field public static final MaxItemCount:I = 0x1

.field public static final SUGGEST_COLUMN_CAL:Ljava/lang/String; = "cal"

.field public static final SUGGEST_COLUMN_EXPIRATIONTIME:Ljava/lang/String; = "expirationTime"

.field public static final SUGGEST_COLUMN_EXTRASJSON:Ljava/lang/String; = "extrasJson"

.field public static final SUGGEST_COLUMN_UNIT:Ljava/lang/String; = "unit"

.field private static final TAG:Ljava/lang/String; = "SportItem"

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/miui/home/launcher/assistant/module/carditem/SportItem;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sContext:Landroid/content/Context;

    return-void
.end method

.method private getExtraJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "cal"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SportItem"

    const-string/jumbo v4, "extraJson:"

    invoke-static {v3, v4, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/SportItem;
    .locals 2

    const-class v1, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/SportItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/SportItem;

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/SportItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public queryItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 36

    const/4 v10, 0x0

    sget-object v25, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sContext:Landroid/content/Context;

    const-string/jumbo v30, "key_step_type"

    const-string/jumbo v31, "0"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/Steps;->supportStepsProvider()Z

    move-result v22

    sget-object v25, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sContext:Landroid/content/Context;

    const-string/jumbo v30, "com.xiaomi.hm.health"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v22, :cond_2

    const-string/jumbo v25, "com.xiaomi.hm.health"

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    const-string/jumbo v25, "com.xiaomi.vip"

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    :cond_0
    const-string/jumbo v25, "com.xiaomi.hm.health"

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2

    if-nez v12, :cond_2

    :cond_1
    sget-object v25, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sContext:Landroid/content/Context;

    const-string/jumbo v30, "key_step_type"

    const-string/jumbo v31, "com.xiaomi.vip"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v22, :cond_3

    const-string/jumbo v25, "com.xiaomi.vip"

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_3

    new-instance v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/SportItem;)V

    iput-object v15, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->pkgName:Ljava/lang/String;

    sget-object v25, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Lcom/miui/home/launcher/assistant/util/Steps;->getStepsNow(Landroid/content/Context;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->title:Ljava/lang/String;

    sget-object v25, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sContext:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v30, 0x1b0a0011

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v19

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v25, "\\|"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/16 v25, 0x1

    aget-object v25, v4, v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->unit:Ljava/lang/String;

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v30, 0x0

    const-string/jumbo v31, "http://vipaccount.miui.com/event/detail?record=3"

    aput-object v31, v25, v30

    const/16 v30, 0x1

    const-string/jumbo v31, "&actionbartitle="

    aput-object v31, v25, v30

    const/16 v30, 0x2

    sget-object v31, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sContext:Landroid/content/Context;

    const v32, 0x1b0b03f2

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v25, v30

    const/16 v30, 0x3

    const-string/jumbo v31, "&from=minus_screen"

    aput-object v31, v25, v30

    invoke-static/range {v25 .. v25}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->contentUri:Ljava/lang/String;

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3fe3333333333333L    # 0.6

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->round(D)J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4024000000000000L    # 10.0

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v16

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v30, 0x0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3fe3333333333333L    # 0.6

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->round(D)J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4024000000000000L    # 10.0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v25, v30

    const/16 v30, 0x1

    sget-object v31, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sContext:Landroid/content/Context;

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x1b0b03f0

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v25, v30

    invoke-static/range {v25 .. v25}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->cal:Ljava/lang/String;

    :cond_3
    if-eqz v12, :cond_6

    const-string/jumbo v25, "com.xiaomi.hm.health"

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_6

    const-string/jumbo v17, "com.xiaomi.hm.health"

    const/16 v18, 0x0

    :try_start_0
    sget-object v25, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;

    move-result-object v25

    const-string/jumbo v30, "timestamp desc"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    const/4 v13, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v28

    move-object v11, v10

    :cond_4
    :goto_0
    if-eqz v18, :cond_7

    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-eqz v25, :cond_7

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ge v13, v0, :cond_7

    const-string/jumbo v25, "unique_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v23

    :try_start_2
    const-string/jumbo v25, "timestamp"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const-string/jumbo v25, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x3

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lcom/miui/home/launcher/assistant/util/CryptUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v25, "expirationTime"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    new-instance v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/SportItem;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v25, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sContext:Landroid/content/Context;

    invoke-static/range {v25 .. v27}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->format(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v24

    add-int/lit8 v13, v13, 0x1

    cmp-long v25, v8, v28

    if-gez v25, :cond_5

    const-string/jumbo v25, "0"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->title:Ljava/lang/String;

    const-string/jumbo v25, "0"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->desc:Ljava/lang/String;

    const-string/jumbo v25, "unit"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->unit:Ljava/lang/String;

    const-string/jumbo v25, "expirationTime"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->exirationTime:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "0"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v30, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x1b0b03ef

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->cal:Ljava/lang/String;

    const-string/jumbo v25, "uri"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->updateTime:Ljava/lang/String;

    :goto_1
    move-object v11, v10

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v25, "title"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->title:Ljava/lang/String;

    const-string/jumbo v25, "contentDescription"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->desc:Ljava/lang/String;

    const-string/jumbo v25, "unit"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->unit:Ljava/lang/String;

    const-string/jumbo v25, "expirationTime"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->exirationTime:Ljava/lang/String;

    const-string/jumbo v25, "uri"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->updateTime:Ljava/lang/String;

    const-string/jumbo v25, "extrasJson"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->getExtraJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->cal:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :goto_2
    :try_start_4
    sget-object v25, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->sContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->del(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v25, "SportItem"

    const-string/jumbo v30, " Exception:"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v7

    :goto_3
    :try_start_5
    const-string/jumbo v25, "SportItem"

    const-string/jumbo v30, " Exception:"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_4
    return-object v10

    :cond_7
    if-eqz v18, :cond_9

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    move-object v10, v11

    goto :goto_4

    :catchall_0
    move-exception v25

    :goto_5
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v25

    :catchall_1
    move-exception v25

    move-object v10, v11

    goto :goto_5

    :catch_2
    move-exception v7

    move-object v10, v11

    goto :goto_3

    :catch_3
    move-exception v7

    move-object v10, v11

    goto :goto_2

    :cond_9
    move-object v10, v11

    goto :goto_4
.end method
