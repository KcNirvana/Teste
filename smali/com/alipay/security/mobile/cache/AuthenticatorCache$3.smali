.class Lcom/alipay/security/mobile/cache/AuthenticatorCache$3;
.super Ljava/lang/Object;
.source "AuthenticatorCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/cache/AuthenticatorCache;

.field final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/cache/AuthenticatorCache;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache$3;->this$0:Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    iput-object p2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache$3;->val$userID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshCache enter [userID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache$3;->val$userID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] [cachetime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache$3;->this$0:Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    invoke-static {v2}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->access$000(Lcom/alipay/security/mobile/cache/AuthenticatorCache;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache$3;->this$0:Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    iget-object v4, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache$3;->this$0:Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    invoke-static {v4}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->access$100(Lcom/alipay/security/mobile/cache/AuthenticatorCache;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache$3;->val$userID:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->access$200(Lcom/alipay/security/mobile/cache/AuthenticatorCache;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache$3;->this$0:Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    iget-object v4, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache$3;->this$0:Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    invoke-static {v4}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->access$100(Lcom/alipay/security/mobile/cache/AuthenticatorCache;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/security/mobile/cache/AuthenticatorCache$3;->val$userID:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->access$300(Lcom/alipay/security/mobile/cache/AuthenticatorCache;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshCache exit [] [timecost:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
