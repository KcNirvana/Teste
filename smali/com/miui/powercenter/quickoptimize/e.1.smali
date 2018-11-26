.class public Lcom/miui/powercenter/quickoptimize/e;
.super Lcom/miui/common/expandableview/d;
.source ""


# static fields
.field private static HEADER_VIEW_TYPE:I

.field private static ITEM_VIEW_TYPE:I

.field private static aDk:I

.field private static aDl:I


# instance fields
.field private aDm:Ljava/util/List;

.field private aDn:Lcom/miui/common/d/f;

.field private aDo:Z

.field private mContext:Landroid/content/Context;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput v1, Lcom/miui/powercenter/quickoptimize/e;->aDk:I

    sput v0, Lcom/miui/powercenter/quickoptimize/e;->HEADER_VIEW_TYPE:I

    sput v1, Lcom/miui/powercenter/quickoptimize/e;->aDl:I

    sput v0, Lcom/miui/powercenter/quickoptimize/e;->ITEM_VIEW_TYPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/expandableview/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->aDm:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/e;->aDo:Z

    new-instance v0, Lcom/miui/powercenter/quickoptimize/x;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/quickoptimize/x;-><init>(Lcom/miui/powercenter/quickoptimize/e;)V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/powercenter/quickoptimize/y;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/quickoptimize/y;-><init>(Lcom/miui/powercenter/quickoptimize/e;)V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/e;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic aOB(Lcom/miui/powercenter/quickoptimize/e;)Lcom/miui/common/d/f;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->aDn:Lcom/miui/common/d/f;

    return-object v0
.end method

.method static synthetic aOC(Lcom/miui/powercenter/quickoptimize/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/e;->aDo:Z

    return v0
.end method

.method static synthetic aOD(Lcom/miui/powercenter/quickoptimize/e;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/quickoptimize/e;->aOz(Landroid/widget/CheckBox;)V

    return-void
.end method

.method private aOz(Landroid/widget/CheckBox;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/h;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/e;->aDm:Ljava/util/List;

    iget v2, v0, Lcom/miui/powercenter/quickoptimize/h;->aDv:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/quickoptimize/i;

    iget v0, v0, Lcom/miui/powercenter/quickoptimize/h;->position:I

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/quickoptimize/i;->getItem(I)Lcom/miui/powercenter/quickoptimize/v;

    move-result-object v0

    iget v1, v0, Lcom/miui/powercenter/quickoptimize/v;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/powercenter/quickoptimize/c;->aOy(Ljava/lang/Object;Z)V

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/v;->data:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/miui/powercenter/quickoptimize/v;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget-object v0, v0, Lcom/miui/powercenter/c/a;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/powercenter/quickoptimize/c;->aOy(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public aOA(Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/e;->aDn:Lcom/miui/common/d/f;

    return-void
.end method

.method public getCountForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->aDm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->aDm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/i;

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/i;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->aDm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->aDm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/i;

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/i;->getCount()I

    move-result v0

    if-lt p2, v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->aDm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/i;

    invoke-virtual {v0, p2}, Lcom/miui/powercenter/quickoptimize/i;->getItem(I)Lcom/miui/powercenter/quickoptimize/v;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v3, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->aDm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/i;

    invoke-virtual {v0, p2}, Lcom/miui/powercenter/quickoptimize/i;->getItem(I)Lcom/miui/powercenter/quickoptimize/v;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lcom/miui/powercenter/quickoptimize/e;->getItemViewType(II)I

    move-result v0

    sget v1, Lcom/miui/powercenter/quickoptimize/e;->ITEM_VIEW_TYPE:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->mContext:Landroid/content/Context;

    const v1, 0x7f030123

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/miui/powercenter/quickoptimize/g;

    invoke-direct {v1}, Lcom/miui/powercenter/quickoptimize/g;-><init>()V

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a00b0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/quickoptimize/g;->title:Landroid/widget/TextView;

    const v0, 0x7f0a034b

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/quickoptimize/g;->aDu:Landroid/widget/TextView;

    const v0, 0x7f0a00a6

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/miui/powercenter/quickoptimize/g;->aDs:Landroid/widget/CheckBox;

    const v0, 0x7f0a034d

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/miui/powercenter/quickoptimize/g;->aDq:Landroid/view/ViewGroup;

    const v0, 0x7f0a034a

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/miui/powercenter/quickoptimize/g;->aDr:Landroid/view/ViewGroup;

    iget-object v0, v1, Lcom/miui/powercenter/quickoptimize/g;->aDr:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a034c

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/quickoptimize/g;->aDt:Landroid/widget/TextView;

    const v0, 0x7f0a007e

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/powercenter/quickoptimize/g;->line:Landroid/view/View;

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/g;

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->title:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/miui/powercenter/quickoptimize/v;->aEH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/miui/powercenter/quickoptimize/h;

    invoke-direct {v3}, Lcom/miui/powercenter/quickoptimize/h;-><init>()V

    iput p1, v3, Lcom/miui/powercenter/quickoptimize/h;->aDv:I

    iput p2, v3, Lcom/miui/powercenter/quickoptimize/h;->position:I

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/e;->aDm:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/quickoptimize/i;

    invoke-virtual {v1}, Lcom/miui/powercenter/quickoptimize/i;->isFixed()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDt:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDs:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDs:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDs:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/miui/powercenter/quickoptimize/e;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/e;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/miui/powercenter/quickoptimize/u;->aQE(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/v;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/e;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v5}, Lcom/miui/powercenter/a/d;->bbf(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/miui/powercenter/quickoptimize/g;->aDu:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDu:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDr:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/powercenter/quickoptimize/e;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v2, Lcom/miui/powercenter/quickoptimize/v;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/powercenter/quickoptimize/c;->aOx(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDs:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    iget-object v1, v2, Lcom/miui/powercenter/quickoptimize/v;->data:Ljava/lang/Object;

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDq:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDr:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/miui/powercenter/quickoptimize/g;->aDr:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    iget-object v0, v0, Lcom/miui/powercenter/quickoptimize/g;->aDr:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v0

    invoke-virtual {v1, v2, v8, v0, v8}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    :goto_2
    return-object p3

    :cond_2
    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDu:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDs:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDt:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDs:Landroid/widget/CheckBox;

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDt:Landroid/widget/TextView;

    const v3, 0x7f07047b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDu:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->line:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDr:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/g;->aDq:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/e;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901f0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v3, v0, Lcom/miui/powercenter/quickoptimize/g;->aDr:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/miui/powercenter/quickoptimize/g;->aDr:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v4

    iget-object v5, v0, Lcom/miui/powercenter/quickoptimize/g;->aDr:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5, v1}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    new-instance v3, Lcom/miui/powercenter/quickoptimize/d;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/e;->mContext:Landroid/content/Context;

    invoke-direct {v3, v1}, Lcom/miui/powercenter/quickoptimize/d;-><init>(Landroid/content/Context;)V

    iget-object v1, v2, Lcom/miui/powercenter/quickoptimize/v;->data:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v3, v1}, Lcom/miui/powercenter/quickoptimize/d;->setData(Ljava/util/List;)V

    iget-object v0, v0, Lcom/miui/powercenter/quickoptimize/g;->aDq:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method

.method public getItemViewType(II)I
    .locals 1

    if-nez p1, :cond_0

    sget v0, Lcom/miui/powercenter/quickoptimize/e;->ITEM_VIEW_TYPE:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/miui/powercenter/quickoptimize/e;->aDl:I

    goto :goto_0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->aDm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/quickoptimize/e;->getSectionHeaderViewType(I)I

    move-result v0

    sget v1, Lcom/miui/powercenter/quickoptimize/e;->HEADER_VIEW_TYPE:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->mContext:Landroid/content/Context;

    const v1, 0x7f030127

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->mContext:Landroid/content/Context;

    const v1, 0x7f030122

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/powercenter/quickoptimize/f;

    invoke-direct {v1}, Lcom/miui/powercenter/quickoptimize/f;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a00f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/quickoptimize/f;->title:Landroid/widget/TextView;

    const v0, 0x7f0a0349

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/miui/powercenter/quickoptimize/f;->aDp:Landroid/view/ViewGroup;

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/f;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/e;->aDm:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/quickoptimize/i;

    iget-object v2, v0, Lcom/miui/powercenter/quickoptimize/f;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/powercenter/quickoptimize/i;->aOF()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/miui/powercenter/quickoptimize/f;->aDp:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getSectionHeaderViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    sget v0, Lcom/miui/powercenter/quickoptimize/e;->HEADER_VIEW_TYPE:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/miui/powercenter/quickoptimize/e;->aDk:I

    goto :goto_0
.end method

.method public getSectionHeaderViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setItemEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/quickoptimize/e;->aDo:Z

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->aDm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/e;->aDm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
