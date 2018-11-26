.class final Lcom/miui/powercenter/deepsave/datamodel/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aNe:Lcom/miui/powercenter/deepsave/datamodel/DeepSaveSettingModel;

.field final synthetic aNf:Landroid/widget/CheckBox;

.field final synthetic aNg:Lcom/miui/powercenter/a/h;

.field final synthetic aNh:Landroid/widget/CheckBox;

.field final synthetic aNi:Landroid/widget/CheckBox;

.field final synthetic aNj:Lcom/miui/common/datamodel/z;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/deepsave/datamodel/DeepSaveSettingModel;Landroid/widget/CheckBox;Lcom/miui/powercenter/a/h;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/miui/common/datamodel/z;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/datamodel/p;->aNe:Lcom/miui/powercenter/deepsave/datamodel/DeepSaveSettingModel;

    iput-object p2, p0, Lcom/miui/powercenter/deepsave/datamodel/p;->aNf:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/miui/powercenter/deepsave/datamodel/p;->aNg:Lcom/miui/powercenter/a/h;

    iput-object p4, p0, Lcom/miui/powercenter/deepsave/datamodel/p;->aNh:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/miui/powercenter/deepsave/datamodel/p;->aNi:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/miui/powercenter/deepsave/datamodel/p;->aNj:Lcom/miui/common/datamodel/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/p;->aNf:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/p;->aNg:Lcom/miui/powercenter/a/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/a/h;->bbz(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/p;->aNh:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/p;->aNg:Lcom/miui/powercenter/a/h;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/a/h;->bbB(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/p;->aNi:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/p;->aNg:Lcom/miui/powercenter/a/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/a/h;->bbG(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/p;->aNj:Lcom/miui/common/datamodel/z;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/common/datamodel/z;->aKp(I)V

    return-void
.end method
