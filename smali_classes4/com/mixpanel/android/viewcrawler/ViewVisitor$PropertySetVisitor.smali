.class public Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;
.super Lcom/mixpanel/android/viewcrawler/ViewVisitor;
.source "ViewVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/ViewVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertySetVisitor"
.end annotation


# instance fields
.field private final mAccessor:Lcom/mixpanel/android/viewcrawler/Caller;

.field private final mMutator:Lcom/mixpanel/android/viewcrawler/Caller;

.field private final mOriginalValueHolder:[Ljava/lang/Object;

.field private final mOriginalValues:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/mixpanel/android/viewcrawler/Caller;Lcom/mixpanel/android/viewcrawler/Caller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;",
            ">;",
            "Lcom/mixpanel/android/viewcrawler/Caller;",
            "Lcom/mixpanel/android/viewcrawler/Caller;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/mixpanel/android/viewcrawler/ViewVisitor;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mMutator:Lcom/mixpanel/android/viewcrawler/Caller;

    iput-object p3, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mAccessor:Lcom/mixpanel/android/viewcrawler/Caller;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mOriginalValueHolder:[Ljava/lang/Object;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mOriginalValues:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public accumulate(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mAccessor:Lcom/mixpanel/android/viewcrawler/Caller;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mMutator:Lcom/mixpanel/android/viewcrawler/Caller;

    invoke-virtual {v0}, Lcom/mixpanel/android/viewcrawler/Caller;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    array-length v2, v0

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mAccessor:Lcom/mixpanel/android/viewcrawler/Caller;

    invoke-virtual {v2, p1}, Lcom/mixpanel/android/viewcrawler/Caller;->applyMethod(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_3

    instance-of v3, v0, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v3, v2

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_1
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    instance-of v0, v2, Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    instance-of v0, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mOriginalValues:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mOriginalValueHolder:[Ljava/lang/Object;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mMutator:Lcom/mixpanel/android/viewcrawler/Caller;

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mOriginalValueHolder:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/viewcrawler/Caller;->argsAreApplicable([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mOriginalValues:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mOriginalValues:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mMutator:Lcom/mixpanel/android/viewcrawler/Caller;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/viewcrawler/Caller;->applyMethod(Landroid/view/View;)Ljava/lang/Object;

    return-void
.end method

.method public cleanup()V
    .locals 5

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mOriginalValues:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mOriginalValueHolder:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mMutator:Lcom/mixpanel/android/viewcrawler/Caller;

    iget-object v3, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor;->mOriginalValueHolder:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mixpanel/android/viewcrawler/Caller;->applyMethodWithArguments(Landroid/view/View;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected name()Ljava/lang/String;
    .locals 1

    const-string v0, "Property Mutator"

    return-object v0
.end method

.method public bridge synthetic visit(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mixpanel/android/viewcrawler/ViewVisitor;->visit(Landroid/view/View;)V

    return-void
.end method
