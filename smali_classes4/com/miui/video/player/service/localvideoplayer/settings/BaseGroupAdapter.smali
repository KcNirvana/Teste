.class public abstract Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->mGroup:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addGroup(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public addGroup([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->addGroup(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->addGroup(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected getViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TV;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public refresh()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setGroup(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setGroup([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->setGroup(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->setGroup(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;->mListener:Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    return-void
.end method

.method public setSelectedVideoObject(I)V
    .locals 0

    return-void
.end method
