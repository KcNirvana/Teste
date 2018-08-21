.class public Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;
.super Ljava/lang/Object;
.source "AgendaAssistantItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseItem;


# static fields
.field private static final KEY_BIRTHDAY_REMIND:Ljava/lang/String; = "key_birthday_remind"

.field private static final KEY_CREDIT_REMIND:Ljava/lang/String; = "key_credit_remind"

.field private static final KEY_ELECBILL_REMIND:Ljava/lang/String; = "key_elecbill_remind"

.field private static final KEY_LOAN_REMIND:Ljava/lang/String; = "key_loan_remind"

.field public static final VIEW_TYPE:Ljava/lang/String; = "AgendaAssistantItem"

.field private static volatile sInstance:Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;


# instance fields
.field private isRemindMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private mIUpdateLisener:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateLisener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem$1;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mIUpdateLisener:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateLisener;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem$2;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mComparator:Ljava/util/Comparator;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mIUpdateLisener:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateLisener;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateLisener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public bridge synthetic queryItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->queryItem(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryItem(Ljava/lang/String;I)Ljava/util/List;
    .locals 18
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

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    const-string/jumbo v14, "key_birthday_remind"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    const-string/jumbo v14, "key_birthday_remind"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "key_birthday_remind"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    const-string/jumbo v14, "key_credit_remind"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    const-string/jumbo v14, "key_credit_remind"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "key_credit_remind"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    const-string/jumbo v14, "key_loan_remind"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    const-string/jumbo v14, "key_loan_remind"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "key_loan_remind"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    const-string/jumbo v14, "key_elecbill_remind"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    const-string/jumbo v14, "key_elecbill_remind"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "key_elecbill_remind"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    const-string/jumbo v14, "key_birthday_remind"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/miui/calendar/api/CalendarAPI;->loadBirthdayEvent(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    const-string/jumbo v14, "key_credit_remind"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    const/4 v15, 0x4

    invoke-static {v13, v14, v15}, Lcom/miui/calendar/api/CalendarAPI;->loadCreditEvent(Landroid/content/Context;Ljava/util/Calendar;I)Ljava/util/List;

    move-result-object v5

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    const-string/jumbo v14, "key_loan_remind"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    const/4 v15, 0x4

    invoke-static {v13, v14, v15}, Lcom/miui/calendar/api/CalendarAPI;->loadLoanEvent(Landroid/content/Context;Ljava/util/Calendar;I)Ljava/util/List;

    move-result-object v12

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->isRemindMap:Ljava/util/HashMap;

    const-string/jumbo v14, "key_elecbill_remind"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/miui/calendar/api/CalendarAPI;->loadElectricityBillEvent(Landroid/content/Context;Ljava/util/Calendar;I)Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/miui/calendar/api/CalendarAPI;->loadGasBillEvent(Landroid/content/Context;Ljava/util/Calendar;I)Ljava/util/List;

    move-result-object v10

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/miui/calendar/api/CalendarAPI;->loadAgendaEvent(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz v3, :cond_11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_11

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/calendar/event/schema/BaseEvent;

    iget-wide v14, v9, Lcom/miui/calendar/event/schema/BaseEvent;->endTimeMillis:J

    cmp-long v13, v6, v14

    if-lez v13, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->mComparator:Ljava/util/Comparator;

    invoke-static {v3, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v13, 0x1

    sput-boolean v13, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->isHasAgenda:Z

    :goto_1
    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_a

    invoke-interface {v11, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_b

    invoke-interface {v11, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    if-eqz v5, :cond_c

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_c

    invoke-interface {v11, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    if-eqz v12, :cond_d

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_d

    invoke-interface {v11, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_d
    if-eqz v8, :cond_e

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_e

    invoke-interface {v11, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_e
    if-eqz v10, :cond_f

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_f

    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_f
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const/16 v14, 0x8

    if-le v13, v14, :cond_10

    const/4 v13, 0x0

    const/16 v14, 0x8

    invoke-interface {v11, v13, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    :cond_10
    return-object v11

    :cond_11
    const/4 v13, 0x0

    sput-boolean v13, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->isHasAgenda:Z

    goto :goto_1
.end method
