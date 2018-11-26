.class final Lcom/miui/applicationlock/ai;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ajS:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ai;->ajS:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/ai;->ajS:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ano(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/n;->dismiss()V

    iget-object v0, p0, Lcom/miui/applicationlock/ai;->ajS:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anj(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ai;->ajS:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amX(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ai;->ajS:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amZ(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0707fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
