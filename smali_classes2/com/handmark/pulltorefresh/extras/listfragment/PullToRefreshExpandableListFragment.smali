.class public Lcom/handmark/pulltorefresh/extras/listfragment/PullToRefreshExpandableListFragment;
.super Lcom/handmark/pulltorefresh/extras/listfragment/PullToRefreshBaseListFragment;
.source "PullToRefreshExpandableListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/extras/listfragment/PullToRefreshBaseListFragment<",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/extras/listfragment/PullToRefreshBaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/extras/listfragment/PullToRefreshExpandableListFragment;->onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;

    move-result-object p1

    return-object p1
.end method

.method protected onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;
    .locals 0

    new-instance p1, Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/extras/listfragment/PullToRefreshExpandableListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
