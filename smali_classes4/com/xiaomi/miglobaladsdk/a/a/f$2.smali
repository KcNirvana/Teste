.class Lcom/xiaomi/miglobaladsdk/a/a/f$2;
.super Ljava/lang/Object;
.source "MiConfigLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/a/a/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/a/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/a/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$2;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "MiAdBlacklistConfig"

    const-string v1, "check config!"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$2;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->b(Lcom/xiaomi/miglobaladsdk/a/a/f;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$2;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Lcom/xiaomi/miglobaladsdk/a/a/f;Z)Z

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$2;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Lcom/xiaomi/miglobaladsdk/a/a/f;J)J

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$2;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->c(Lcom/xiaomi/miglobaladsdk/a/a/f;)V

    return-void
.end method
