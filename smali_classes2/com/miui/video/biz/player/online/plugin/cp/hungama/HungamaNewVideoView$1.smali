.class Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$1;
.super Ljava/lang/Object;
.source "HungamaNewVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    const v1, 0x15f92

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->handleOnError(I)V

    return-void
.end method
