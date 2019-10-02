.class Lcom/xiaomi/accountsdk/request/IPStrategy$1;
.super Ljava/lang/Object;
.source "IPStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/request/IPStrategy;->updateCachedIpIfNeeded(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/accountsdk/request/IPStrategy;

.field final synthetic val$backupIp0:Ljava/lang/String;

.field final synthetic val$dnsIp0:Ljava/lang/String;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$networkNameOld:Ljava/lang/String;

.field final synthetic val$statHelper:Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;

.field final synthetic val$timeSpent:J


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/request/IPStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->this$0:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$dnsIp0:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$backupIp0:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$statHelper:Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;

    iput-object p6, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$networkNameOld:Ljava/lang/String;

    iput-wide p7, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$timeSpent:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->this$0:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$host:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$dnsIp0:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$backupIp0:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$statHelper:Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;

    invoke-virtual {v0, v1, v3, v4}, Lcom/xiaomi/accountsdk/request/IPStrategy;->ping(Ljava/lang/String;[Ljava/lang/String;Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->this$0:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$networkNameOld:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$statHelper:Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$networkNameOld:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->onNetworkChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IPStrategy"

    const-string v3, "ping: network changed from %s to %s, will NOT update anything"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$networkNameOld:Ljava/lang/String;

    aput-object v4, v2, v5

    aput-object v1, v2, v6

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->this$0:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateCachedTimeStamp(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$statHelper:Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;

    invoke-static {}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->getPingTimeCoefficient()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->onAllIpPingFinishes(J)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->getPingTimeCoefficient()J

    move-result-wide v4

    mul-long v2, v2, v4

    iget-wide v4, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$timeSpent:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->this$0:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$host:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateCachedIpAndTimeStamp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->this$0:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$1;->val$host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateCachedTimeStamp(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
