.class Lcom/miui/video/player/service/presenter/VideoViewPresenter$8;
.super Landroid/telephony/PhoneStateListener;
.source "VideoViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/presenter/VideoViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$8;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$8;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p2, p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$1100(Lcom/miui/video/player/service/presenter/VideoViewPresenter;I)V

    return-void
.end method
