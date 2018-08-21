.class Lcom/ali/user/mobile/base/a/i;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/base/a/b;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/a/i;->a:Lcom/ali/user/mobile/base/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/i;->a:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->b(Lcom/ali/user/mobile/base/a/b;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/i;->a:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->b(Lcom/ali/user/mobile/base/a/b;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/i;->a:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/i;->a:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/base/a/i;->a:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->b(Lcom/ali/user/mobile/base/a/b;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/i;->a:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0, v4}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "DialogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DialogHelper.dismissProgressDialog(): Throwable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/i;->a:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0, v4}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/a/i;->a:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v1, v4}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    throw v0
.end method
