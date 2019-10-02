.class final Lcom/xiaomi/a/a$1;
.super Landroid/content/BroadcastReceiver;
.source "Debugger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Debugger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.xiaomi.ad.intent.DEBUG_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    sput-boolean p1, Lcom/xiaomi/miglobaladsdk/b;->c:Z

    invoke-static {p1}, Lcom/miui/zeus/logger/MLog;->setDebugOn(Z)V

    invoke-static {}, Lcom/miui/zeus/monitor/crash/b;->a()Lcom/miui/zeus/monitor/crash/d;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/miui/zeus/monitor/crash/d;->b(Z)Lcom/miui/zeus/monitor/crash/d;

    goto :goto_0

    :cond_1
    const-string v0, "com.xiaomi.ad.intent.DEBUG_OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    sput-boolean p1, Lcom/xiaomi/miglobaladsdk/b;->c:Z

    invoke-static {}, Lcom/miui/zeus/logger/MLog;->setDebugOff()V

    invoke-static {}, Lcom/miui/zeus/monitor/crash/b;->a()Lcom/miui/zeus/monitor/crash/d;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/miui/zeus/monitor/crash/d;->b(Z)Lcom/miui/zeus/monitor/crash/d;

    goto :goto_0

    :cond_2
    const-string v0, "com.xiaomi.ad.intent.STAGING_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk;->setStaging()V

    new-instance p2, Lcom/xiaomi/a/a$1$1;

    invoke-direct {p2, p0, p1}, Lcom/xiaomi/a/a$1$1;-><init>(Lcom/xiaomi/a/a$1;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/xiaomi/utils/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const-string v0, "com.xiaomi.ad.intent.STAGING_OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk;->setStagingOff()V

    new-instance p2, Lcom/xiaomi/a/a$1$2;

    invoke-direct {p2, p0, p1}, Lcom/xiaomi/a/a$1$2;-><init>(Lcom/xiaomi/a/a$1;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/xiaomi/utils/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const-string p1, "Debugger"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
