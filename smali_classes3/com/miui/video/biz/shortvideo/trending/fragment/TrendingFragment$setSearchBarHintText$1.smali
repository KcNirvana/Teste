.class final Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$setSearchBarHintText$1;
.super Ljava/lang/Object;
.source "TrendingFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->setSearchBarHintText(Ljava/lang/String;)V
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
.field final synthetic $searchKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$setSearchBarHintText$1;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$setSearchBarHintText$1;->$searchKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$setSearchBarHintText$1;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getVSearchBar$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$setSearchBarHintText$1;->$searchKey:Ljava/lang/String;

    sget v2, Lcom/miui/video/biz/shortvideo/R$color;->c_black_20:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/widget/ui/UISearchBar;->setEditHintText(Ljava/lang/String;I)Lcom/miui/video/service/widget/ui/UISearchBar;

    :cond_0
    return-void
.end method
