.class Lcom/xiaomi/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/a/a/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/e;->a:Lcom/xiaomi/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/a/a/e;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->a(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/e;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->b(Lcom/xiaomi/a/a/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/j;->a(Landroid/content/Context;)Lcom/xiaomi/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/a/a/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaomi/a/a/e;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v1}, Lcom/xiaomi/a/a/d;->c(Lcom/xiaomi/a/a/d;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/a/a/e;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v1}, Lcom/xiaomi/a/a/d;->b(Lcom/xiaomi/a/a/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/j;->a(Landroid/content/Context;)Lcom/xiaomi/a/a/j;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/a/a/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SdkManager"

    invoke-static {v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mUpdateChecker exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
