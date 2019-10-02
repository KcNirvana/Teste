.class public Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "AlphabetFastIndexer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$OnScrollerDecorator;,
        Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;
    }
.end annotation


# static fields
.field private static final FADE_DELAYED:I = 0x5dc

.field private static final MSG_FADE:I = 0x1

.field private static final STARRED_LABEL:Ljava/lang/String; = "\u2605"

.field public static final STARRED_TITLE:Ljava/lang/String; = "!"

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_NONE:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastAlphabetIndex:I

.field private mListScrollState:I

.field private mListView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field

.field private mOverlay:Landroid/widget/TextView;

.field private mRefreshMaskRunnable:Ljava/lang/Runnable;

.field private mState:I

.field private mTextHilightAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$1;-><init>(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilightAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListScrollState:I

    iput v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mState:I

    new-instance v1, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$2;-><init>(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mRefreshMaskRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$3;-><init>(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/xiaomi/passport/ui/R$styleable;->AlphabetFastIndexer:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    new-instance p3, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    invoke-direct {p3, p1, p2}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->refreshMask()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListScrollState:I

    return p1
.end method

.method private drawThumbInternal(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "!"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u2605"

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method private getListOffset()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getPostion(FLandroid/widget/SectionIndexer;)I
    .locals 4

    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    if-gtz v3, :cond_1

    return v0

    :cond_1
    int-to-float v1, v1

    sub-float/2addr p1, v1

    int-to-float v1, v3

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    iget-object v1, v1, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    if-gez p1, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_3

    array-length p1, p2

    return p1

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_4

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    :cond_4
    if-gez p1, :cond_5

    const/4 p1, 0x0

    :cond_5
    return p1
.end method

.method private getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-nez v2, :cond_1

    instance-of v3, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/widget/WrapperListAdapter;

    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/SectionIndexer;

    :cond_2
    return-object v1
.end method

.method private refreshMask()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getListOffset()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :cond_1
    iget v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mLastAlphabetIndex:I

    if-eq v1, v0, :cond_3

    iput v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mLastAlphabetIndex:I

    const/4 v0, 0x1

    iget v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mState:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mLastAlphabetIndex:I

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->slidTextHilightBackground(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->invalidate()V

    :cond_3
    return-void
.end method

.method private scrollTo(Landroid/widget/SectionIndexer;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getListOffset()I

    move-result v4

    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    const/high16 v5, 0x41000000    # 8.0f

    div-float/2addr v6, v5

    invoke-interface/range {p1 .. p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v5

    const/4 v8, 0x1

    if-eqz v5, :cond_b

    array-length v9, v5

    if-le v9, v8, :cond_b

    array-length v9, v5

    if-lt v2, v9, :cond_0

    add-int/lit8 v10, v9, -0x1

    goto :goto_0

    :cond_0
    move v10, v2

    :goto_0
    invoke-interface {v1, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    add-int/lit8 v12, v10, 0x1

    add-int/lit8 v13, v9, -0x1

    if-ge v10, v13, :cond_1

    invoke-interface {v1, v12}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    goto :goto_1

    :cond_1
    move v13, v3

    :goto_1
    if-ne v13, v11, :cond_5

    move v14, v10

    move v15, v11

    :cond_2
    if-lez v14, :cond_4

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v1, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v15

    if-eq v15, v11, :cond_3

    goto :goto_2

    :cond_3
    if-nez v14, :cond_2

    move v14, v10

    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    move v11, v10

    move v14, v11

    goto :goto_3

    :cond_5
    move v14, v10

    move v15, v11

    :goto_2
    move v11, v14

    :goto_3
    add-int/lit8 v16, v12, 0x1

    move v7, v12

    move/from16 v12, v16

    :goto_4
    if-ge v12, v9, :cond_6

    invoke-interface {v1, v12}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    if-ne v8, v13, :cond_6

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    int-to-float v1, v14

    int-to-float v8, v9

    div-float/2addr v1, v8

    int-to-float v7, v7

    div-float/2addr v7, v8

    int-to-float v2, v2

    div-float/2addr v2, v8

    if-ne v14, v10, :cond_7

    sub-float v8, v2, v1

    cmpg-float v6, v8, v6

    if-gez v6, :cond_7

    goto :goto_5

    :cond_7
    sub-int/2addr v13, v15

    int-to-float v6, v13

    sub-float/2addr v2, v1

    mul-float v6, v6, v2

    sub-float/2addr v7, v1

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v15, v1

    :goto_5
    const/4 v1, 0x1

    add-int/lit8 v2, v3, -0x1

    if-le v15, v2, :cond_8

    move v15, v2

    :cond_8
    iget-object v1, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    instance-of v1, v1, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v1, Landroid/widget/ExpandableListView;

    add-int/2addr v15, v4

    invoke-static {v15}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    iget-object v1, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v1, Landroid/widget/ListView;

    add-int/2addr v15, v4

    invoke-virtual {v1, v15, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_7

    :cond_a
    iget-object v1, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    add-int/2addr v15, v4

    invoke-virtual {v1, v15}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_7

    :cond_b
    mul-int v1, v2, v3

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    instance-of v2, v2, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v2, Landroid/widget/ExpandableListView;

    add-int/2addr v1, v4

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    iget-object v2, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v2, Landroid/widget/ListView;

    add-int/2addr v1, v4

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    :cond_d
    iget-object v2, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    add-int/2addr v1, v4

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    :goto_6
    const/4 v11, -0x1

    :goto_7
    if-ltz v11, :cond_e

    if-eqz v5, :cond_e

    aget-object v1, v5, v11

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method

.method private slidTextHilightBackground(I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    iget-object v2, v2, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float p1, p1

    mul-float p1, p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    add-float/2addr p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilightAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;->startSlidding(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public attatch()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mLastAlphabetIndex:I

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sget v1, Lcom/xiaomi/passport/ui/R$id;->fast_indexer_high_light:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    sget v1, Lcom/xiaomi/passport/ui/R$id;->fast_indexer_list:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->refreshMask()V

    return-void
.end method

.method public drawThumb(Ljava/lang/CharSequence;)V
    .locals 2

    iget v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->attatch()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    iget-object v2, v2, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    int-to-float v1, v1

    array-length v3, v2

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    invoke-virtual {v5}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;->beginDraw()V

    int-to-float v0, v0

    div-float v4, v1, v4

    add-float/2addr v0, v4

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->isPressed()Z

    move-result v7

    move-object v6, p1

    move v8, v4

    move v9, v3

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;->draw(Landroid/graphics/Canvas;ZIFF)V

    add-float/2addr v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;->endDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->onSizeChanged(IIII)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mLastAlphabetIndex:I

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mRefreshMaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->stop(I)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->stop(I)V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mLastAlphabetIndex:I

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->slidTextHilightBackground(I)V

    goto :goto_0

    :pswitch_1
    iput v3, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mState:I

    invoke-virtual {p0, v3}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->setPressed(Z)V

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getPostion(FLandroid/widget/SectionIndexer;)I

    move-result v2

    if-gez v2, :cond_2

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->scrollTo(Landroid/widget/SectionIndexer;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mTextHilighter:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$TextHilighter;->update(FF)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->postInvalidate()V

    goto :goto_1

    :goto_0
    const/16 p1, 0x5dc

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->stop(I)V

    :cond_3
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method stop(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->setPressed(Z)V

    iput v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mState:I

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->postInvalidate()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method
