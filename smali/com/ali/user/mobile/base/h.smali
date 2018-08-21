.class Lcom/ali/user/mobile/base/h;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/h;->a:Lcom/ali/user/mobile/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/base/h;->a:Lcom/ali/user/mobile/base/BaseActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/h;->a:Lcom/ali/user/mobile/base/BaseActivity;

    iget-boolean v0, v0, Lcom/ali/user/mobile/base/BaseActivity;->mIsDestroy:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/ui/widget/ad;

    iget-object v1, p0, Lcom/ali/user/mobile/base/h;->a:Lcom/ali/user/mobile/base/BaseActivity;

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/ui/widget/ad;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/ad;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
