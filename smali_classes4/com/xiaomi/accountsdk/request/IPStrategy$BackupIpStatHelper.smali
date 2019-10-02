.class Lcom/xiaomi/accountsdk/request/IPStrategy$BackupIpStatHelper;
.super Lcom/xiaomi/accountsdk/request/IPStatHelper;
.source "IPStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/IPStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackupIpStatHelper"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/IPStatHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChangedBeforePullingBackupIps()V
    .locals 2

    const-string v0, "backupIpDiagnosis"

    const-string v1, "PullingBackupIpChanged"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/IPStrategy$BackupIpStatHelper;->statCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPullingBackupIpsSucceeded(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "http://dummyurl/backupIpDiagonose?_ver=%s&_ips=%s&_nets=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/xiaomi/accountsdk/account/PassportCAConstants;->IMPL_VERSION:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy$BackupIpStatHelper;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy$BackupIpStatHelper;->statDummyUrl(Ljava/lang/String;)V

    return-void
.end method
