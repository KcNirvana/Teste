.class final Lcom/miui/antispam/ui/activity/ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic Vu:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/ab;->Vu:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/ab;->Vu:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/ab;->Vu:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UR(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Z

    move-result v0

    :cond_0
    invoke-static {v1, v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UQ(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;Z)Z

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/ab;->Vu:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UP(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;->Wt()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/ab;->Vu:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UF(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
