.class public Lcom/miui/share/weibo/WeiboShareActivity;
.super Landroid/app/Activity;
.source "WeiboShareActivity.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiShare"


# instance fields
.field private mWeiboAuth:Lcom/miui/share/weibo/WeiboAuth;

.field private mWeiboShare:Lcom/miui/share/weibo/WeiboShare;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/share/weibo/WeiboShareActivity;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/share/weibo/WeiboShareActivity;->share(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/share/weibo/WeiboShareActivity;)Lcom/miui/share/weibo/WeiboShare;
    .locals 1

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboShareActivity;->mWeiboShare:Lcom/miui/share/weibo/WeiboShare;

    return-object v0
.end method

.method private share(Landroid/content/Intent;)Z
    .locals 1

    new-instance v0, Lcom/miui/share/weibo/WeiboShareActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/share/weibo/WeiboShareActivity$2;-><init>(Lcom/miui/share/weibo/WeiboShareActivity;)V

    invoke-static {p0, p1, v0}, Lcom/miui/share/ShareUtils;->shareIntent(Landroid/app/Activity;Landroid/content/Intent;Lcom/miui/share/ShareUtils$OnShareContentPreparedListener;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboShareActivity;->mWeiboAuth:Lcom/miui/share/weibo/WeiboAuth;

    if-eqz v0, :cond_1

    const v0, 0x80cd

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboShareActivity;->mWeiboAuth:Lcom/miui/share/weibo/WeiboAuth;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/share/weibo/WeiboAuth;->handleSsoAuthResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/share/weibo/WeiboShareActivity;->mWeiboAuth:Lcom/miui/share/weibo/WeiboAuth;

    if-nez v0, :cond_0

    const/16 v0, 0x2fd

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/share/weibo/WeiboShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/share/weibo/WeiboAuth;->clean(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/share/weibo/WeiboShareActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/share/weibo/WeiboShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "com.miui.share.extra.config"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "weibo_app_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/miui/share/weibo/WeiboShare;

    invoke-direct {v3, p0, v0}, Lcom/miui/share/weibo/WeiboShare;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/share/weibo/WeiboShareActivity;->mWeiboShare:Lcom/miui/share/weibo/WeiboShare;

    invoke-virtual {p0}, Lcom/miui/share/weibo/WeiboShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/share/weibo/WeiboAuth;->isAccessTokenValid(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/miui/share/weibo/WeiboAuth;

    invoke-direct {v3, p0}, Lcom/miui/share/weibo/WeiboAuth;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/miui/share/weibo/WeiboShareActivity;->mWeiboAuth:Lcom/miui/share/weibo/WeiboAuth;

    iget-object v3, p0, Lcom/miui/share/weibo/WeiboShareActivity;->mWeiboAuth:Lcom/miui/share/weibo/WeiboAuth;

    new-instance v4, Lcom/miui/share/weibo/WeiboShareActivity$1;

    invoke-direct {v4, p0, v1}, Lcom/miui/share/weibo/WeiboShareActivity$1;-><init>(Lcom/miui/share/weibo/WeiboShareActivity;Landroid/content/Intent;)V

    invoke-virtual {v3, v2, v4}, Lcom/miui/share/weibo/WeiboAuth;->ssoAuth(Landroid/os/Bundle;Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/miui/share/weibo/WeiboShareActivity;->mWeiboShare:Lcom/miui/share/weibo/WeiboShare;

    invoke-virtual {v3, v1, p0}, Lcom/miui/share/weibo/WeiboShare;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/share/weibo/WeiboShareActivity;->share(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/miui/share/weibo/WeiboShareActivity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboShareActivity;->mWeiboShare:Lcom/miui/share/weibo/WeiboShare;

    invoke-virtual {v0, p1, p0}, Lcom/miui/share/weibo/WeiboShare;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    invoke-virtual {p0}, Lcom/miui/share/weibo/WeiboShareActivity;->finish()V

    return-void
.end method

.method public onResponse(Lcom/sina/weibo/sdk/api/share/BaseResponse;)V
    .locals 4

    const-string/jumbo v1, "MiuiShare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WeiboShare onResponse - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errCode:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, -0x2

    :goto_0
    const v1, 0x10003

    invoke-static {v1, v0}, Lcom/miui/share/ShareResultManager;->notifyShareResult(II)V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
