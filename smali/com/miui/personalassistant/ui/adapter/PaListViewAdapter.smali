.class public abstract Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;
.super Ljava/lang/Object;
.source "PaListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mItemLayoutId:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->mItemLayoutId:I

    iput-object p2, p0, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->mDatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->mDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemLayoutId()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->mItemLayoutId:I

    return v0
.end method

.method public onBind(ILcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->onBind(ILjava/lang/Object;Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;)V

    return-void
.end method

.method public abstract onBind(ILjava/lang/Object;Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->mDatas:Ljava/util/List;

    return-void
.end method
