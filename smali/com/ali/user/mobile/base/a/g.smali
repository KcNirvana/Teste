.class Lcom/ali/user/mobile/base/a/g;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/ali/user/mobile/base/a/b;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/a/b;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/a/g;->c:Lcom/ali/user/mobile/base/a/b;

    iput-object p2, p0, Lcom/ali/user/mobile/base/a/g;->a:Ljava/lang/String;

    iput p3, p0, Lcom/ali/user/mobile/base/a/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/g;->c:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/g;->c:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/base/a/g;->c:Lcom/ali/user/mobile/base/a/b;

    invoke-static {v0}, Lcom/ali/user/mobile/base/a/b;->a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ali/user/mobile/base/a/g;->a:Ljava/lang/String;

    iget v3, p0, Lcom/ali/user/mobile/base/a/g;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/ui/widget/e/a;->a(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DialogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DialogHelper.toast(): exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
