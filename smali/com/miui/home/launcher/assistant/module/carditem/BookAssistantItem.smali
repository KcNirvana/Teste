.class public Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;
.super Ljava/lang/Object;
.source "BookAssistantItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseItem;


# static fields
.field private static final DELAY_SHOW_HOURS:I = -0x1

.field public static final PRE_SHOW_HOURS:I = 0x18

.field public static final VIEW_TYPE:Ljava/lang/String; = "BookAssistantItem"

.field private static volatile sInstance:Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;


# instance fields
.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem$1;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->mComparator:Ljava/util/Comparator;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isEndOver1h(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getHoursBetween(JJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isMore24h(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getHoursBetween(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x18

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic queryItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->queryItem(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryItem(Ljava/lang/String;I)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v16 .. v18}, Lcom/miui/calendar/api/CalendarAPI;->loadTripEvent(Landroid/content/Context;Ljava/util/Calendar;I)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/calendar/api/CalendarAPI;->loadTripEventBookedToday(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    if-eqz v13, :cond_6

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_6

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/calendar/event/schema/BaseEvent;

    iget-wide v0, v9, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v0, v9, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->isMore24h(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/miui/calendar/util/TimeUtils;->isToday(J)Z

    move-result v16

    if-nez v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_4

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/calendar/event/schema/BaseEvent;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/calendar/event/schema/BaseEvent;

    iget-wide v0, v11, Lcom/miui/calendar/event/schema/BaseEvent;->id:J

    move-wide/from16 v16, v0

    iget-wide v0, v2, Lcom/miui/calendar/event/schema/BaseEvent;->id:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-nez v16, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/calendar/event/schema/BaseEvent;

    iget v0, v9, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_1

    iget-wide v0, v9, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->isEndOver1h(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :pswitch_1
    iget-wide v0, v9, Lcom/miui/calendar/event/schema/BaseEvent;->endTimeMillis:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v16, v6, v16

    if-lez v16, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_7

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_7

    invoke-interface {v10, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_8

    invoke-interface {v10, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->mComparator:Ljava/util/Comparator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
    .end packed-switch
.end method
