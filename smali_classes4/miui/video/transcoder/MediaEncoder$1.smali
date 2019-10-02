.class Lmiui/video/transcoder/MediaEncoder$1;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/video/transcoder/MediaEncoder;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/video/transcoder/MediaEncoder;


# direct methods
.method constructor <init>(Lmiui/video/transcoder/MediaEncoder;)V
    .locals 0

    iput-object p1, p0, Lmiui/video/transcoder/MediaEncoder$1;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder$1;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v0}, Lmiui/video/transcoder/MediaEncoder;->access$100(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder$1;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v0}, Lmiui/video/transcoder/MediaEncoder;->access$100(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;->onEncodeEnd(Z)V

    :cond_0
    return-void
.end method
