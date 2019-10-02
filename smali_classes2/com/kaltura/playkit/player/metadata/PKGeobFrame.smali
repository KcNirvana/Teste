.class public Lcom/kaltura/playkit/player/metadata/PKGeobFrame;
.super Ljava/lang/Object;
.source "PKGeobFrame.java"

# interfaces
.implements Lcom/kaltura/playkit/player/metadata/PKMetadata;


# instance fields
.field public final data:[B

.field public final description:Ljava/lang/String;

.field public final fileName:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/player/metadata/PKGeobFrame;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/kaltura/playkit/player/metadata/PKGeobFrame;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/kaltura/playkit/player/metadata/PKGeobFrame;->fileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/kaltura/playkit/player/metadata/PKGeobFrame;->description:Ljava/lang/String;

    iput-object p5, p0, Lcom/kaltura/playkit/player/metadata/PKGeobFrame;->data:[B

    return-void
.end method
