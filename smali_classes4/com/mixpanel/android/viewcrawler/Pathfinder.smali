.class Lcom/mixpanel/android/viewcrawler/Pathfinder;
.super Ljava/lang/Object;
.source "Pathfinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;,
        Lcom/mixpanel/android/viewcrawler/Pathfinder$Accumulator;,
        Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.PathFinder"


# instance fields
.field private final mIndexStack:Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;

    invoke-direct {v0}, Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/viewcrawler/Pathfinder;->mIndexStack:Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;

    return-void
.end method

.method private findPrefixedMatch(Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;Landroid/view/View;I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/Pathfinder;->mIndexStack:Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;

    invoke-virtual {v0, p3}, Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;->read(I)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/mixpanel/android/viewcrawler/Pathfinder;->matches(Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/Pathfinder;->mIndexStack:Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;

    invoke-virtual {v1, p3}, Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;->increment(I)V

    iget v1, p1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;->index:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;->index:I

    if-ne v1, v0, :cond_1

    :cond_0
    return-object p2

    :cond_1
    iget v0, p1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;->prefix:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lcom/mixpanel/android/viewcrawler/Pathfinder;->findPrefixedMatch(Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private findTargetsInMatchedView(Landroid/view/View;Ljava/util/List;Lcom/mixpanel/android/viewcrawler/Pathfinder$Accumulator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;",
            ">;",
            "Lcom/mixpanel/android/viewcrawler/Pathfinder$Accumulator;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p1}, Lcom/mixpanel/android/viewcrawler/Pathfinder$Accumulator;->accumulate(Landroid/view/View;)V

    return-void

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/Pathfinder;->mIndexStack:Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;

    invoke-virtual {v0}, Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;->full()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "MixpanelAPI.PathFinder"

    const-string p2, "Path is too deep, will not match"

    invoke-static {p1, p2}, Lcom/mixpanel/android/util/MPLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {p2, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/mixpanel/android/viewcrawler/Pathfinder;->mIndexStack:Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;

    invoke-virtual {v3}, Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;->alloc()I

    move-result v3

    :goto_0
    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v1, v4, v3}, Lcom/mixpanel/android/viewcrawler/Pathfinder;->findPrefixedMatch(Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v4, p2, p3}, Lcom/mixpanel/android/viewcrawler/Pathfinder;->findTargetsInMatchedView(Landroid/view/View;Ljava/util/List;Lcom/mixpanel/android/viewcrawler/Pathfinder$Accumulator;)V

    :cond_3
    iget v4, v1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;->index:I

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/mixpanel/android/viewcrawler/Pathfinder;->mIndexStack:Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;

    invoke-virtual {v4, v3}, Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;->read(I)I

    move-result v4

    iget v5, v1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;->index:I

    if-le v4, v5, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/Pathfinder;->mIndexStack:Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;

    invoke-virtual {p1}, Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;->free()V

    return-void
.end method

.method private static hasClassName(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0
.end method

.method private matches(Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;Landroid/view/View;)Z
    .locals 3

    iget-object v0, p1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;->viewClassName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;->viewClassName:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/mixpanel/android/viewcrawler/Pathfinder;->hasClassName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    iget v2, p1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;->viewId:I

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    iget v2, p1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;->viewId:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;->contentDescription:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;->contentDescription:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;->tag:Ljava/lang/String;

    iget-object p1, p1, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;->tag:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public findTargetsInRoot(Landroid/view/View;Ljava/util/List;Lcom/mixpanel/android/viewcrawler/Pathfinder$Accumulator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;",
            ">;",
            "Lcom/mixpanel/android/viewcrawler/Pathfinder$Accumulator;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/Pathfinder;->mIndexStack:Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;

    invoke-virtual {v0}, Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;->full()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "MixpanelAPI.PathFinder"

    const-string p2, "There appears to be a concurrency issue in the pathfinding code. Path will not be matched."

    invoke-static {p1, p2}, Lcom/mixpanel/android/util/MPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;

    const/4 v1, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/Pathfinder;->mIndexStack:Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;

    invoke-virtual {v1}, Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;->alloc()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/mixpanel/android/viewcrawler/Pathfinder;->findPrefixedMatch(Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/Pathfinder;->mIndexStack:Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;

    invoke-virtual {v0}, Lcom/mixpanel/android/viewcrawler/Pathfinder$IntStack;->free()V

    if-eqz p1, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/mixpanel/android/viewcrawler/Pathfinder;->findTargetsInMatchedView(Landroid/view/View;Ljava/util/List;Lcom/mixpanel/android/viewcrawler/Pathfinder$Accumulator;)V

    :cond_2
    return-void
.end method
