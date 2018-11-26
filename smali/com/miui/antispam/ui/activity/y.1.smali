.class final Lcom/miui/antispam/ui/activity/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Ul:Lcom/miui/antispam/ui/activity/x;

.field final synthetic Um:I

.field final synthetic Un:Z


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/x;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/y;->Ul:Lcom/miui/antispam/ui/activity/x;

    iput p2, p0, Lcom/miui/antispam/ui/activity/y;->Um:I

    iput-boolean p3, p0, Lcom/miui/antispam/ui/activity/y;->Un:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v6, 0x1

    const/4 v0, -0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/y;->Ul:Lcom/miui/antispam/ui/activity/x;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->Tj(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/y;->Ul:Lcom/miui/antispam/ui/activity/x;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->Ti(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v5

    :goto_0
    if-le v2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/y;->Ul:Lcom/miui/antispam/ui/activity/x;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/y;->Ul:Lcom/miui/antispam/ui/activity/x;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RS:Ljava/util/List;

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/y;->Ul:Lcom/miui/antispam/ui/activity/x;

    iget-object v3, v3, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v3, v3, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RV:Ljava/util/List;

    new-array v4, v5, [Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    iget v4, p0, Lcom/miui/antispam/ui/activity/y;->Um:I

    iget-boolean v7, p0, Lcom/miui/antispam/ui/activity/y;->Un:Z

    if-eqz v7, :cond_3

    :goto_1
    invoke-static/range {v0 .. v5}, Lcom/miui/antispam/util/h;->XN(Landroid/content/Context;[Ljava/lang/String;I[Ljava/lang/Integer;II)V

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/y;->Ul:Lcom/miui/antispam/ui/activity/x;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->finish()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/y;->Ul:Lcom/miui/antispam/ui/activity/x;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->Tj(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/y;->Ul:Lcom/miui/antispam/ui/activity/x;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->Ti(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_0
.end method
