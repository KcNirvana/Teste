.class public Lcom/miui/video/service/share/ShareFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ShareFragment.java"


# instance fields
.field private callbackManager:Lcom/facebook/CallbackManager;

.field private listener:Lcom/miui/video/service/share/ShareListener;

.field private mShareView:Lcom/miui/video/service/share/ShareView;

.field private mSystemUiVisibility:I

.field private mTmpParentView:Landroid/widget/RelativeLayout;

.field private shareDialog:Lcom/facebook/share/widget/ShareDialog;

.field private uiOptions:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/16 v0, 0x1706

    iput v0, p0, Lcom/miui/video/service/share/ShareFragment;->uiOptions:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/service/share/ShareFragment;->mSystemUiVisibility:I

    return-void
.end method

.method public static getInstance(Lcom/miui/video/service/share/data/ShareInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/service/share/ShareFragment;
    .locals 4

    new-instance v0, Lcom/miui/video/service/share/ShareFragment;

    invoke-direct {v0}, Lcom/miui/video/service/share/ShareFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    invoke-virtual {p0}, Lcom/miui/video/service/share/data/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "string"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bitmapUrl"

    invoke-virtual {p0}, Lcom/miui/video/service/share/data/ShareInfo;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bitmap"

    invoke-virtual {p0}, Lcom/miui/video/service/share/data/ShareInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "facebookTitle"

    invoke-virtual {p0}, Lcom/miui/video/service/share/data/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "facebookSubtitle"

    invoke-virtual {p0}, Lcom/miui/video/service/share/data/ShareInfo;->getSubTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "from"

    invoke-virtual {p0}, Lcom/miui/video/service/share/data/ShareInfo;->getFrom()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "videoId"

    invoke-virtual {p0}, Lcom/miui/video/service/share/data/ShareInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "playlistId"

    invoke-virtual {p0}, Lcom/miui/video/service/share/data/ShareInfo;->getPlaylistId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/ShareFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/ShareFragment;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/miui/video/service/share/ShareFragment;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/service/share/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/service/share/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iput p1, p0, Lcom/miui/video/service/share/ShareFragment;->mSystemUiVisibility:I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "343281029561828"

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setApplicationId(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    :cond_0
    new-instance p1, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p1, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object p1, p0, Lcom/miui/video/service/share/ShareFragment;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/service/share/ShareFragment;->callbackManager:Lcom/facebook/CallbackManager;

    iget-object p1, p0, Lcom/miui/video/service/share/ShareFragment;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    iget-object v0, p0, Lcom/miui/video/service/share/ShareFragment;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v1, Lcom/miui/video/service/share/ShareFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/video/service/share/ShareFragment$1;-><init>(Lcom/miui/video/service/share/ShareFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    const-string p1, ""

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {p0}, Lcom/miui/video/service/share/ShareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string p1, "type"

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "videoId"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "playlistId"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    move-object v7, p1

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    iget-object p1, p0, Lcom/miui/video/service/share/ShareFragment;->mShareView:Lcom/miui/video/service/share/ShareView;

    if-nez p1, :cond_2

    new-instance p1, Lcom/miui/video/service/share/ShareView;

    invoke-virtual {p0}, Lcom/miui/video/service/share/ShareFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/video/service/share/ShareView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/service/share/ShareFragment;->mShareView:Lcom/miui/video/service/share/ShareView;

    iget-object v5, p0, Lcom/miui/video/service/share/ShareFragment;->mShareView:Lcom/miui/video/service/share/ShareView;

    move-object v6, p0

    invoke-virtual/range {v5 .. v12}, Lcom/miui/video/service/share/ShareView;->setContentToShare(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/service/share/ShareFragment;->mTmpParentView:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/service/share/ShareFragment;->mTmpParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_3
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/miui/video/service/share/ShareFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/service/share/ShareFragment;->mTmpParentView:Landroid/widget/RelativeLayout;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/miui/video/service/share/ShareFragment;->mTmpParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/video/service/share/ShareFragment;->mTmpParentView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/video/service/share/ShareFragment;->mShareView:Lcom/miui/video/service/share/ShareView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/video/service/share/ShareFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/service/share/ShareFragment;->mTmpParentView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/video/service/share/ShareFragment$2;

    invoke-direct {v2, p0}, Lcom/miui/video/service/share/ShareFragment$2;-><init>(Lcom/miui/video/service/share/ShareFragment;)V

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/video/service/share/CommonDialog;->initBottomDialog(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/miui/video/service/share/ShareFragment;->listener:Lcom/miui/video/service/share/ShareListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/share/ShareFragment;->listener:Lcom/miui/video/service/share/ShareListener;

    invoke-interface {p1}, Lcom/miui/video/service/share/ShareListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public showDialog(Landroid/support/v4/app/FragmentManager;Lcom/miui/video/service/share/ShareFragment;Lcom/miui/video/service/share/ShareListener;)V
    .locals 0

    iput-object p3, p0, Lcom/miui/video/service/share/ShareFragment;->listener:Lcom/miui/video/service/share/ShareListener;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/service/share/ShareFragment;->showDialog(Landroid/support/v4/app/FragmentManager;Lcom/miui/video/service/share/ShareFragment;Z)V

    return-void
.end method

.method public showDialog(Landroid/support/v4/app/FragmentManager;Lcom/miui/video/service/share/ShareFragment;Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p3

    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const-string p1, "dialog"

    invoke-virtual {p2, p3, p1}, Lcom/miui/video/service/share/ShareFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
