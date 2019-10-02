.class public Lcom/kaltura/playkit/player/metadata/PKApicFrame;
.super Ljava/lang/Object;
.source "PKApicFrame.java"

# interfaces
.implements Lcom/kaltura/playkit/player/metadata/PKMetadata;


# instance fields
.field public final description:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final pictureData:[B

.field public final pictureType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/player/metadata/PKApicFrame;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/kaltura/playkit/player/metadata/PKApicFrame;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/kaltura/playkit/player/metadata/PKApicFrame;->description:Ljava/lang/String;

    iput p4, p0, Lcom/kaltura/playkit/player/metadata/PKApicFrame;->pictureType:I

    iput-object p5, p0, Lcom/kaltura/playkit/player/metadata/PKApicFrame;->pictureData:[B

    return-void
.end method
