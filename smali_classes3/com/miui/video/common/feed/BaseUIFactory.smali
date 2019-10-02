.class public abstract Lcom/miui/video/common/feed/BaseUIFactory;
.super Lcom/miui/video/common/feed/ui/UIStyle;
.source "BaseUIFactory.java"

# interfaces
.implements Lcom/miui/video/common/feed/recyclerview/IUIFactory;


# instance fields
.field protected mLayoutTypeOffset:I

.field private mUIRecyclerListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/common/feed/UIRecyclerListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/common/feed/ui/UIStyle;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/common/feed/BaseUIFactory;->mLayoutTypeOffset:I

    return-void
.end method


# virtual methods
.method public getLayoutTypeOffset()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/BaseUIFactory;->mLayoutTypeOffset:I

    return v0
.end method

.method public getLayoutTypeWithOffset(I)I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/BaseUIFactory;->mLayoutTypeOffset:I

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr v0, p1

    return v0
.end method

.method public getUIRecyclerListView()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/common/feed/UIRecyclerListView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/BaseUIFactory;->mUIRecyclerListView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public retriveLayoutType(I)I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/BaseUIFactory;->mLayoutTypeOffset:I

    if-nez v0, :cond_0

    return p1

    :cond_0
    rem-int/lit16 p1, p1, 0x2710

    return p1
.end method

.method public setLayoutTypeOffset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/BaseUIFactory;->mLayoutTypeOffset:I

    return-void
.end method

.method public setUIRecyclerListView(Lcom/miui/video/common/feed/UIRecyclerListView;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/common/feed/BaseUIFactory;->mUIRecyclerListView:Ljava/lang/ref/WeakReference;

    return-void
.end method
