.class public abstract Lcom/miui/share/ShareDelegate;
.super Ljava/lang/Object;
.source "ShareDelegate.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mShareConfiguration:Landroid/os/Bundle;

.field protected mShareFlag:I


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/share/ShareDelegate;->mShareFlag:I

    iput-object p2, p0, Lcom/miui/share/ShareDelegate;->mShareConfiguration:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public abstract clean()V
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/miui/share/ShareDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/share/ShareDelegate;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/share/ShareUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPackageName()Ljava/lang/String;
.end method

.method public getShareFlag()I
    .locals 1

    iget v0, p0, Lcom/miui/share/ShareDelegate;->mShareFlag:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/miui/share/ShareDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/share/ShareDelegate;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/share/ShareUtils;->getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isShareAvailable(Landroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/share/ShareDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/share/ShareDelegate;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/share/ShareUtils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/share/ShareDelegate;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public abstract share(Landroid/content/Intent;)Z
.end method
