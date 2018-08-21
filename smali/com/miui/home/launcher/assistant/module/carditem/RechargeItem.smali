.class public Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;
.super Ljava/lang/Object;
.source "RechargeItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem$RechargeInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mColumnNames:[Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "contentDescription"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "monthUsed"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "dayUsed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "monthLeft"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;->mColumnNames:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;
    .locals 2

    const-class v1, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;->sContext:Landroid/content/Context;

    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;
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
.method public declared-synchronized queryItem(Ljava/lang/String;I)Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem$RechargeInfo;
    .locals 14

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;->sContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/provider/ExtraNetwork;->getUserDataUsageDetail(Landroid/content/Context;)Lmiui/provider/ExtraNetwork$DataUsageDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v10, v0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthTotal:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-nez v3, :cond_1

    :cond_0
    move-object v2, v1

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    new-instance v2, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem$RechargeInfo;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem$RechargeInfo;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v6, 0x0

    :try_start_2
    iget-wide v10, v0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthTotal:J

    iget-wide v12, v0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthUsed:J

    cmp-long v3, v10, v12

    if-lez v3, :cond_4

    iget-wide v10, v0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthTotal:J

    iget-wide v12, v0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthUsed:J

    sub-long v6, v10, v12

    sget-object v3, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;->sContext:Landroid/content/Context;

    const v10, 0x1b0b0358

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem$RechargeInfo;->title:Ljava/lang/String;

    :goto_1
    iget-wide v4, v0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthUsed:J

    iget-wide v8, v0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->todayUsed:J

    cmp-long v3, v8, v4

    if-lez v3, :cond_2

    move-wide v4, v8

    :cond_2
    invoke-static {v4, v5}, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->formatBytes(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem$RechargeInfo;->monthUsed:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->formatBytes(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem$RechargeInfo;->todayUsed:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/miui/home/launcher/assistant/util/FormatBytesUtil;->formatBytes(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem$RechargeInfo;->remaining:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v3, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem$RechargeInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v1, v2

    goto :goto_0

    :cond_4
    iget-wide v10, v0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthUsed:J

    iget-wide v12, v0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthTotal:J

    sub-long v6, v10, v12

    sget-object v3, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;->sContext:Landroid/content/Context;

    const v10, 0x1b0b0357

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem$RechargeInfo;->title:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v1, v2

    :goto_2
    monitor-exit p0

    throw v3

    :catchall_1
    move-exception v3

    goto :goto_2
.end method

.method public bridge synthetic queryItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem;->queryItem(Ljava/lang/String;I)Lcom/miui/home/launcher/assistant/module/carditem/RechargeItem$RechargeInfo;

    move-result-object v0

    return-object v0
.end method
