.class Lcom/miui/video/player/service/recommend/RecommendAdapter$1;
.super Ljava/lang/Object;
.source "RecommendAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/recommend/RecommendAdapter;->onBindViewHolder(Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/recommend/RecommendAdapter;

.field final synthetic val$i:I

.field final synthetic val$viewHolder:Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/recommend/RecommendAdapter;Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter$1;->this$0:Lcom/miui/video/player/service/recommend/RecommendAdapter;

    iput-object p2, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter$1;->val$viewHolder:Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;

    iput p3, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter$1;->this$0:Lcom/miui/video/player/service/recommend/RecommendAdapter;

    iget-object p1, p1, Lcom/miui/video/player/service/recommend/RecommendAdapter;->itemClickListener:Lcom/miui/video/player/service/recommend/RecommendAdapter$OnItemClickListener;

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter$1;->val$viewHolder:Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;

    iget-object v0, v0, Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter$1;->val$i:I

    invoke-interface {p1, v0, v1}, Lcom/miui/video/player/service/recommend/RecommendAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
