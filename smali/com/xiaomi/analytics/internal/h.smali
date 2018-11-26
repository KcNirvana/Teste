.class final Lcom/xiaomi/analytics/internal/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bof:Lcom/xiaomi/analytics/internal/o;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/o;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/h;->bof:Lcom/xiaomi/analytics/internal/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/h;->bof:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMh(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/h;->bof:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMg(Lcom/xiaomi/analytics/internal/o;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/f;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/f;->bLQ()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/h;->bof:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/o;->bMw(Lcom/xiaomi/analytics/internal/o;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/h;->bof:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/o;->bMg(Lcom/xiaomi/analytics/internal/o;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/f;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/f;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/internal/f;->bLA(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SdkManager"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mUpdateChecker exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
