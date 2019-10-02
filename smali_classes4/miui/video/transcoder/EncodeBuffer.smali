.class public Lmiui/video/transcoder/EncodeBuffer;
.super Ljava/lang/Object;
.source "EncodeBuffer.java"


# instance fields
.field public data:[B

.field public flag:I

.field public ptsUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/video/transcoder/EncodeBuffer;->data:[B

    return-void
.end method
