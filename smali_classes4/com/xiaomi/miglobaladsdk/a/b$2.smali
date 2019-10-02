.class Lcom/xiaomi/miglobaladsdk/a/b$2;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/a/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/a/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b$2;->a:Lcom/xiaomi/miglobaladsdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "ConfigRequest"

    const-string v0, "to load from network, request failed"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b$2;->a:Lcom/xiaomi/miglobaladsdk/a/b;

    invoke-static {p1, v1}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b$2;->a:Lcom/xiaomi/miglobaladsdk/a/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Lcom/xiaomi/miglobaladsdk/a/b;J)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b$2;->a:Lcom/xiaomi/miglobaladsdk/a/b;

    invoke-static {v0, p1}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;)V

    const-string p1, "ConfigRequest"

    const-string v0, "to load from network, request success"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "ConfigRequest"

    const-string v0, "to load from network, request config failed...response is invalid"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b$2;->a:Lcom/xiaomi/miglobaladsdk/a/b;

    invoke-static {p1, v1}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
