.class final Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$11;
.super Ljava/lang/Object;
.source "VootVideoView.kt"

# interfaces
.implements Lcom/kaltura/playkit/PKEvent$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->addPlayerListeners()V
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
        "Lcom/kaltura/playkit/PKEvent;",
        "kotlin.jvm.PlatformType",
        "onEvent"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$11;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/kaltura/playkit/PKEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$11;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$11;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getSTATE_PLAYING()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->access$setMCurrentState$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;I)V

    return-void
.end method
