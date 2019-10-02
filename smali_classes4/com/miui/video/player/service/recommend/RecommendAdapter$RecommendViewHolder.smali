.class public Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/recommend/RecommendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecommendViewHolder"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field public textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/video/player/service/recommend/RecommendAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/video/player/service/recommend/RecommendAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;->this$0:Lcom/miui/video/player/service/recommend/RecommendAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lcom/miui/video/player/service/R$id;->tv_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;->textView:Landroid/widget/TextView;

    sget p1, Lcom/miui/video/player/service/R$id;->iv_post:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method
