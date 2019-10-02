.class public final synthetic Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorDetailsView$0Yyx3nExNuNGKbZzWoUFbIhousI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;

.field private final synthetic f$1:Lcom/miui/video/framework/base/ui/BaseUIEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorDetailsView$0Yyx3nExNuNGKbZzWoUFbIhousI;->f$0:Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;

    iput-object p2, p0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorDetailsView$0Yyx3nExNuNGKbZzWoUFbIhousI;->f$1:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    return-void
.end method


# virtual methods
.method public final onSubscribe(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorDetailsView$0Yyx3nExNuNGKbZzWoUFbIhousI;->f$0:Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;

    iget-object v1, p0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorDetailsView$0Yyx3nExNuNGKbZzWoUFbIhousI;->f$1:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-static {v0, v1, p1}, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->lambda$setData$25(Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;Lcom/miui/video/framework/base/ui/BaseUIEntity;Z)V

    return-void
.end method
