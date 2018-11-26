.class final Lcom/miui/applicationlock/U;
.super Landroid/os/CountDownTimer;
.source ""


# instance fields
.field final synthetic ajA:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/U;->ajA:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/U;->ajA:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amP(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/U;->ajA:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amP(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/U;->ajA:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07081f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/applicationlock/U;->ajA:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amP(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0xa5a5a6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/U;->ajA:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amP(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setClickable(Z)V

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/miui/applicationlock/U;->ajA:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amP(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/U;->ajA:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0048

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/applicationlock/U;->ajA:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amP(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0x4e4e4f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
