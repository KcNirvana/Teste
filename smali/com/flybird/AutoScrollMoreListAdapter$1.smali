.class Lcom/flybird/AutoScrollMoreListAdapter$1;
.super Ljava/lang/Object;
.source "AutoScrollMoreListAdapter.java"

# interfaces
.implements Lcom/flybird/FBListView$FBListViewListener;


# instance fields
.field final synthetic this$0:Lcom/flybird/AutoScrollMoreListAdapter;


# direct methods
.method constructor <init>(Lcom/flybird/AutoScrollMoreListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/AutoScrollMoreListAdapter$1;->this$0:Lcom/flybird/AutoScrollMoreListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFooterPullOver(Lcom/flybird/FBListView;)V
    .locals 2

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter$1;->this$0:Lcom/flybird/AutoScrollMoreListAdapter;

    iget-boolean v0, v0, Lcom/flybird/AutoScrollMoreListAdapter;->mIsLoading:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter$1;->this$0:Lcom/flybird/AutoScrollMoreListAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flybird/AutoScrollMoreListAdapter;->mIsLoading:Z

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter$1;->this$0:Lcom/flybird/AutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/flybird/AutoScrollMoreListAdapter;->onAutoLoadMore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter$1;->this$0:Lcom/flybird/AutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/flybird/AutoScrollMoreListAdapter;->showFooter()V

    goto :goto_0
.end method

.method public onHeaderPullOver(Lcom/flybird/FBListView;)V
    .locals 0

    return-void
.end method
