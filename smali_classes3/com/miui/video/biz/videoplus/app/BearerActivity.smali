.class public Lcom/miui/video/biz/videoplus/app/BearerActivity;
.super Lcom/miui/video/base/widget/CoreFragmentActivity;
.source "BearerActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BearerActivity"

.field private static mFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;-><init>()V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 1

    sput-object p1, Lcom/miui/video/biz/videoplus/app/BearerActivity;->mFragment:Landroid/support/v4/app/Fragment;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/video/biz/videoplus/app/BearerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "BearerActivity"

    return-object v0
.end method

.method public initBase()V
    .locals 0

    return-void
.end method

.method public initFindViews()V
    .locals 0

    return-void
.end method

.method public initViewsEvent()V
    .locals 0

    return-void
.end method

.method public initViewsValue()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/miui/video/biz/videoplus/R$layout;->activity_videoplus_brarer:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/BearerActivity;->setContentView(I)V

    sget-object p1, Lcom/miui/video/biz/videoplus/app/BearerActivity;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/video/biz/videoplus/app/BearerActivity;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/BearerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_fragment_container:I

    sget-object v1, Lcom/miui/video/biz/videoplus/app/BearerActivity;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/video/biz/videoplus/app/BearerActivity;->mFragment:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    sget-object p1, Lcom/miui/video/biz/videoplus/app/BearerActivity;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/video/biz/videoplus/app/BearerActivity;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/BearerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_fragment_container:I

    sget-object v1, Lcom/miui/video/biz/videoplus/app/BearerActivity;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method
