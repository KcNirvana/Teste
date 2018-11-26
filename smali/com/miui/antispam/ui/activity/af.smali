.class final Lcom/miui/antispam/ui/activity/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Vy:Lcom/miui/antispam/ui/activity/n;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/n;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/af;->Vy:Lcom/miui/antispam/ui/activity/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.TURN_ON_SMART_ANTISPAM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/af;->Vy:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/n;->UU(Lcom/miui/antispam/ui/activity/n;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
