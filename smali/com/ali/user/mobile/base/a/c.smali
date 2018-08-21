.class Lcom/ali/user/mobile/base/a/c;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic f:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic g:Ljava/lang/Boolean;

.field final synthetic h:Lcom/ali/user/mobile/base/a/b;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/a/c;->h:Lcom/ali/user/mobile/base/a/b;

    iput-object p2, p0, Lcom/ali/user/mobile/base/a/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/base/a/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/mobile/base/a/c;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/ali/user/mobile/base/a/c;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/ali/user/mobile/base/a/c;->e:Landroid/content/DialogInterface$OnClickListener;

    iput-object p7, p0, Lcom/ali/user/mobile/base/a/c;->f:Landroid/content/DialogInterface$OnClickListener;

    iput-object p8, p0, Lcom/ali/user/mobile/base/a/c;->g:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/c;->h:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/c;->h:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/ali/user/mobile/ui/widget/i;

    iget-object v1, p0, Lcom/ali/user/mobile/base/a/c;->h:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v1}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/base/a/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/base/a/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/base/a/c;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/ali/user/mobile/base/a/c;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/mobile/ui/widget/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/base/a/c;->e:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/ali/user/mobile/base/a/d;

    invoke-direct {v1, p0, v0}, Lcom/ali/user/mobile/base/a/d;-><init>(Lcom/ali/user/mobile/base/a/c;Lcom/ali/user/mobile/ui/widget/i;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/i;->a(Lcom/ali/user/mobile/ui/widget/i$b;)V

    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/base/a/c;->f:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/ali/user/mobile/base/a/e;

    invoke-direct {v1, p0, v0}, Lcom/ali/user/mobile/base/a/e;-><init>(Lcom/ali/user/mobile/base/a/c;Lcom/ali/user/mobile/ui/widget/i;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/i;->a(Lcom/ali/user/mobile/ui/widget/i$a;)V

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/i;->show()V

    iget-object v1, p0, Lcom/ali/user/mobile/base/a/c;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/i;->setCanceledOnTouchOutside(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/i;->setCancelable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DialogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DialogHelper.alert(): exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
