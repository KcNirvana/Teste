.class public Lcom/miui/video/biz/pgc/ui/AuthorFilterView;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "AuthorFilterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;
    }
.end annotation


# instance fields
.field private proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILandroid/view/View;)V
    .locals 1

    sget v0, Lcom/miui/video/biz/group/pgc/R$layout;->item_filter_author:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView;->proxies:Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView;->proxies:Ljava/util/List;

    new-instance p2, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;

    iget-object p3, p0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView;->vView:Landroid/view/View;

    invoke-direct {p2, p0, p3}, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;-><init>(Lcom/miui/video/biz/pgc/ui/AuthorFilterView;Landroid/view/View;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView;->proxies:Ljava/util/List;

    new-instance p2, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;

    invoke-direct {p2, p0, p4}, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;-><init>(Lcom/miui/video/biz/pgc/ui/AuthorFilterView;Landroid/view/View;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 2

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView;->proxies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;

    move-object v1, p2

    check-cast v1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;->setData(Lcom/miui/video/common/feed/entity/FeedRowEntity;)V

    goto :goto_0

    :cond_0
    return-void
.end method
