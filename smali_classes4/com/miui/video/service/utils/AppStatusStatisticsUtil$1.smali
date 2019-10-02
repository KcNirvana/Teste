.class Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;
.super Ljava/lang/Object;
.source "AppStatusStatisticsUtil.java"

# interfaces
.implements Lcom/miui/video/framework/FrameworkApplication$OnAppStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/utils/AppStatusStatisticsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;


# direct methods
.method constructor <init>(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "AppStatusStatisticsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Activity Created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "AppStatusStatisticsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Activity Destroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 9

    const-string v0, "AppStatusStatisticsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Activity Paused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$700(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$1100(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    iget-object v3, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v3}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$600(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v7}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$1100(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-static {v0, v3, v4}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$602(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;J)J

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$900(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$1200(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$500(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v4}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$1200(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$502(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;J)J

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "AppStatusStatisticsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Activity Resumed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$700(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$800(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v0, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$900(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$1000(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V

    :cond_1
    return-void
.end method

.method public onAppBackground(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "AppStatusStatisticsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on App Background : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$402(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Z)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/uri/PageInfoUtils;->setAppOnlineStartRef(Ljava/lang/String;)V

    return-void
.end method

.method public onAppForeground(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "AppStatusStatisticsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on App Foreground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$400(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v2, "main_page"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "online_start_alive"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    iget-object v2, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v2, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$100(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "is_first"

    iget-object v3, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v3, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$200(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v2, p1, v0, v1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$300(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$402(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Z)Z

    return-void
.end method

.method public onProcessExit(Landroid/app/Activity;)V
    .locals 7

    const-string v0, "AppStatusStatisticsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Process Exit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$402(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Z)Z

    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$500(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v4, "main_page"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    const-string v4, "online_start"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v4, "online_exit_quit"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "time"

    iget-object v5, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v5}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$500(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v4, p1, v0, v1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$300(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$600(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v2, "main_page"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    const-string v2, "local_start"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "online_exit_quit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "time"

    iget-object v3, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v3}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$600(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v2, p1, v0, v1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$300(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public onProcessStart(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "AppStatusStatisticsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Process Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$000(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v2, "main_page"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "online_start_up"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    iget-object v2, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v2, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$100(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "is_first"

    iget-object v3, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v3, p1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$200(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v2, p1, v0, v1}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$300(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/miui/video/service/utils/AppStatusStatisticsUtil$1;->this$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->access$402(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;Z)Z

    return-void
.end method
