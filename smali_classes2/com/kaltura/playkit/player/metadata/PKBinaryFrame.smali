.class public Lcom/kaltura/playkit/player/metadata/PKBinaryFrame;
.super Ljava/lang/Object;
.source "PKBinaryFrame.java"

# interfaces
.implements Lcom/kaltura/playkit/player/metadata/PKMetadata;


# instance fields
.field public final data:[B

.field public final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/player/metadata/PKBinaryFrame;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/kaltura/playkit/player/metadata/PKBinaryFrame;->data:[B

    return-void
.end method
