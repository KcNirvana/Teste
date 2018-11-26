.class public Lcom/miui/common/card/models/ListTitleCheckboxCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source ""


# instance fields
.field private amoListener:Lcom/miui/securityscan/scanner/n;

.field private btnText:Ljava/lang/String;

.field private dangerModelList:Ljava/util/List;

.field private group:Lcom/miui/securityscan/model/GroupModel;

.field private groupToast:Ljava/lang/String;

.field private needRefreshManualItem:Z

.field private resId:I

.field private showRightIcon:Z


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/n;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->amoListener:Lcom/miui/securityscan/scanner/n;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->btnText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->groupToast:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->needRefreshManualItem:Z

    return v0
.end method

.method static synthetic -get5(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->resId:I

    return v0
.end method

.method static synthetic -get6(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->showRightIcon:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;[Landroid/widget/CheckBox;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->isAllChecked([Landroid/widget/CheckBox;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;[Landroid/widget/CheckBox;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->isChecked([Landroid/widget/CheckBox;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/GroupModel;)V
    .locals 5

    const/4 v4, 0x1

    const v0, 0x7f03005a

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    iput-object p2, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->group:Lcom/miui/securityscan/model/GroupModel;

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->amoListener:Lcom/miui/securityscan/scanner/n;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->group:Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v4}, Lcom/miui/securityscan/model/AbsModel;->setChecked(Z)V

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->noConvertView:Z

    return-void
.end method

.method private isAllChecked([Landroid/widget/CheckBox;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    array-length v0, p1

    if-ne v2, v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method private isChecked([Landroid/widget/CheckBox;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;-><init>(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;Landroid/view/View;)V

    return-object v0
.end method

.method public getBtnText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->btnText:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Lcom/miui/securityscan/model/GroupModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->group:Lcom/miui/securityscan/model/GroupModel;

    return-object v0
.end method

.method public getGroupToast()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->groupToast:Ljava/lang/String;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->resId:I

    return v0
.end method

.method public getScore()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public ignoreAbsModel(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->group:Lcom/miui/securityscan/model/GroupModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->group:Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isNeedRefreshManualItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->needRefreshManualItem:Z

    return v0
.end method

.method public isSafe()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowRightIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->showRightIcon:Z

    return v0
.end method

.method public setBtnText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->btnText:Ljava/lang/String;

    return-void
.end method

.method public setGroupToast(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->groupToast:Ljava/lang/String;

    return-void
.end method

.method public setNeedRefreshManualItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->needRefreshManualItem:Z

    return-void
.end method

.method public setResId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->resId:I

    return-void
.end method

.method public setShowRightIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->showRightIcon:Z

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
