.class final Lcom/miui/antispam/ui/activity/W;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Vk:Lcom/miui/antispam/ui/activity/k;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-nez p2, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    const-class v2, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "is_black"

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    iget-boolean v2, v2, Lcom/miui/antispam/ui/activity/k;->SU:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RF:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->SIM_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    iget v2, v2, Lcom/miui/antispam/ui/activity/k;->SZ:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/ui/activity/k;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v4, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    const-class v2, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "is_black"

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    iget-boolean v2, v2, Lcom/miui/antispam/ui/activity/k;->SU:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RF:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->SIM_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    iget v2, v2, Lcom/miui/antispam/ui/activity/k;->SZ:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/ui/activity/k;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/k;->UB()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    const-class v2, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "is_black"

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    iget-boolean v2, v2, Lcom/miui/antispam/ui/activity/k;->SU:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->SIM_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    iget v2, v2, Lcom/miui/antispam/ui/activity/k;->SZ:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/W;->Vk:Lcom/miui/antispam/ui/activity/k;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/ui/activity/k;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
