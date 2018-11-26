.class final Lcom/miui/applicationlock/am;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ajY:Lcom/miui/applicationlock/ConfirmAccessControl;

.field final synthetic ajZ:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/am;->ajY:Lcom/miui/applicationlock/ConfirmAccessControl;

    iput-object p2, p0, Lcom/miui/applicationlock/am;->ajZ:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/applicationlock/am;->ajZ:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/am;->ajY:Lcom/miui/applicationlock/ConfirmAccessControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anz(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z

    iget-object v0, p0, Lcom/miui/applicationlock/am;->ajY:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, p0, Lcom/miui/applicationlock/am;->ajZ:Landroid/content/Intent;

    const v2, 0x46dd6

    invoke-virtual {v0, v1, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "ConfirmAccessControl"

    const-string/jumbo v1, "can not apply action"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
