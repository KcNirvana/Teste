.class final Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$2;
.super Ljava/lang/Object;
.source "TrendingFragment.kt"

# interfaces
.implements Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabReselectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->initViewPage()V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "onTabReselected"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$2;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabReselected(I)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$2;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    sget-object v0, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_CHANNEL_CLICK:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    return-void
.end method
