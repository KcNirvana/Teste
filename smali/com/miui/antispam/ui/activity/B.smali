.class final Lcom/miui/antispam/ui/activity/B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Uq:Lcom/miui/antispam/ui/activity/c;

.field final synthetic Ur:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/c;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/B;->Uq:Lcom/miui/antispam/ui/activity/c;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/B;->Ur:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string/jumbo v0, "stranger_call_mode"

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/B;->Ur:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/B;->Uq:Lcom/miui/antispam/ui/activity/c;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/c;->Ts(Lcom/miui/antispam/ui/activity/c;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const-string/jumbo v0, "contact_call_mode"

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/B;->Uq:Lcom/miui/antispam/ui/activity/c;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/c;->Tu(Lcom/miui/antispam/ui/activity/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/B;->Uq:Lcom/miui/antispam/ui/activity/c;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/c;->Tv(Lcom/miui/antispam/ui/activity/c;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/B;->Ur:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/B;->Uq:Lcom/miui/antispam/ui/activity/c;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/c;->Tt(Lcom/miui/antispam/ui/activity/c;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "oversea_call_mode"

    goto :goto_0
.end method
