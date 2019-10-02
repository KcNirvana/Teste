.class Lcom/xiaomi/miglobaladsdk/a/b$4;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/a/b;->k()V
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

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b$4;->a:Lcom/xiaomi/miglobaladsdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ConfigRequest"

    const-string v0, "request report config failed"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "ConfigRequest"

    const-string v1, "request report config success"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ConfigRequest"

    const-string v1, "request report config : analyze json failed"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b$4;->a:Lcom/xiaomi/miglobaladsdk/a/b;

    invoke-static {v0, p1}, Lcom/xiaomi/miglobaladsdk/a/b;->c(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
