.class final Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$onConfigurationChanged$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$onConfigurationChanged$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $newConfig$inlined:Landroid/content/res/Configuration;

.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Landroid/content/res/Configuration;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$onConfigurationChanged$$inlined$let$lambda$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$onConfigurationChanged$$inlined$let$lambda$1;->$newConfig$inlined:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$onConfigurationChanged$$inlined$let$lambda$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$onConfigurationChanged$$inlined$let$lambda$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMLandscapePlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$scrollToTopAndPlay(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V

    return-void
.end method
