.class public Lcom/miui/zeus/monitor/crash/CrashMonitorService;
.super Landroid/app/IntentService;
.source "CrashMonitorService.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CrashMonitorService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/zeus/utils/b;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/zeus/monitor/crash/CrashMonitorService;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/zeus/monitor/crash/CrashMonitorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "exception"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "debug"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "moduleName"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_1
    :goto_0
    const-string p0, "CrashMonitorService"

    const-string p1, "start error, param is null"

    invoke-static {p0, p1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-static {p0}, Lcom/miui/zeus/utils/b;->a(Landroid/content/Context;)V

    const-string v0, "CrashMonitorService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "exception"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/zeus/monitor/crash/CrashMonitorService;->a:Landroid/os/Handler;

    new-instance v3, Lcom/miui/zeus/monitor/crash/CrashMonitorService$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/zeus/monitor/crash/CrashMonitorService$1;-><init>(Lcom/miui/zeus/monitor/crash/CrashMonitorService;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-string v2, "CrashMonitorService"

    invoke-static {v2, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/zeus/monitor/crash/c;->a()Lcom/miui/zeus/monitor/crash/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/zeus/monitor/crash/c;->a(Z)V

    invoke-static {}, Lcom/miui/zeus/monitor/crash/c;->a()Lcom/miui/zeus/monitor/crash/c;

    move-result-object v1

    const-string v2, "moduleName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/miui/zeus/monitor/crash/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
