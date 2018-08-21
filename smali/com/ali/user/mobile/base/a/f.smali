.class Lcom/ali/user/mobile/base/a/f;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/ali/user/mobile/ui/widget/f$b;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/ali/user/mobile/ui/widget/f$a;

.field final synthetic h:Ljava/lang/Boolean;

.field final synthetic i:Lcom/ali/user/mobile/base/a/b;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$b;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$a;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/a/f;->i:Lcom/ali/user/mobile/base/a/b;

    iput-object p2, p0, Lcom/ali/user/mobile/base/a/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/base/a/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/mobile/base/a/f;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/ali/user/mobile/base/a/f;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/ali/user/mobile/base/a/f;->e:Lcom/ali/user/mobile/ui/widget/f$b;

    iput-object p7, p0, Lcom/ali/user/mobile/base/a/f;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/ali/user/mobile/base/a/f;->g:Lcom/ali/user/mobile/ui/widget/f$a;

    iput-object p9, p0, Lcom/ali/user/mobile/base/a/f;->h:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/f;->i:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/f;->i:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/ali/user/mobile/ui/widget/f;

    iget-object v1, p0, Lcom/ali/user/mobile/base/a/f;->i:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v1}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/base/a/f;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/base/a/f;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/base/a/f;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/ui/widget/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/base/a/f;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/f;->a()Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/base/a/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/base/a/f;->e:Lcom/ali/user/mobile/ui/widget/f$b;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ali/user/mobile/base/a/f;->e:Lcom/ali/user/mobile/ui/widget/f$b;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/f;->a(Lcom/ali/user/mobile/ui/widget/f$b;)V

    :cond_3
    iget-object v1, p0, Lcom/ali/user/mobile/base/a/f;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/f;->a()Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/base/a/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/ali/user/mobile/base/a/f;->g:Lcom/ali/user/mobile/ui/widget/f$a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ali/user/mobile/base/a/f;->g:Lcom/ali/user/mobile/ui/widget/f$a;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/f;->a(Lcom/ali/user/mobile/ui/widget/f$a;)V

    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/base/a/f;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/f;->setCanceledOnTouchOutside(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/f;->setCancelable(Z)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/f;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DialogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APNormalPopDialog.alert(): exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
