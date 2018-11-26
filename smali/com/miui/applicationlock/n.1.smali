.class Lcom/miui/applicationlock/n;
.super Lmiui/app/AlertDialog;
.source ""


# instance fields
.field final synthetic ahD:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/n;->ahD:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0, p2, p3}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lmiui/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/miui/applicationlock/n;->ahD:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->aoi(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    return-void
.end method

.method protected onStart()V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/miui/applicationlock/n;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/miui/applicationlock/n;->ahD:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/n;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/n;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/n;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
