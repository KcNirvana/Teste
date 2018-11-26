.class final Lcom/miui/antispam/ui/activity/ag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic VA:Landroid/widget/EditText;

.field final synthetic VB:Landroid/preference/Preference;

.field final synthetic Vz:Lcom/miui/antispam/ui/activity/n;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/n;Landroid/widget/EditText;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/ag;->VA:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/miui/antispam/ui/activity/ag;->VB:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/ag;->VA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/ag;->VB:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/n;->UW(Lcom/miui/antispam/ui/activity/n;)Lcom/miui/antispam/ui/view/LabelPreference;

    move-result-object v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/n;->UU(Lcom/miui/antispam/ui/activity/n;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/n;->UZ(Lcom/miui/antispam/ui/activity/n;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/miui/antispam/db/a;->Zi(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/n;->Va(Lcom/miui/antispam/ui/activity/n;)V

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/ag;->VB:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/n;->UV(Lcom/miui/antispam/ui/activity/n;)Lcom/miui/antispam/ui/view/LabelPreference;

    move-result-object v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/n;->UU(Lcom/miui/antispam/ui/activity/n;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/n;->UZ(Lcom/miui/antispam/ui/activity/n;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/miui/antispam/db/a;->Zj(Landroid/content/Context;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/ag;->VB:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/n;->UY(Lcom/miui/antispam/ui/activity/n;)Lcom/miui/antispam/ui/view/LabelPreference;

    move-result-object v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/n;->UU(Lcom/miui/antispam/ui/activity/n;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/n;->UZ(Lcom/miui/antispam/ui/activity/n;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/miui/antispam/db/a;->Zk(Landroid/content/Context;II)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/ag;->VB:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/n;->UX(Lcom/miui/antispam/ui/activity/n;)Lcom/miui/antispam/ui/view/LabelPreference;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/n;->UU(Lcom/miui/antispam/ui/activity/n;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/ag;->Vz:Lcom/miui/antispam/ui/activity/n;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/n;->UZ(Lcom/miui/antispam/ui/activity/n;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/miui/antispam/db/a;->Zl(Landroid/content/Context;II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
