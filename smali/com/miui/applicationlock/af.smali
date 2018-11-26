.class final Lcom/miui/applicationlock/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ajO:Lcom/miui/applicationlock/ConfirmAccessControl;

.field final synthetic ajP:I


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/af;->ajO:Lcom/miui/applicationlock/ConfirmAccessControl;

    iput p2, p0, Lcom/miui/applicationlock/af;->ajP:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "one_key_lock_dialog"

    iget v1, p0, Lcom/miui/applicationlock/af;->ajP:I

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->agu(Ljava/lang/String;I)V

    const-string/jumbo v0, "one_key_lock_notify_dialog"

    iget v1, p0, Lcom/miui/applicationlock/af;->ajP:I

    invoke-static {p1, v0, v1}, Lcom/miui/applicationlock/utils/m;->agv(Landroid/content/DialogInterface;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/af;->ajO:Lcom/miui/applicationlock/ConfirmAccessControl;

    const-class v2, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "HappyCodingMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "checkAccess_to_uncheck"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/af;->ajO:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amJ(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/miui/applicationlock/af;->ajO:Lcom/miui/applicationlock/ConfirmAccessControl;

    const/16 v2, 0x7148

    invoke-virtual {v1, v0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/miui/applicationlock/af;->ajO:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0, v3}, Lcom/miui/applicationlock/ConfirmAccessControl;->anw(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z

    return-void
.end method
