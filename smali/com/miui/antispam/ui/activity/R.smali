.class final Lcom/miui/antispam/ui/activity/R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Va:Lcom/miui/antispam/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/R;->Va:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/R;->Va:Lcom/miui/antispam/ui/activity/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/R;->Va:Lcom/miui/antispam/ui/activity/MainActivity;

    const-class v3, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v0, "settings"

    invoke-static {v0}, Lcom/miui/antispam/a/a;->Yr(Ljava/lang/String;)V

    return-void
.end method
