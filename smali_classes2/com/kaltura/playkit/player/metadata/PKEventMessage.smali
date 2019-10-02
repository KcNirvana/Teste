.class public Lcom/kaltura/playkit/player/metadata/PKEventMessage;
.super Ljava/lang/Object;
.source "PKEventMessage.java"

# interfaces
.implements Lcom/kaltura/playkit/player/metadata/PKMetadata;


# instance fields
.field public final durationMs:J

.field public final id:J

.field public final messageData:[B

.field public final schemeIdUri:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/player/metadata/PKEventMessage;->schemeIdUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/kaltura/playkit/player/metadata/PKEventMessage;->value:Ljava/lang/String;

    iput-wide p3, p0, Lcom/kaltura/playkit/player/metadata/PKEventMessage;->durationMs:J

    iput-wide p5, p0, Lcom/kaltura/playkit/player/metadata/PKEventMessage;->id:J

    iput-object p7, p0, Lcom/kaltura/playkit/player/metadata/PKEventMessage;->messageData:[B

    return-void
.end method
