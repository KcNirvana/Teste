.class public final Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$createChannelFragment$1;
.super Ljava/lang/Object;
.source "TrendingFragment.kt"

# interfaces
.implements Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->createChannelFragment(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)Lcom/miui/video/common/library/base/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$createChannelFragment$1",
        "Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;",
        "result",
        "",
        "searchKey",
        "",
        "biz_group_shortvideo_release"
    }
    k = 0x1
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$createChannelFragment$1;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$createChannelFragment$1;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$setSearchBarHintText(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Ljava/lang/String;)V

    return-void
.end method
