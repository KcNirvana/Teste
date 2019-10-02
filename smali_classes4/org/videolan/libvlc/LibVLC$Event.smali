.class public Lorg/videolan/libvlc/LibVLC$Event;
.super Lorg/videolan/libvlc/VLCEvent;
.source "LibVLC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/LibVLC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCEvent;-><init>(I)V

    return-void
.end method
