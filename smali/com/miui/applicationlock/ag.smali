.class final Lcom/miui/applicationlock/ag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic ajQ:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ag;->ajQ:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ag;->ajQ:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amD(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ag;->ajQ:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, p0, Lcom/miui/applicationlock/ag;->ajQ:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-boolean v1, v1, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->aod(Lcom/miui/applicationlock/ConfirmAccessControl;Z)V

    :cond_0
    return-void
.end method
