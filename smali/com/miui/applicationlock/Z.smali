.class final Lcom/miui/applicationlock/Z;
.super Landroid/os/CountDownTimer;
.source ""


# instance fields
.field final synthetic ajH:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/Z;->ajH:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/Z;->ajH:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anV(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/Z;->ajH:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0, v3}, Lcom/miui/applicationlock/ConfirmAccessControl;->anB(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z

    iget-object v0, p0, Lcom/miui/applicationlock/Z;->ajH:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agS()V

    iget-object v0, p0, Lcom/miui/applicationlock/Z;->ajH:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amJ(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/Z;->ajH:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amI(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/Z;->ajH:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anc(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/Z;->ajH:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anc(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0707c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/miui/applicationlock/Z;->ajH:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->ana(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/applicationlock/Z;->ajH:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->ana(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/Z;->ajH:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0040

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
