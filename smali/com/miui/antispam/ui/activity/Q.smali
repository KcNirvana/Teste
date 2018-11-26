.class final Lcom/miui/antispam/ui/activity/Q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic UX:Lcom/miui/antispam/ui/activity/j;

.field final synthetic UY:Ljava/lang/String;

.field final synthetic UZ:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/j;Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/Q;->UX:Lcom/miui/antispam/ui/activity/j;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/Q;->UY:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/antispam/ui/activity/Q;->UZ:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Q;->UX:Lcom/miui/antispam/ui/activity/j;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/j;->Ug(Lcom/miui/antispam/ui/activity/j;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Q;->UY:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/Q;->UX:Lcom/miui/antispam/ui/activity/j;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/j;->Um(Lcom/miui/antispam/ui/activity/j;)I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Q;->UZ:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Q;->UX:Lcom/miui/antispam/ui/activity/j;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/j;->Ul(Lcom/miui/antispam/ui/activity/j;)Lcom/miui/antispam/ui/view/LabelPreference;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Q;->UX:Lcom/miui/antispam/ui/activity/j;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/j;->Ul(Lcom/miui/antispam/ui/activity/j;)Lcom/miui/antispam/ui/view/LabelPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Q;->UX:Lcom/miui/antispam/ui/activity/j;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/j;->Uh(Lcom/miui/antispam/ui/activity/j;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Q;->UX:Lcom/miui/antispam/ui/activity/j;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/j;->Uk(Lcom/miui/antispam/ui/activity/j;)Lcom/miui/antispam/ui/view/LabelPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Q;->UX:Lcom/miui/antispam/ui/activity/j;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/j;->Uh(Lcom/miui/antispam/ui/activity/j;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0
.end method
