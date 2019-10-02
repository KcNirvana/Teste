.class Lmiui/video/transcoder/VideoTranscoder$1;
.super Ljava/lang/Object;
.source "VideoTranscoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/video/transcoder/VideoTranscoder;->doDecodeAndEncode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/video/transcoder/VideoTranscoder;


# direct methods
.method constructor <init>(Lmiui/video/transcoder/VideoTranscoder;)V
    .locals 0

    iput-object p1, p0, Lmiui/video/transcoder/VideoTranscoder$1;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$1;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$100(Lmiui/video/transcoder/VideoTranscoder;)V

    return-void
.end method
