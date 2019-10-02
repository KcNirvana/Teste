.class public Lcom/miui/video/common/feed/ui/UITagListView;
.super Landroid/view/ViewGroup;
.source "UITagListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;,
        Lcom/miui/video/common/feed/ui/UITagListView$AdapterDataSetObserver;
    }
.end annotation


# instance fields
.field private eventClick:Landroid/view/View$OnClickListener;

.field private mAdapter:Landroid/widget/Adapter;

.field private mDataSetObserver:Lcom/miui/video/common/feed/ui/UITagListView$AdapterDataSetObserver;

.field private mItemClickListener:Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;

.field private mLineSpacing:I

.field private mTagSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/video/common/feed/ui/UITagListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/common/feed/ui/UITagListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Lcom/miui/video/common/feed/ui/UITagListView$1;

    invoke-direct {p3, p0}, Lcom/miui/video/common/feed/ui/UITagListView$1;-><init>(Lcom/miui/video/common/feed/ui/UITagListView;)V

    iput-object p3, p0, Lcom/miui/video/common/feed/ui/UITagListView;->eventClick:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_0

    sget-object p3, Lcom/miui/video/common/feed/R$styleable;->UITabListView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/video/common/feed/R$styleable;->UITabListView_uiTabSpacing:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mTagSpacing:I

    sget p2, Lcom/miui/video/common/feed/R$styleable;->UITabListView_uiLineSpacing:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mLineSpacing:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/common/feed/ui/UITagListView;)Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mItemClickListener:Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/common/feed/ui/UITagListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/feed/ui/UITagListView;->resetData()V

    return-void
.end method

.method private resetData()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UITagListView;->removeAllViews()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mAdapter:Landroid/widget/Adapter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/miui/video/common/feed/R$string;->tag_index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget v2, Lcom/miui/video/common/feed/R$string;->tag_object:I

    iget-object v3, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/UITagListView;->eventClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/miui/video/common/feed/ui/UITagListView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UITagListView;->getPaddingStart()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UITagListView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UITagListView;->getPaddingEnd()I

    move-result p3

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UITagListView;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutLTR(Landroid/content/Context;)Z

    move-result p5

    const/4 v0, 0x0

    move v1, p1

    move v2, p2

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UITagListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UITagListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int v6, v1, v4

    add-int/2addr v6, p3

    if-le v6, p4, :cond_1

    iget v1, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mLineSpacing:I

    add-int/2addr v1, p2

    add-int/2addr v2, v1

    move v1, p1

    move p2, v5

    :cond_1
    if-eqz p5, :cond_2

    add-int v6, v1, v4

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v6, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    sub-int v6, p4, v4

    sub-int/2addr v6, v1

    sub-int v7, p4, v1

    add-int/2addr v5, v2

    invoke-virtual {v3, v6, v2, v7, v5}, Landroid/view/View;->layout(IIII)V

    :goto_1
    iget v3, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mTagSpacing:I

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    invoke-static {v3, v1}, Lcom/miui/video/common/feed/ui/UITagListView;->resolveSize(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/common/feed/ui/UITagListView;->getPaddingStart()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/common/feed/ui/UITagListView;->getPaddingEnd()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/common/feed/ui/UITagListView;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/common/feed/ui/UITagListView;->getPaddingBottom()I

    move-result v8

    move v11, v5

    move v12, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/common/feed/ui/UITagListView;->getChildCount()I

    move-result v13

    if-ge v9, v13, :cond_1

    invoke-virtual {v0, v9}, Lcom/miui/video/common/feed/ui/UITagListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    add-int v15, v5, v6

    iget v3, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v15, v3}, Lcom/miui/video/common/feed/ui/UITagListView;->getChildMeasureSpec(III)I

    move-result v3

    add-int v15, v7, v8

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v15, v14}, Lcom/miui/video/common/feed/ui/UITagListView;->getChildMeasureSpec(III)I

    move-result v14

    invoke-virtual {v13, v3, v14}, Landroid/view/View;->measure(II)V

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int v14, v11, v13

    add-int/2addr v14, v6

    if-le v14, v4, :cond_0

    iget v10, v0, Lcom/miui/video/common/feed/ui/UITagListView;->mLineSpacing:I

    add-int/2addr v10, v3

    add-int/2addr v12, v10

    move v10, v3

    move v11, v5

    :cond_0
    iget v3, v0, Lcom/miui/video/common/feed/ui/UITagListView;->mTagSpacing:I

    add-int/2addr v13, v3

    add-int/2addr v11, v13

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    add-int/2addr v12, v10

    add-int/2addr v12, v8

    const/4 v1, 0x0

    add-int v3, v1, v12

    invoke-static {v3, v2}, Lcom/miui/video/common/feed/ui/UITagListView;->resolveSize(II)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/miui/video/common/feed/ui/UITagListView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mDataSetObserver:Lcom/miui/video/common/feed/ui/UITagListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mDataSetObserver:Lcom/miui/video/common/feed/ui/UITagListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mAdapter:Landroid/widget/Adapter;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mDataSetObserver:Lcom/miui/video/common/feed/ui/UITagListView$AdapterDataSetObserver;

    if-nez p1, :cond_1

    new-instance p1, Lcom/miui/video/common/feed/ui/UITagListView$AdapterDataSetObserver;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/UITagListView$AdapterDataSetObserver;-><init>(Lcom/miui/video/common/feed/ui/UITagListView;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mDataSetObserver:Lcom/miui/video/common/feed/ui/UITagListView$AdapterDataSetObserver;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mAdapter:Landroid/widget/Adapter;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mDataSetObserver:Lcom/miui/video/common/feed/ui/UITagListView$AdapterDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/common/feed/ui/UITagListView;->resetData()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UITagListView;->mItemClickListener:Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;

    return-void
.end method
