.class Lcom/miui/antispam/ui/activity/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public Tk:Ljava/util/List;

.field final synthetic Tl:Lcom/miui/antispam/ui/activity/k;


# direct methods
.method protected constructor <init>(Lcom/miui/antispam/ui/activity/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/l;->Tl:Lcom/miui/antispam/ui/activity/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public UE(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/l;->Tk:Ljava/util/List;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/l;->Tl:Lcom/miui/antispam/ui/activity/k;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/k;->SX:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/l;->Tl:Lcom/miui/antispam/ui/activity/k;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/k;->SY:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/l;->Tl:Lcom/miui/antispam/ui/activity/k;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/l;->Tk:Ljava/util/List;

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/l;->Tl:Lcom/miui/antispam/ui/activity/k;

    iget v4, v4, Lcom/miui/antispam/ui/activity/k;->SZ:I

    iget-object v6, p0, Lcom/miui/antispam/ui/activity/l;->Tl:Lcom/miui/antispam/ui/activity/k;

    iget-boolean v6, v6, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v6, :cond_0

    move v5, v3

    :cond_0
    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/antispam/util/h;->XN(Landroid/content/Context;[Ljava/lang/String;I[Ljava/lang/Integer;II)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/l;->Tl:Lcom/miui/antispam/ui/activity/k;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/k;->SX:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/l;->Tl:Lcom/miui/antispam/ui/activity/k;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/k;->SY:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    return-void
.end method
