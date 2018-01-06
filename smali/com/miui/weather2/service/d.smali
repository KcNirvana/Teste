.class public abstract Lcom/miui/weather2/service/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/service/d;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/miui/weather2/service/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xff17

    if-ne v0, v1, :cond_0

    const-string v0, "miuiweather_update_in_background"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.miui.weather2"

    const-string v2, "com.miui.weather2.receiver.ReceiverUpdateWeather"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract b()J
.end method

.method public c()Z
    .locals 8

    iget-object v0, p0, Lcom/miui/weather2/service/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/weather2/service/d;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/weather2/service/d;->b()J

    move-result-wide v2

    const-wide/32 v4, 0x2bf20

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/weather2/service/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/service/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/service/d;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method protected e()Ljava/lang/Long;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/weather2/service/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/service/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/service/d;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/weather2/service/d;->run()V

    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const-string v0, "com.miui.weather2.UpdateService"

    return-object v0
.end method
