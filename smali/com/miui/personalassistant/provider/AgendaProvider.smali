.class public Lcom/miui/personalassistant/provider/AgendaProvider;
.super Ljava/lang/Object;
.source "AgendaProvider.java"


# static fields
.field public static final ALL_DAY:Ljava/lang/String; = "1"

.field private static final EVENT_MAX_COUNT:I = 0x64

.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final EVENT_SORT_ORDER:Ljava/lang/String; = "startDay ASC, startMinute ASC, endDay ASC, endMinute ASC LIMIT 100"

.field private static final INIT_PRE_MILLS:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "AgendaProvider"

.field private static isShowed:Z

.field private static mTime24:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "startDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "displayColor"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "customAppPackage"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/personalassistant/provider/AgendaProvider;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLoaderUri(J)Landroid/net/Uri;
    .locals 6

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/miui/personalassistant/util/TimeUtil;->getTodayTimes(I)J

    move-result-wide v0

    sget-object v3, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static query(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lcom/miui/personalassistant/provider/AgendaProvider;->mTime24:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/personalassistant/provider/AgendaProvider;->isShowed:Z

    :cond_0
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/miui/personalassistant/util/TimeUtil;->getTodayTimes(I)J

    move-result-wide v2

    sput-wide v2, Lcom/miui/personalassistant/provider/AgendaProvider;->mTime24:J

    sget-wide v2, Lcom/miui/personalassistant/provider/AgendaProvider;->mTime24:J

    invoke-static {v2, v3}, Lcom/miui/personalassistant/provider/AgendaProvider;->createLoaderUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/miui/personalassistant/provider/AgendaProvider;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "startDay ASC, startMinute ASC, endDay ASC, endMinute ASC LIMIT 100"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_1
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    const/4 v8, 0x0

    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "allDay"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "end"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/miui/personalassistant/util/TimeUtil;->getTodayTimes(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/miui/personalassistant/util/TimeUtil;->getTodayTimes(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    const-string/jumbo v0, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    invoke-static {v9}, Lcom/miui/personalassistant/model/Agenda;->cursor2json(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "begin"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    if-nez v8, :cond_5

    sget-boolean v0, Lcom/miui/personalassistant/provider/AgendaProvider;->isShowed:Z

    if-nez v0, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    sub-long v14, v2, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v14

    if-ltz v0, :cond_2

    :cond_4
    invoke-static {v9}, Lcom/miui/personalassistant/model/Agenda;->cursor2json(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/personalassistant/provider/AgendaProvider;->isShowed:Z

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    goto/16 :goto_1

    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static queryAgenda(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/miui/personalassistant/provider/AgendaProvider;->query(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.personalassistant.QUERY_AGENDA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "key_agenda"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
