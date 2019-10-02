.class final Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail$setData$2;
.super Ljava/lang/Object;
.source "UICardPlaylistDetail.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $position:I

.field final synthetic $tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;ILcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail$setData$2;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;

    iput p2, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail$setData$2;->$position:I

    iput-object p3, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail$setData$2;->$tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail$setData$2;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->access$getListener$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;)Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;

    move-result-object p1

    iget v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail$setData$2;->$position:I

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail$setData$2;->$tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail$setData$2;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;

    invoke-static {v2}, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->access$getVPlayerContainer$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;->onClickToVideoDetail(ILcom/miui/video/common/feed/entity/TinyCardEntity;Landroid/widget/FrameLayout;)V

    return-void
.end method
