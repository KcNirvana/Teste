.class public final synthetic Lcom/miui/video/biz/pgc/ui/-$$Lambda$RecommendAuthorView$DD7kQdEQiMfbjdsr2MMvux-Fe9I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;

.field private final synthetic f$1:Lcom/miui/video/common/feed/entity/TinyCardEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$RecommendAuthorView$DD7kQdEQiMfbjdsr2MMvux-Fe9I;->f$0:Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;

    iput-object p2, p0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$RecommendAuthorView$DD7kQdEQiMfbjdsr2MMvux-Fe9I;->f$1:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$RecommendAuthorView$DD7kQdEQiMfbjdsr2MMvux-Fe9I;->f$0:Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;

    iget-object v1, p0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$RecommendAuthorView$DD7kQdEQiMfbjdsr2MMvux-Fe9I;->f$1:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-static {v0, v1, p1}, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->lambda$setData$31(Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;Lcom/miui/video/common/feed/entity/TinyCardEntity;Landroid/view/View;)V

    return-void
.end method
