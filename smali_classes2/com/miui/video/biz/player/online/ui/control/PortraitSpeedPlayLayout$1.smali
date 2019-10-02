.class Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$1;
.super Ljava/lang/Object;
.source "PortraitSpeedPlayLayout.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentRate(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    invoke-static {v0, p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->access$002(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;F)F

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->access$100(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)V

    return-void
.end method
