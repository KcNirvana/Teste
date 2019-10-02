.class final Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPagerData$2;
.super Ljava/lang/Object;
.source "TrendingFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->initViewPagerData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $selectIndex:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPagerData$2;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPagerData$2;->$selectIndex:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPagerData$2;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getVIndicator$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPagerData$2;->$selectIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
