.class public Lcom/miui/share/wechat/WechatShareDelegate;
.super Lcom/miui/share/ShareDelegate;
.source "WechatShareDelegate.java"


# static fields
.field private static final ADD_FAVORITE_ACTIVITY_NAME:Ljava/lang/String; = "com.tencent.mm.ui.tools.AddFavoriteUI"

.field private static final DEFAULT_ACTIVITY_NAME:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareImgUI"

.field private static final TIMELINE_ACTIVITY_NAME:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareToTimeLineUI"

.field private static sCurrentDelegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/share/wechat/WechatShareDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mWechatShare:Lcom/miui/share/wechat/WechatShare;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/share/wechat/WechatShareDelegate;->sCurrentDelegate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x10102

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/miui/share/ShareDelegate;-><init>(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    const v0, 0x10002

    goto :goto_0
.end method

.method private getWechatShareHelper()Lcom/miui/share/wechat/WechatShare;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mWechatShare:Lcom/miui/share/wechat/WechatShare;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mShareConfiguration:Landroid/os/Bundle;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mShareConfiguration:Landroid/os/Bundle;

    const-string/jumbo v3, "wechat_app_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/miui/share/wechat/WechatShare;

    iget-object v2, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/miui/share/wechat/WechatShare;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mWechatShare:Lcom/miui/share/wechat/WechatShare;

    :cond_2
    iget-object v1, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mWechatShare:Lcom/miui/share/wechat/WechatShare;

    goto :goto_0
.end method

.method public static setResult(Landroid/content/Intent;)Z
    .locals 1

    sget-object v0, Lcom/miui/share/wechat/WechatShareDelegate;->sCurrentDelegate:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/share/wechat/WechatShareDelegate;->sCurrentDelegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/share/wechat/WechatShareDelegate;->sCurrentDelegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/share/wechat/WechatShareDelegate;

    invoke-direct {v0, p0}, Lcom/miui/share/wechat/WechatShareDelegate;->setShareResult(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setShareResult(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mWechatShare:Lcom/miui/share/wechat/WechatShare;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mWechatShare:Lcom/miui/share/wechat/WechatShare;

    invoke-virtual {v0, p1}, Lcom/miui/share/wechat/WechatShare;->setResult(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 2

    iget-object v0, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mWechatShare:Lcom/miui/share/wechat/WechatShare;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/share/wechat/WechatShare;->clean()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mWechatShare:Lcom/miui/share/wechat/WechatShare;

    return-void
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string/jumbo v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget v2, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mShareFlag:I

    const v3, 0x10102

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/share/wechat/WechatShareDelegate;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    iget-object v4, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2, v3, v4}, Lcom/miui/share/ShareUtils;->getActivityIcon(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, v1}, Lcom/miui/share/ShareDelegate;->getIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.tencent.mm"

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 3

    iget v1, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mShareFlag:I

    const v2, 0x10102

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/share/R$string;->miuishare_wechat_timeline_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/miui/share/ShareDelegate;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1
.end method

.method public isShareAvailable(Landroid/content/Intent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/miui/share/wechat/WechatShareDelegate;->getWechatShareHelper()Lcom/miui/share/wechat/WechatShare;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/share/wechat/WechatShare;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public share(Landroid/content/Intent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/miui/share/wechat/WechatShareDelegate;->getWechatShareHelper()Lcom/miui/share/wechat/WechatShare;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/share/wechat/WechatShare;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mShareFlag:I

    invoke-static {v3}, Lcom/miui/share/ShareType;->getShareSubType(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/share/wechat/WechatShareDelegate;->sCurrentDelegate:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/miui/share/wechat/WechatShareDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/share/ShareUtils;->newShareIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/share/wechat/WechatShare;->shareIntent(Landroid/app/Activity;Landroid/content/Intent;Z)Z

    move-result v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
