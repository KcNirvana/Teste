.class Lcom/xiaomi/accountsdk/request/IPStrategy$2;
.super Ljava/lang/Object;
.source "IPStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/request/IPStrategy;->updateBackupIpListIfNeeded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/accountsdk/request/IPStrategy;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$networkNameOld:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/request/IPStrategy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$2;->this$0:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$2;->val$networkNameOld:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$2;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$2;->this$0:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$2;->val$networkNameOld:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IPStrategy"

    const-string v2, "backupList: network changed from %s to %s, will NOT update anything"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$2;->val$networkNameOld:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/accountsdk/request/IPStrategy$BackupIpStatHelper;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/IPStrategy$BackupIpStatHelper;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/IPStrategy$BackupIpStatHelper;->onNetworkChangedBeforePullingBackupIps()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$2;->this$0:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$2;->val$host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getBackupIpListOnline(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/accountsdk/request/IPStrategy$BackupIpStatHelper;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/request/IPStrategy$BackupIpStatHelper;-><init>()V

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/request/IPStrategy$BackupIpStatHelper;->onPullingBackupIpsSucceeded(Ljava/util/List;)V

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$2;->this$0:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$2;->val$host:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateBackupIpList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
