.class public Lcom/miui/networkassistant/service/tm/TetherStatsManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "TetherStatsManager"

.field private static final TETHER_LIMIT_STOP_NETWORK:I = 0x0

.field private static final TETHER_LIMIT_WARNING:I = 0x1


# instance fields
.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mIsWifiApEnabled:Z

.field private mTetheringLimitEnable:Z

.field private mTetheringLimitTraffic:J

.field private mTetheringStartStats:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-void
.end method

.method private getTetheringStats()J
    .locals 8

    invoke-static {}, Lmiui/securitycenter/NetworkUtils;->getNetworkStatsTethering()Ljava/util/ArrayList;

    move-result-object v2

    const-wide/16 v0, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "uid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x5

    if-ne v1, v5, :cond_2

    const-string/jumbo v1, "rxBytes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v1, "txBytes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v6

    add-long/2addr v0, v2

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :cond_1
    return-wide v2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method


# virtual methods
.method checkTetheringTrafficStatus()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mIsWifiApEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringLimitEnable:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringLimitTraffic:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->getTetheringStats()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringStartStats:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringLimitTraffic:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringOverLimitOptType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringDataUsageOverLimit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringDataUsageOverLimit(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendTetherOverLimitWaringNotify(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringDataUsageOverLimit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringDataUsageOverLimit(Z)Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->onTetherStatsOverLimit()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method initTetheringStatus()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aMb(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mIsWifiApEnabled:Z

    const-string/jumbo v0, "TetherStatsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ap enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mIsWifiApEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mIsWifiApEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringLimitEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringLimitEnable:Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringLimitTraffic()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringLimitTraffic:J

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->getTetheringStats()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringStartStats:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringDataUsageOverLimit(Z)Z

    :cond_0
    return-void
.end method

.method onTetherStatsOverLimit()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/network/e;->aLR(Landroid/content/Context;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
