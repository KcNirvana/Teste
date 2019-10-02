.class abstract Lcom/handmark/pulltorefresh/extras/listfragment/PullToRefreshBaseListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "PullToRefreshBaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
        "+",
        "Landroid/widget/AbsListView;",
        ">;>",
        "Landroid/support/v4/app/ListFragment;"
    }
.end annotation


# instance fields
.field private mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPullToRefreshListView()Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/handmark/pulltorefresh/extras/listfragment/PullToRefreshBaseListFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    return-object v0
.end method

.method protected abstract onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const v0, 0x102000a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0, p1, p3}, Lcom/handmark/pulltorefresh/extras/listfragment/PullToRefreshBaseListFragment;->onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    move-result-object p1

    iput-object p1, p0, Lcom/handmark/pulltorefresh/extras/listfragment/PullToRefreshBaseListFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    iget-object p1, p0, Lcom/handmark/pulltorefresh/extras/listfragment/PullToRefreshBaseListFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {v1, p1, v2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method
