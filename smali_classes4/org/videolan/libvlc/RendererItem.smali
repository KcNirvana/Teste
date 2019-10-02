.class public Lorg/videolan/libvlc/RendererItem;
.super Lorg/videolan/libvlc/VLCObject;
.source "RendererItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/RendererItem$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject<",
        "Lorg/videolan/libvlc/RendererItem$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final LIBVLC_RENDERER_CAN_AUDIO:I = 0x1

.field public static final LIBVLC_RENDERER_CAN_VIDEO:I = 0x2


# instance fields
.field public final displayName:Ljava/lang/String;

.field final flags:I

.field final iconUrl:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field private final ref:J

.field final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 3

    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    iput-object p1, p0, Lorg/videolan/libvlc/RendererItem;->name:Ljava/lang/String;

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/videolan/libvlc/RendererItem;->displayName:Ljava/lang/String;

    iput-object p2, p0, Lorg/videolan/libvlc/RendererItem;->type:Ljava/lang/String;

    iput-object p3, p0, Lorg/videolan/libvlc/RendererItem;->iconUrl:Ljava/lang/String;

    iput p4, p0, Lorg/videolan/libvlc/RendererItem;->flags:I

    iput-wide p5, p0, Lorg/videolan/libvlc/RendererItem;->ref:J

    return-void
.end method

.method constructor <init>(Lorg/videolan/libvlc/RendererDiscoverer;J)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/VLCObject;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/RendererItem;->nativeNewItem(Lorg/videolan/libvlc/RendererDiscoverer;J)Lorg/videolan/libvlc/RendererItem;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/videolan/libvlc/RendererItem;->name:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lorg/videolan/libvlc/RendererItem;->name:Ljava/lang/String;

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lorg/videolan/libvlc/RendererItem;->displayName:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lorg/videolan/libvlc/RendererItem;->displayName:Ljava/lang/String;

    if-nez p1, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lorg/videolan/libvlc/RendererItem;->type:Ljava/lang/String;

    :goto_2
    iput-object v1, p0, Lorg/videolan/libvlc/RendererItem;->type:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p1, Lorg/videolan/libvlc/RendererItem;->iconUrl:Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lorg/videolan/libvlc/RendererItem;->iconUrl:Ljava/lang/String;

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    iget v0, p1, Lorg/videolan/libvlc/RendererItem;->flags:I

    :goto_4
    iput v0, p0, Lorg/videolan/libvlc/RendererItem;->flags:I

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    iget-wide p2, p1, Lorg/videolan/libvlc/RendererItem;->ref:J

    :goto_5
    iput-wide p2, p0, Lorg/videolan/libvlc/RendererItem;->ref:J

    return-void
.end method

.method private native nativeNewItem(Lorg/videolan/libvlc/RendererDiscoverer;J)Lorg/videolan/libvlc/RendererItem;
.end method

.method private native nativeReleaseItem()V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/videolan/libvlc/RendererItem;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/videolan/libvlc/RendererItem;->ref:J

    check-cast p1, Lorg/videolan/libvlc/RendererItem;

    iget-wide v2, p1, Lorg/videolan/libvlc/RendererItem;->ref:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/RendererItem$Event;
    .locals 0

    new-instance p2, Lorg/videolan/libvlc/RendererItem$Event;

    invoke-direct {p2, p1}, Lorg/videolan/libvlc/RendererItem$Event;-><init>(I)V

    return-object p2
.end method

.method protected bridge synthetic onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/VLCEvent;
    .locals 0

    invoke-virtual/range {p0 .. p11}, Lorg/videolan/libvlc/RendererItem;->onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/RendererItem$Event;

    move-result-object p1

    return-object p1
.end method

.method protected onReleaseNative()V
    .locals 0

    invoke-direct {p0}, Lorg/videolan/libvlc/RendererItem;->nativeReleaseItem()V

    return-void
.end method
