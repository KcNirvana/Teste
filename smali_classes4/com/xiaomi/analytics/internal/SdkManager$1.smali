.class Lcom/xiaomi/analytics/internal/SdkManager$1;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/internal/SdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/internal/SdkManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/SdkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/analytics/internal/SdkManager;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$100(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$200(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$200(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->init()V

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$200(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$300(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$200(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    move-result-object v2

    sget-boolean v3, Lcom/xiaomi/analytics/internal/util/ALog;->sEnable:Z

    invoke-virtual {v2, v3}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->setDebugOn(Z)V

    const-string v2, "SdkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Analytics module loaded, version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v4}, Lcom/xiaomi/analytics/internal/SdkManager;->access$200(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$300(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$200(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;->onSdkCorePrepared(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$400(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/PolicyConfiguration;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$400(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/PolicyConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$200(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/analytics/PolicyConfiguration;->apply(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SdkManager"

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "heavy work exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v1, v0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$502(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z

    return-void

    :goto_1
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2, v0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$502(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z

    throw v1
.end method
