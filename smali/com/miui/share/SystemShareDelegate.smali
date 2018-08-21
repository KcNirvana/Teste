.class Lcom/miui/share/SystemShareDelegate;
.super Lcom/miui/share/ShareDelegate;
.source "SystemShareDelegate.java"


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/miui/share/ShareDelegate;-><init>(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    return-void
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/miui/share/SystemShareDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/share/R$drawable;->more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/miui/share/SystemShareDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/share/R$string;->miuishare_title_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShareAvailable(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public share(Landroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/share/SystemShareDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/miui/share/ShareUtils;->startSystemShare(Landroid/app/Activity;Landroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/miui/share/ShareResultManager;->notifyShareResult(II)V

    const/4 v0, 0x1

    return v0
.end method
