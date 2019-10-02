.class public Lcom/kaltura/playkit/player/metadata/PKTextInformationFrame;
.super Ljava/lang/Object;
.source "PKTextInformationFrame.java"

# interfaces
.implements Lcom/kaltura/playkit/player/metadata/PKMetadata;


# instance fields
.field public final description:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/player/metadata/PKTextInformationFrame;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/kaltura/playkit/player/metadata/PKTextInformationFrame;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/kaltura/playkit/player/metadata/PKTextInformationFrame;->value:Ljava/lang/String;

    return-void
.end method
