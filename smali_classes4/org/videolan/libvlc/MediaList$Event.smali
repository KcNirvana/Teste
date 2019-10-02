.class public Lorg/videolan/libvlc/MediaList$Event;
.super Lorg/videolan/libvlc/VLCEvent;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final EndReached:I = 0x204

.field public static final ItemAdded:I = 0x200

.field public static final ItemDeleted:I = 0x202


# instance fields
.field public final index:I

.field public final media:Lorg/videolan/libvlc/Media;

.field private final retain:Z


# direct methods
.method protected constructor <init>(ILorg/videolan/libvlc/Media;ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCEvent;-><init>(I)V

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->retain()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid media reference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    iput-boolean p3, p0, Lorg/videolan/libvlc/MediaList$Event;->retain:Z

    iput p4, p0, Lorg/videolan/libvlc/MediaList$Event;->index:I

    return-void
.end method


# virtual methods
.method release()V
    .locals 1

    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaList$Event;->retain:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/MediaList$Event;->media:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    :cond_0
    return-void
.end method
