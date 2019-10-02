.class public Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;
.super Lcom/mixpanel/android/viewcrawler/ViewVisitor;
.source "ViewVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/ViewVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutUpdateVisitor"
.end annotation


# static fields
.field private static final mHorizontalRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVerticalRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlive:Z

.field private final mArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;",
            ">;"
        }
    .end annotation
.end field

.field private final mCycleDetector:Lcom/mixpanel/android/viewcrawler/ViewVisitor$CycleDetector;

.field private final mName:Ljava/lang/String;

.field private final mOnLayoutErrorListener:Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnLayoutErrorListener;

.field private final mOriginalValues:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v2, v7

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mHorizontalRules:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mVerticalRules:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnLayoutErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnLayoutErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/mixpanel/android/viewcrawler/ViewVisitor;-><init>(Ljava/util/List;)V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mOriginalValues:Ljava/util/WeakHashMap;

    iput-object p2, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mArgs:Ljava/util/List;

    iput-object p3, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mAlive:Z

    iput-object p4, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mOnLayoutErrorListener:Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnLayoutErrorListener;

    new-instance p1, Lcom/mixpanel/android/viewcrawler/ViewVisitor$CycleDetector;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/mixpanel/android/viewcrawler/ViewVisitor$CycleDetector;-><init>(Lcom/mixpanel/android/viewcrawler/ViewVisitor$1;)V

    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mCycleDetector:Lcom/mixpanel/android/viewcrawler/ViewVisitor$CycleDetector;

    return-void
.end method

.method private verifyLayout(Ljava/util/Set;Landroid/util/SparseArray;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor$1;

    invoke-direct {v1, p0}, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor$1;-><init>(Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v7, v4, v7

    if-lez v7, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v8

    if-eq v7, v8, :cond_0

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mCycleDetector:Lcom/mixpanel/android/viewcrawler/ViewVisitor$CycleDetector;

    invoke-virtual {p1, v0}, Lcom/mixpanel/android/viewcrawler/ViewVisitor$CycleDetector;->hasCycle(Ljava/util/TreeMap;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public accumulate(Landroid/view/View;)V
    .locals 8

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mArgs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_8

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mArgs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;

    iget v3, v1, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;->viewId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v5

    invoke-virtual {v5}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    iget v6, v1, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;->verb:I

    aget v6, v5, v6

    iget v7, v1, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;->anchor:I

    if-ne v6, v7, :cond_3

    goto :goto_4

    :cond_3
    iget-object v6, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mOriginalValues:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mOriginalValues:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget v5, v1, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;->verb:I

    iget v6, v1, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;->anchor:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget-object v5, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mHorizontalRules:Ljava/util/Set;

    iget v6, v1, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;->verb:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v1, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mHorizontalRules:Ljava/util/Set;

    goto :goto_3

    :cond_5
    sget-object v5, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mVerticalRules:Ljava/util/Set;

    iget v1, v1, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;->verb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mVerticalRules:Ljava/util/Set;

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    invoke-direct {p0, v1, v0}, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->verifyLayout(Ljava/util/Set;Landroid/util/SparseArray;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->cleanup()V

    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mOnLayoutErrorListener:Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnLayoutErrorListener;

    new-instance v0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutErrorMessage;

    const-string v1, "circular_dependency"

    iget-object v2, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutErrorMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnLayoutErrorListener;->onLayoutError(Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutErrorMessage;)V

    return-void

    :cond_7
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public cleanup()V
    .locals 6

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mOriginalValues:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_0

    aget v5, v1, v2

    invoke-virtual {v4, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mAlive:Z

    return-void
.end method

.method protected name()Ljava/lang/String;
    .locals 1

    const-string v0, "Layout Update"

    return-object v0
.end method

.method public visit(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->mAlive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->getPathfinder()Lcom/mixpanel/android/viewcrawler/Pathfinder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->getPath()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/mixpanel/android/viewcrawler/Pathfinder;->findTargetsInRoot(Landroid/view/View;Ljava/util/List;Lcom/mixpanel/android/viewcrawler/Pathfinder$Accumulator;)V

    :cond_0
    return-void
.end method
