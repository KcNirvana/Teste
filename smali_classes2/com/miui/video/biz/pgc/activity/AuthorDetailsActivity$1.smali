.class Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "AuthorDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->initInfoStream()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$1;->this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$1;->this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

    sget p3, Lcom/miui/video/biz/group/pgc/R$id;->v_filter:I

    invoke-virtual {p2, p3}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    const/4 p3, 0x1

    if-le p1, p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
