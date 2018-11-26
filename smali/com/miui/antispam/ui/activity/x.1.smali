.class final Lcom/miui/antispam/ui/activity/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

.field final synthetic Uj:Z

.field final synthetic Uk:I


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iput-boolean p2, p0, Lcom/miui/antispam/ui/activity/x;->Uj:Z

    iput p3, p0, Lcom/miui/antispam/ui/activity/x;->Uk:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RV:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RR:Lcom/miui/antispam/ui/a/f;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/f;->VR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RR:Lcom/miui/antispam/ui/a/f;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/f;->VS:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v2, v0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RV:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RR:Lcom/miui/antispam/ui/a/f;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/f;->VR:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/g;

    iget v0, v0, Lcom/miui/antispam/ui/a/g;->VZ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v2, v0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RS:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RR:Lcom/miui/antispam/ui/a/f;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/f;->VR:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/g;->Wa:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->Tj(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->Ti(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RT:Landroid/app/AlertDialog;

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/x;->Uj:Z

    if-eqz v0, :cond_3

    const v0, 0x7f070044

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/x;->Uj:Z

    if-eqz v0, :cond_4

    const v0, 0x7f070041

    :goto_2
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->Tk(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/miui/antispam/ui/activity/y;

    iget v3, p0, Lcom/miui/antispam/ui/activity/x;->Uk:I

    iget-boolean v4, p0, Lcom/miui/antispam/ui/activity/x;->Uj:Z

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/antispam/ui/activity/y;-><init>(Lcom/miui/antispam/ui/activity/x;IZ)V

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RT:Landroid/app/AlertDialog;

    :cond_2
    :goto_3
    return-void

    :cond_3
    const v0, 0x7f070043

    goto :goto_1

    :cond_4
    const v0, 0x7f070042

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/x;->Ui:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RT:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_3
.end method
