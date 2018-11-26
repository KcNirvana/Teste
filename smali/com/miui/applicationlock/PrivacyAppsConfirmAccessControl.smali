.class public Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;
.super Lcom/miui/applicationlock/ConfirmAccessControl;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;->mIconView:Landroid/widget/ImageView;

    const v1, 0x7f0202a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;->afV:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;->agO:Z

    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;->agJ:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    iget-boolean v1, p0, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;->agO:Z

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->ahd(Z)V

    const-string/jumbo v0, "numeric"

    iget-object v1, p0, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;->agU:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-boolean v1, p0, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;->agO:Z

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahL(Z)V

    :cond_0
    return-void
.end method
