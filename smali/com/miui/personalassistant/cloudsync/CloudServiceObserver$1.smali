.class Lcom/miui/personalassistant/cloudsync/CloudServiceObserver$1;
.super Ljava/lang/Object;
.source "CloudServiceObserver.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver$1;->this$0:Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 5

    iget-object v2, p0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver$1;->this$0:Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;

    invoke-static {v2}, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->access$000(Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    const-string/jumbo v2, "personal_assistant"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "CloudServiceObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sync status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver$1;->this$0:Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;

    invoke-static {v2}, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->access$000(Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    :cond_0
    invoke-static {v1}, Lcom/miui/personalassistant/cloudsync/CloudServiceObserver;->access$102(Z)Z

    return-void
.end method
