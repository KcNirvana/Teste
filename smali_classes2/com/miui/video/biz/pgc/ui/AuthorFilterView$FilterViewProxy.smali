.class Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;
.super Ljava/lang/Object;
.source "AuthorFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/pgc/ui/AuthorFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterViewProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/pgc/ui/AuthorFilterView;

.field private vFilterLeft:Landroid/widget/TextView;

.field private vFilterRight:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/pgc/ui/AuthorFilterView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;->this$0:Lcom/miui/video/biz/pgc/ui/AuthorFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Lcom/miui/video/biz/group/pgc/R$id;->tv_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;->vTitle:Landroid/widget/TextView;

    sget p1, Lcom/miui/video/biz/group/pgc/R$id;->tv_filter_1:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;->vFilterLeft:Landroid/widget/TextView;

    sget p1, Lcom/miui/video/biz/group/pgc/R$id;->tv_filter_2:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;->vFilterRight:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic lambda$setFilter$32(Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;Lcom/miui/video/common/feed/entity/TinyCardEntity;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;->this$0:Lcom/miui/video/biz/pgc/ui/AuthorFilterView;

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->vo_action_id_subscribe_filter_btn_click:I

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/miui/video/biz/pgc/ui/AuthorFilterView;->raiseAction(ILjava/lang/Object;)V

    return-void
.end method

.method private setFilter(Landroid/widget/TextView;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 2

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v1, :cond_1

    sget v1, Lcom/miui/video/biz/group/pgc/R$color;->c_blue_text_0C80FF:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/miui/video/biz/group/pgc/R$color;->black_40:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorFilterView$FilterViewProxy$vy90VhAFcP8wUy2T5-Bvjs9Y1E0;

    invoke-direct {v0, p0, p2}, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorFilterView$FilterViewProxy$vy90VhAFcP8wUy2T5-Bvjs9Y1E0;-><init>(Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method setData(Lcom/miui/video/common/feed/entity/FeedRowEntity;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;->vTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;->vFilterLeft:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;->setFilter(Landroid/widget/TextView;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;->vFilterRight:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {p0, v0, p1}, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;->setFilter(Landroid/widget/TextView;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    return-void
.end method
