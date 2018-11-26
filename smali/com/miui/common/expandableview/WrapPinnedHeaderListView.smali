.class public Lcom/miui/common/expandableview/WrapPinnedHeaderListView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private azF:Lcom/miui/common/expandableview/PinnedHeaderListView;

.field private azG:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGK(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGK(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGK(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private aGK(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-direct {v0, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azF:Lcom/miui/common/expandableview/PinnedHeaderListView;

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azF:Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-virtual {p0, v0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azG:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x8a

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azG:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azG:Landroid/view/View;

    const-string/jumbo v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azG:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azG:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azG:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azF:Lcom/miui/common/expandableview/PinnedHeaderListView;

    new-instance v1, Lcom/miui/common/expandableview/e;

    invoke-direct {v1, p0}, Lcom/miui/common/expandableview/e;-><init>(Lcom/miui/common/expandableview/WrapPinnedHeaderListView;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->aGF(Lcom/miui/common/expandableview/c;)V

    return-void
.end method

.method private aGL(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azG:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private aGM(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azG:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azG:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azG:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic aGN(Lcom/miui/common/expandableview/WrapPinnedHeaderListView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azG:Landroid/view/View;

    return-object v0
.end method

.method static synthetic aGO(Lcom/miui/common/expandableview/WrapPinnedHeaderListView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGL(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic aGP(Lcom/miui/common/expandableview/WrapPinnedHeaderListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGM(Z)V

    return-void
.end method


# virtual methods
.method public aGI(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azF:Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-virtual {v0, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public aGJ(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azF:Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-virtual {v0, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public getListView()Lcom/miui/common/expandableview/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azF:Lcom/miui/common/expandableview/PinnedHeaderListView;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->azF:Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-virtual {v0, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
