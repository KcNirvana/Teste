.class final Lcom/miui/antispam/ui/activity/D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic Ut:Lcom/miui/antispam/ui/activity/c;

.field final synthetic Uu:Z

.field final synthetic Uv:I

.field final synthetic val$imsi:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/c;Ljava/lang/String;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/D;->Ut:Lcom/miui/antispam/ui/activity/c;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/D;->val$imsi:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/antispam/ui/activity/D;->Uu:Z

    iput p4, p0, Lcom/miui/antispam/ui/activity/D;->Uv:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/D;->Ut:Lcom/miui/antispam/ui/activity/c;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/c;->Tu(Lcom/miui/antispam/ui/activity/c;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/miui/antispam/ui/activity/BackSoundActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "sim_id"

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/D;->val$imsi:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "sim_slot"

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/D;->Uu:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/antispam/ui/activity/D;->Uv:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/D;->Ut:Lcom/miui/antispam/ui/activity/c;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/activity/c;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
