.class public Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""


# instance fields
.field private cbArray:[Landroid/widget/CheckBox;

.field private ivCardIconDefaultSystemApp:Landroid/widget/ImageView;

.field private ivRightOfTitle:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

.field private titleArray:[Landroid/widget/TextView;

.field private tvButtonLocal:Landroid/widget/Button;

.field private viewArray:[Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)[Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-direct {p0, p2}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const v0, 0x7f0a0142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0144

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->ivRightOfTitle:Landroid/widget/ImageView;

    const v1, 0x7f0a0143

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->ivCardIconDefaultSystemApp:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->titleArray:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v3, v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f03005f

    invoke-static {v1, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    :goto_1
    const v1, 0x7f0a00c4

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a014c

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->titleArray:[Landroid/widget/TextView;

    aput-object v1, v5, v3

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    aput-object v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f03005e

    invoke-static {v1, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f03004b

    invoke-static {v1, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0a0125

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->tvButtonLocal:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private updateTvButtonText(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->tvButtonLocal:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const v2, 0x7f0c004b

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->tvButtonLocal:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get1(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object v0, p2

    check-cast v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->tvButtonLocal:Landroid/widget/Button;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get1(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get5(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->ivRightOfTitle:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get5(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get6(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->ivCardIconDefaultSystemApp:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->ivCardIconDefaultSystemApp:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_2
    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    array-length v1, v1

    if-ge v3, v1, :cond_3

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->titleArray:[Landroid/widget/TextView;

    aget-object v4, v1, v3

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    aget-object v4, v1, v3

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->isChecked()Z

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->updateTvButtonText(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)V

    move v3, v2

    :goto_3
    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    array-length v1, v1

    if-ge v3, v1, :cond_4

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/AbsModel;

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    aget-object v4, v4, v3

    new-instance v5, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$1;

    invoke-direct {v5, p0, v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$1;-><init>(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    array-length v1, v1

    if-ge v2, v1, :cond_5

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    aget-object v3, v1, v2

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/AbsModel;

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    aget-object v4, v4, v2

    new-instance v5, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$2;

    invoke-direct {v5, p0, v3, v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$2;-><init>(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;Landroid/widget/CheckBox;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    aget-object v3, v3, v2

    new-instance v4, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$3;

    invoke-direct {v4, p0, v1, p2}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$3;-><init>(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;Lcom/miui/securityscan/model/AbsModel;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->tvButtonLocal:Landroid/widget/Button;

    new-instance v2, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;

    invoke-direct {v2, p0, v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;-><init>(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
