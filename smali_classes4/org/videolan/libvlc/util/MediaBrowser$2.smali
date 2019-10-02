.class Lorg/videolan/libvlc/util/MediaBrowser$2;
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

    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/videolan/libvlc/MediaList$Event;)V
    .locals 3

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v0}, Lorg/videolan/libvlc/util/MediaBrowser;->access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lorg/videolan/libvlc/MediaList$Event;->type:I

    const/16 v1, 0x200

    const/4 v2, -0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x202

    if-eq v0, v1, :cond_2

    const/16 p1, 0x204

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {p1}, Lorg/videolan/libvlc/util/MediaBrowser;->access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onBrowseEnd()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v0}, Lorg/videolan/libvlc/util/MediaBrowser;->access$100(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v1}, Lorg/videolan/libvlc/util/MediaBrowser;->access$100(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    if-eq v0, v2, :cond_5

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v1}, Lorg/videolan/libvlc/util/MediaBrowser;->access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v1

    iget-object p1, p1, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-interface {v1, v0, p1}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onMediaRemoved(ILorg/videolan/libvlc/Media;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v0}, Lorg/videolan/libvlc/util/MediaBrowser;->access$100(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser$2;->this$0:Lorg/videolan/libvlc/util/MediaBrowser;

    invoke-static {v0}, Lorg/videolan/libvlc/util/MediaBrowser;->access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    move-result-object v0

    iget-object p1, p1, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-interface {v0, v2, p1}, Lorg/videolan/libvlc/util/MediaBrowser$EventListener;->onMediaAdded(ILorg/videolan/libvlc/Media;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic onEvent(Lorg/videolan/libvlc/VLCEvent;)V
    .locals 0

    check-cast p1, Lorg/videolan/libvlc/MediaList$Event;

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/util/MediaBrowser$2;->onEvent(Lorg/videolan/libvlc/MediaList$Event;)V

    return-void
.end method
