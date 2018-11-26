.class final Lcom/miui/applicationlock/Q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/applicationlock/utils/n;


# instance fields
.field final synthetic ajw:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/Q;->ajw:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public agL(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public agM(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public agN()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/Q;->ajw:Lcom/miui/applicationlock/ConfirmAccessControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anS(Lcom/miui/applicationlock/ConfirmAccessControl;Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/Q;->ajw:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amV(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/Q;->ajw:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anu(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->afC(II)V

    return-void
.end method

.method public agO()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/Q;->ajw:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ani(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anI(Lcom/miui/applicationlock/ConfirmAccessControl;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/applicationlock/Q;->ajw:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->and(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/applicationlock/Q;->ajw:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->amU(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/miui/applicationlock/Q;->ajw:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0, v1, v2}, Lcom/miui/applicationlock/utils/m;->age(JLandroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/applicationlock/Q;->ajw:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v2, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anW(Lcom/miui/applicationlock/ConfirmAccessControl;J)V

    iget-object v0, p0, Lcom/miui/applicationlock/Q;->ajw:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amM(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aew()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "binding"

    :goto_0
    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajC(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "no_binding"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/Q;->ajw:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anc(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->agl(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/applicationlock/Q;->ajw:Lcom/miui/applicationlock/ConfirmAccessControl;

    sget-object v1, Lcom/miui/applicationlock/ConfirmAccessControl$Stage;->ahz:Lcom/miui/applicationlock/ConfirmAccessControl$Stage;

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->aoj(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/miui/applicationlock/ConfirmAccessControl$Stage;)V

    iget-object v0, p0, Lcom/miui/applicationlock/Q;->ajw:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agZ()V

    goto :goto_1
.end method
