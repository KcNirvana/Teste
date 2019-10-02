.class Lcom/xiaomi/miglobaladsdk/report/c$1;
.super Ljava/lang/Object;
.source "AdReportTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/report/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/report/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/report/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v1}, Lcom/xiaomi/miglobaladsdk/report/c;->a(Lcom/xiaomi/miglobaladsdk/report/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v2}, Lcom/xiaomi/miglobaladsdk/report/c;->b(Lcom/xiaomi/miglobaladsdk/report/c;)Lcom/xiaomi/miglobaladsdk/report/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/report/c;->a(Lcom/xiaomi/miglobaladsdk/report/c;Landroid/content/Context;Lcom/xiaomi/miglobaladsdk/report/a;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v1}, Lcom/xiaomi/miglobaladsdk/report/c;->a(Lcom/xiaomi/miglobaladsdk/report/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/report/c;->a(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/analytics/Analytics;)Lcom/xiaomi/analytics/Analytics;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v2}, Lcom/xiaomi/miglobaladsdk/report/c;->b(Lcom/xiaomi/miglobaladsdk/report/c;)Lcom/xiaomi/miglobaladsdk/report/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/miglobaladsdk/report/c;->a(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/a;)Lcom/xiaomi/miglobaladsdk/report/c$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/report/c;->a(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/c$a;)Lcom/xiaomi/miglobaladsdk/report/c$a;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->getConfigKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/report/c;->a(Lcom/xiaomi/miglobaladsdk/report/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/report/c;->c(Lcom/xiaomi/miglobaladsdk/report/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/report/c;->d(Lcom/xiaomi/miglobaladsdk/report/c;)Lcom/xiaomi/analytics/Analytics;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/report/c;->e(Lcom/xiaomi/miglobaladsdk/report/c;)Lcom/xiaomi/miglobaladsdk/report/c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "AdReportTask"

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v1}, Lcom/xiaomi/miglobaladsdk/report/c;->e(Lcom/xiaomi/miglobaladsdk/report/c;)Lcom/xiaomi/miglobaladsdk/report/c$a;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/miglobaladsdk/report/c$a;->a:Lcom/xiaomi/miglobaladsdk/report/a;

    invoke-virtual {v1}, Lcom/xiaomi/miglobaladsdk/report/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/report/c;->a(Lcom/xiaomi/miglobaladsdk/report/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Commons;->isAdEnableInEURegion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MIADSDK"

    const-string v1, "In eu region and disabled personalized ad"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/report/c;->d(Lcom/xiaomi/miglobaladsdk/report/c;)Lcom/xiaomi/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v1}, Lcom/xiaomi/miglobaladsdk/report/c;->c(Lcom/xiaomi/miglobaladsdk/report/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v0

    const-string v1, "com.xiaomi.miglobaladsdk"

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v2}, Lcom/xiaomi/miglobaladsdk/report/c;->e(Lcom/xiaomi/miglobaladsdk/report/c;)Lcom/xiaomi/miglobaladsdk/report/c$a;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_GUID:Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/analytics/Tracker;->track(Ljava/lang/String;Lcom/xiaomi/analytics/Action;Lcom/xiaomi/analytics/LogEvent$IdType;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdReportTask"

    const-string v2, "track exception"

    invoke-static {v1, v2, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/report/c;->d(Lcom/xiaomi/miglobaladsdk/report/c;)Lcom/xiaomi/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v1}, Lcom/xiaomi/miglobaladsdk/report/c;->c(Lcom/xiaomi/miglobaladsdk/report/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v0

    const-string v1, "com.xiaomi.miglobaladsdk"

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/report/c$1;->a:Lcom/xiaomi/miglobaladsdk/report/c;

    invoke-static {v2}, Lcom/xiaomi/miglobaladsdk/report/c;->e(Lcom/xiaomi/miglobaladsdk/report/c;)Lcom/xiaomi/miglobaladsdk/report/c$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/analytics/Tracker;->track(Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V

    :cond_1
    :goto_0
    return-void
.end method
