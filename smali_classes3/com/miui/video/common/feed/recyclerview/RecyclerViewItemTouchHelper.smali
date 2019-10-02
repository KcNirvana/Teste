.class public Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;
.super Ljava/lang/Object;
.source "RecyclerViewItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;,
        Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperViewHolder;,
        Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RecyclerViewItemTouchHelper"


# instance fields
.field private mCallback:Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;

.field private mItemTouchHeler:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;

    invoke-direct {v0}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;->mCallback:Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;

    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;->mCallback:Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;->mItemTouchHeler:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-void
.end method


# virtual methods
.method public addItemStateChangeListener(Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;->mCallback:Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;->addItemStateChangeListener(Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;)V

    return-void
.end method

.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;->mItemTouchHeler:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public removeItemStateChangeListener(Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;->mCallback:Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;->removeItemStateChangeListener(Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;)V

    return-void
.end method
