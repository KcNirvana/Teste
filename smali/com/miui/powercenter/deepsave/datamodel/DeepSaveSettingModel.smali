.class public Lcom/miui/powercenter/deepsave/datamodel/DeepSaveSettingModel;
.super Lcom/miui/common/datamodel/BaseModel;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/datamodel/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V
    .locals 15

    invoke-super/range {p0 .. p4}, Lcom/miui/common/datamodel/BaseModel;->aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/miui/powercenter/a/k;->bcf()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v4

    const v1, 0x7f0a033d

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a033f

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const v1, 0x7f0a0340

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0342

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const v1, 0x7f0a0343

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0345

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const v1, 0x7f0a033e

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v1, 0x7f0a0341

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const v1, 0x7f0a0344

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const v1, 0x7f0a0185

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/Button;

    new-instance v1, Lcom/miui/powercenter/deepsave/datamodel/p;

    move-object v2, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/miui/powercenter/deepsave/datamodel/p;-><init>(Lcom/miui/powercenter/deepsave/datamodel/DeepSaveSettingModel;Landroid/widget/CheckBox;Lcom/miui/powercenter/a/h;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/miui/common/datamodel/z;)V

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcom/miui/powercenter/a/h;->bbI()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v4}, Lcom/miui/powercenter/a/h;->bbK()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v4}, Lcom/miui/powercenter/a/h;->bbQ()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f03011a

    return v0
.end method
