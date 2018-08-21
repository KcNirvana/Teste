.class public abstract Lcom/ali/user/mobile/base/AdaptorActivity;
.super Lcom/alipay/android/phone/inside/framework/base/BaseInsideActivity;
.source "AdaptorActivity.java"


# instance fields
.field protected mAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/framework/base/BaseInsideActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/base/AdaptorActivity;->mAppId:Ljava/lang/String;

    return-void
.end method

.method private prepareIntent(Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "app_id"

    iget-object v1, p0, Lcom/ali/user/mobile/base/AdaptorActivity;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x40000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AdaptorActivity"

    const-string/jumbo v2, "prepareIntent error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/AdaptorActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/AdaptorActivity;->setAppId()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/AdaptorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/base/AdaptorActivity;->prepareIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/alipay/android/phone/inside/framework/base/BaseInsideActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/base/AdaptorActivity;->prepareIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/alipay/android/phone/inside/framework/base/BaseInsideActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract setAppId()V
.end method
