.class public final synthetic Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorFilterView$FilterViewProxy$vy90VhAFcP8wUy2T5-Bvjs9Y1E0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;

.field private final synthetic f$1:Lcom/miui/video/common/feed/entity/TinyCardEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorFilterView$FilterViewProxy$vy90VhAFcP8wUy2T5-Bvjs9Y1E0;->f$0:Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;

    iput-object p2, p0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorFilterView$FilterViewProxy$vy90VhAFcP8wUy2T5-Bvjs9Y1E0;->f$1:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorFilterView$FilterViewProxy$vy90VhAFcP8wUy2T5-Bvjs9Y1E0;->f$0:Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;

    iget-object v1, p0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorFilterView$FilterViewProxy$vy90VhAFcP8wUy2T5-Bvjs9Y1E0;->f$1:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-static {v0, v1, p1}, Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;->lambda$setFilter$32(Lcom/miui/video/biz/pgc/ui/AuthorFilterView$FilterViewProxy;Lcom/miui/video/common/feed/entity/TinyCardEntity;Landroid/view/View;)V

    return-void
.end method
