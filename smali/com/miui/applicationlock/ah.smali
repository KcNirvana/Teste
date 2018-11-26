.class final Lcom/miui/applicationlock/ah;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ajR:Lcom/miui/applicationlock/ConfirmAccessControl;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ah;->ajR:Lcom/miui/applicationlock/ConfirmAccessControl;

    iput-object p2, p0, Lcom/miui/applicationlock/ah;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/miui/applicationlock/ah;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ah;->ajR:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amN(Lcom/miui/applicationlock/ConfirmAccessControl;)Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ah;->ajR:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->anx(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ah;->ajR:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amN(Lcom/miui/applicationlock/ConfirmAccessControl;)Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
