.class Lorg/videolan/libvlc/util/MediaBrowser$1;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Lorg/videolan/libvlc/MediaList$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/util/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/util/MediaBrowser;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/util/MediaBrowser;)V
    .locals 0

    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser$1;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/videolan/libvlc/MediaList$Event;)V
    .locals 2

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser$1;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v0}, Lorg/videolan/libvlc/util/MediaBrowser;->access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lorg/videolan/libvlc/MediaList$Event;->type:I

    const/16 v1, 0x200

    if-eq v0, v1, :cond_3

    const/16 v1, 0x202

    if-eq v0, v1, :cond_2

    const/16 p1, 0x204

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser$1;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {p1}, Lorg/videolan/libvlc/util/MediaBrowser;->access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onBrowseEnd()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser$1;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v0}, Lorg/videolan/libvlc/util/MediaBrowser;->access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v0

    iget v1, p1, Lorg/videolan/libvlc/MediaList$Event;->index:I

    iget-object p1, p1, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-interface {v0, v1, p1}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onMediaRemoved(ILorg/videolan/libvlc/Media;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser$1;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v0}, Lorg/videolan/libvlc/util/MediaBrowser;->access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v0

    iget v1, p1, Lorg/videolan/libvlc/MediaList$Event;->index:I

    iget-object p1, p1, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-interface {v0, v1, p1}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onMediaAdded(ILorg/videolan/libvlc/Media;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onEvent(Lorg/videolan/libvlc/VLCEvent;)V
    .locals 0

    check-cast p1, Lorg/videolan/libvlc/MediaList$Event;

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/util/MediaBrowser$1;->onEvent(Lorg/videolan/libvlc/MediaList$Event;)V

    return-void
.end method
