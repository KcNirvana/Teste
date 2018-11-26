.class public Lcom/miui/securityscan/cards/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Bn:Ljava/util/ArrayList;

.field private static final Bo:Ljava/util/ArrayList;

.field private static Bp:Lcom/miui/securityscan/scanner/B;

.field private static final RESOURCE:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/securityscan/cards/c;->Bn:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/securityscan/cards/c;->Bo:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/securityscan/scanner/B;->getInstance()Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/cards/c;->Bp:Lcom/miui/securityscan/scanner/B;

    invoke-static {}, Lcom/miui/securitycenter/Application;->bsy()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ci(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    if-ltz v1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static Cj(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-lez v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    return-object p0
.end method

.method public static Ck()V
    .locals 1

    sget-object v0, Lcom/miui/securityscan/cards/c;->Bn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static Cl()V
    .locals 2

    sget-object v0, Lcom/miui/securityscan/cards/c;->Bn:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/common/card/models/ScanResultTopCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/ScanResultTopCardModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static Cm(Lcom/miui/securityscan/scanner/n;Z)Ljava/util/ArrayList;
    .locals 11

    sget-object v0, Lcom/miui/securityscan/cards/c;->Bo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/miui/securityscan/cards/c;->Bp:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FJ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v2}, Lcom/miui/securityscan/model/GroupModel;->getCurModel()Lcom/miui/securityscan/model/AbsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v1

    sget-object v3, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getIndex()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/securityscan/cards/c;->Bo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/securityscan/cards/c;->Bo:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07083e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pkg_icon://pl.zdunex25.updater"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07083b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pkg_icon://com.miui.cloudservice"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07083e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pkg_icon://com.xiaomi.market"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07083b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pkg_icon://com.android.mms"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070848

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drawable://2130837999"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_6
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070840

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drawable://2130838297"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncTopBannerCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncTopBannerCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_7
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07083b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drawable://2130837753"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncTopBannerCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncTopBannerCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_8
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07083c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drawable://2130838205"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncTopBannerCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncTopBannerCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_9
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07083d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drawable://2130838129"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncTopBannerCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncTopBannerCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_a
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07084a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f07084b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f070841

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v6, 0x7f07084c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Lcom/miui/common/card/models/CardModelMaker;->getListTitleCheckboxCardModel(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/GroupModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_b
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07084e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f07084f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f070842

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x7f0202c7

    const/4 v9, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Lcom/miui/common/card/models/CardModelMaker;->getListTitleCheckboxCardModel(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/GroupModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_c
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07083f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drawable://2130837961"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_d
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070844

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drawable://2130837961"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_e
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070843

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drawable://2130837961"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_f
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    check-cast v0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070846

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/miui/common/card/models/CardModelMaker;->getListTitleConsumePowerRankCardModel(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;Ljava/lang/String;)Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_10
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070840

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drawable://2130837967"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_11
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    check-cast v0, Lcom/miui/securityscan/model/manualitem/FlowRankModel;

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070847

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/miui/common/card/models/CardModelMaker;->getListTitleFlowRankCardModel(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/manualitem/FlowRankModel;Ljava/lang/String;)Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_12
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07083b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drawable://2130837997"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_13
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f0706e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drawable://2130837998"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_14
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f070849

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v3, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/common/card/models/CardModelMaker;->getFuncCloudSpaceCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncCloudSpaceCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_15
    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v3, 0x7f07082f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drawable://2130837966"

    new-instance v4, Lcom/miui/common/card/functions/OptimizeFunction;

    invoke-direct {v4, p0, v0}, Lcom/miui/common/card/functions/OptimizeFunction;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/common/card/models/CardModelMaker;->getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_16
    move-object v0, v1

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/securityscan/cards/c;->Bo:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_14
        :pswitch_b
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_12
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_11
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_e
        :pswitch_8
        :pswitch_15
        :pswitch_b
        :pswitch_9
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_4
    .end packed-switch
.end method

.method public static Cn(Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/cards/c;->Bn:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static Co(Lcom/miui/securityscan/scanner/n;Z)V
    .locals 2

    sget-object v0, Lcom/miui/securityscan/cards/c;->Bn:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/miui/securityscan/cards/c;->Cm(Lcom/miui/securityscan/scanner/n;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static Cp()V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/miui/securityscan/cards/c;->Bn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/miui/securityscan/cards/c;->Bn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/card/models/ScanResultTopCardModel;

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/cards/c;->Bn:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Lcom/miui/securityscan/cards/c;->Bn:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/securityscan/cards/c;->Cs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static Cq()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/securityscan/cards/c;->Bn:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/miui/securityscan/cards/c;->Cj(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static Cr(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10

    const/4 v3, -0x1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v3

    :goto_0
    if-ge v1, v4, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v6, v0, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v6, :cond_1

    if-ne v2, v3, :cond_0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_1

    :cond_1
    instance-of v6, v0, Lcom/miui/common/card/models/AdvInternationalCardModel;

    if-eqz v6, :cond_4

    check-cast v0, Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvInternationalCardModel;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvInternationalCardModel;->getPositionId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "CardResultHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "advFacebookCardModel is not loaded placeid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    invoke-static {v7, v6}, Lcom/miui/securityscan/cards/d;->Cw(ILjava/lang/String;)Lcom/miui/common/card/models/AdvInternationalCardModel;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/miui/common/card/models/AdvInternationalCardModel;->isLoaded()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v6}, Lcom/miui/common/card/models/AdvInternationalCardModel;->fillAd(Lcom/miui/common/card/models/AdvInternationalCardModel;)V

    move v0, v3

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "CardResultHelper"

    const-string/jumbo v6, "international ad hide"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "CardResultHelper"

    const-string/jumbo v2, "advFacebookCardModel is loaded"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_6
    return-object p0
.end method

.method public static Cs()Ljava/util/ArrayList;
    .locals 12

    const v11, 0x7f0c002f

    const/4 v9, 0x1

    const/4 v10, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->DG:Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/scanner/y;->Ff(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f070836

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v11, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0200b7

    invoke-virtual {v2, v5, v3, v4, v1}, Lcom/miui/common/card/models/CardModelMaker;->getSystemProtectionCardModel(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/miui/common/card/models/SystemProtectionCardModel;

    move-result-object v1

    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->DI:Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    invoke-virtual {v2, v3}, Lcom/miui/securityscan/scanner/y;->Ff(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;)Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v3

    sget-object v4, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f070837

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v11, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b4

    invoke-virtual {v3, v6, v4, v5, v2}, Lcom/miui/common/card/models/CardModelMaker;->getCleanupAccelerationCardModel(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/miui/common/card/models/CleanupAccelerationCardModel;

    move-result-object v2

    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v3

    sget-object v4, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->DH:Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    invoke-virtual {v3, v4}, Lcom/miui/securityscan/scanner/y;->Ff(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/miui/common/card/models/CardModelMaker;->getInstance()Lcom/miui/common/card/models/CardModelMaker;

    move-result-object v4

    sget-object v5, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    const v6, 0x7f070838

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/miui/securityscan/cards/c;->RESOURCE:Landroid/content/res/Resources;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v11, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0200ad

    invoke-virtual {v4, v7, v5, v6, v3}, Lcom/miui/common/card/models/CardModelMaker;->getSecurityProtectionCardModel(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/miui/common/card/models/SecurityProtectionCardModel;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static Ct(Lcom/miui/common/card/CardViewAdapter;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
