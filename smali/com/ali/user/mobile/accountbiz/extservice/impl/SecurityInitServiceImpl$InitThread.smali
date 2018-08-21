.class Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$InitThread;
.super Ljava/lang/Object;
.source "SecurityInitServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitThread"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$InitThread;->this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$InitThread;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$InitThread;->this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    iget-object v1, v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->initFlagSynLock:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v2, "InitThread-intent:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$InitThread;->intent:Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$InitThread;->this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$InitThread;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "toBiz"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->access$002(Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;Z)Z

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$InitThread;->this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$InitThread;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "genTid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->access$102(Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;Z)Z

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$InitThread;->this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    invoke-virtual {v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->securityInitStart()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
