.class final Lcom/miui/antispam/ui/activity/O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic UV:Lcom/miui/antispam/ui/activity/i;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/O;->UV:Lcom/miui/antispam/ui/activity/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    if-nez p2, :cond_1

    invoke-static {}, Lcom/miui/antispam/ui/activity/i;->-get1()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/O;->UV:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/i;->TZ(Lcom/miui/antispam/ui/activity/i;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/O;->UV:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/i;->TZ(Lcom/miui/antispam/ui/activity/i;)I

    move-result v2

    invoke-static {v1, v2}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    const-string/jumbo v2, "com.android.phone.extra.slot"

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/O;->UV:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v3}, Lcom/miui/antispam/ui/activity/i;->TZ(Lcom/miui/antispam/ui/activity/i;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/O;->UV:Lcom/miui/antispam/ui/activity/i;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/activity/i;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/antispam/ui/activity/i;->-get0()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
