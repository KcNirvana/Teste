.class Lcom/ali/user/mobile/base/a/h;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic e:Lcom/ali/user/mobile/base/a/b;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/a/b;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/a/h;->e:Lcom/ali/user/mobile/base/a/b;

    iput-object p2, p0, Lcom/ali/user/mobile/base/a/h;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ali/user/mobile/base/a/h;->b:Z

    iput-boolean p4, p0, Lcom/ali/user/mobile/base/a/h;->c:Z

    iput-object p5, p0, Lcom/ali/user/mobile/base/a/h;->d:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/h;->e:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/h;->e:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/base/a/h;->e:Lcom/ali/user/mobile/base/a/b;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/c;

    iget-object v2, p0, Lcom/ali/user/mobile/base/a/h;->e:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v2}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ali/user/mobile/ui/widget/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/h;->e:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->b(Lcom/ali/user/mobile/base/a/b;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/h;->e:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->b(Lcom/ali/user/mobile/base/a/b;)Landroid/app/AlertDialog;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/c;

    iget-boolean v1, p0, Lcom/ali/user/mobile/base/a/h;->b:Z

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/c;->a(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/h;->e:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->b(Lcom/ali/user/mobile/base/a/b;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ali/user/mobile/base/a/h;->c:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/h;->e:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->b(Lcom/ali/user/mobile/base/a/b;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/a/h;->d:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/h;->e:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->b(Lcom/ali/user/mobile/base/a/b;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/base/a/h;->e:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->b(Lcom/ali/user/mobile/base/a/b;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DialogHelper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/h;->e:Lcom/ali/user/mobile/base/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
