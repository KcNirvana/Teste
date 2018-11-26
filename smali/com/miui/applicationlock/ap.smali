.class final Lcom/miui/applicationlock/ap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic akc:Lcom/miui/applicationlock/ChooseAccessControl;

.field final synthetic akd:Z


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ChooseAccessControl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ap;->akc:Lcom/miui/applicationlock/ChooseAccessControl;

    iput-boolean p2, p0, Lcom/miui/applicationlock/ap;->akd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/ap;->akc:Lcom/miui/applicationlock/ChooseAccessControl;

    const-class v2, Lcom/miui/applicationlock/ChooseLockTypeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "forgot_password_reset"

    iget-boolean v2, p0, Lcom/miui/applicationlock/ap;->akd:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/ap;->akc:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ChooseAccessControl;->aow(Lcom/miui/applicationlock/ChooseAccessControl;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "ModifyPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/miui/applicationlock/ap;->akc:Lcom/miui/applicationlock/ChooseAccessControl;

    const v2, 0xf98a9

    invoke-virtual {v1, v0, v2}, Lcom/miui/applicationlock/ChooseAccessControl;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "forbide"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
