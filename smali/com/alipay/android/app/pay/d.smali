.class Lcom/alipay/android/app/pay/d;
.super Ljava/lang/Object;
.source "MiniLaucherActivity.java"

# interfaces
.implements Lcom/alipay/android/app/pay/AuthTask$OnAuthListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/pay/MiniLaucherActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/MiniLaucherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/d;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "resultStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "memo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/app/pay/d;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/d;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->access$002(Lcom/alipay/android/app/pay/MiniLaucherActivity;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/pay/d;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->finish()V

    return-void
.end method

.method public onAuthSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "resultStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "memo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/app/pay/d;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/d;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->access$002(Lcom/alipay/android/app/pay/MiniLaucherActivity;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/pay/d;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->finish()V

    return-void
.end method
