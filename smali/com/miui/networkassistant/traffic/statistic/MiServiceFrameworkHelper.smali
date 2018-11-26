.class public Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IMSI:Ljava/lang/String; = "imsi"

.field private static final UPDATE_IMSI_URI:Landroid/net/Uri;

.field private static final sMiServiceUri:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirstDayofMonth:J

.field private mLastMonth:J

.field private mNow:J

.field private mThisWeek:J

.field private mToday:J

.field private mTotalTraffic:J

.field private mYesterday:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.xiaomi.push.providers.TrafficProvider/traffic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->sMiServiceUri:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.xiaomi.push.providers.TrafficProvider/update_imsi"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->UPDATE_IMSI_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->initDateData()V

    return-void
.end method

.method private initDateData()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getNowTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mNow:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mToday:J

    invoke-static {v2}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mFirstDayofMonth:J

    invoke-static {v2}, Lcom/miui/networkassistant/utils/DateUtil;->getLastMonthBeginTimeMillis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mLastMonth:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getYesterdayTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mYesterday:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisWeekBeginTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mThisWeek:J

    return-void
.end method

.method public static updateSim(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "imsi"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->UPDATE_IMSI_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getTotalTraffic()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mTotalTraffic:J

    return-wide v0
.end method

.method public query(IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    new-array v4, v1, [Ljava/lang/String;

    const-string/jumbo v3, "message_ts > ? and message_ts < ? and network_type = ?"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mTotalTraffic:J

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->sMiServiceUri:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_5

    :goto_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mTotalTraffic:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mTotalTraffic:J

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->addTraffic(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v3, "message_ts > ? and message_ts < ? and network_type = ? and imsi = ?"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    aput-object p3, v4, v1

    goto :goto_0

    :pswitch_0
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mThisWeek:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mNow:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mYesterday:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mToday:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    goto/16 :goto_1

    :pswitch_1
    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mToday:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mNow:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    goto/16 :goto_1

    :pswitch_2
    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mLastMonth:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mFirstDayofMonth:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    goto/16 :goto_1

    :pswitch_3
    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mFirstDayofMonth:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->mNow:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    goto/16 :goto_1

    :cond_3
    :try_start_2
    new-instance v3, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;

    invoke-direct {v3}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;-><init>()V

    iput-object v0, v3, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->packageName:Ljava/lang/CharSequence;

    iput-wide v4, v3, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
