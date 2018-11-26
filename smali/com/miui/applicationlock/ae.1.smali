.class final Lcom/miui/applicationlock/ae;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ajM:Lcom/miui/applicationlock/ConfirmAccessControl;

.field final synthetic ajN:I


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ae;->ajM:Lcom/miui/applicationlock/ConfirmAccessControl;

    iput p2, p0, Lcom/miui/applicationlock/ae;->ajN:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ae;->ajM:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amM(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/ae;->ajM:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amE(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aeH(Z)V

    const-string/jumbo v0, "cancel_dialog"

    iget v1, p0, Lcom/miui/applicationlock/ae;->ajN:I

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->agu(Ljava/lang/String;I)V

    const-string/jumbo v0, "cancel_notify_dialog"

    iget v1, p0, Lcom/miui/applicationlock/ae;->ajN:I

    invoke-static {p1, v0, v1}, Lcom/miui/applicationlock/utils/m;->agv(Landroid/content/DialogInterface;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ae;->ajM:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amM(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aep(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ae;->ajM:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amO(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "numeric"

    iget-object v1, p0, Lcom/miui/applicationlock/ae;->ajM:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, v1, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ae;->ajM:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anb(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
