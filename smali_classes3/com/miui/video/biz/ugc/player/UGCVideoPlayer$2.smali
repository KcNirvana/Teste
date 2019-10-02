.class Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$2;
.super Landroid/telephony/PhoneStateListener;
.source "UGCVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$2;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$2;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p2, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$700(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;I)V

    return-void
.end method
