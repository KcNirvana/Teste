.class public Lcom/kaltura/playkit/player/metadata/PKChapterFrame;
.super Ljava/lang/Object;
.source "PKChapterFrame.java"

# interfaces
.implements Lcom/kaltura/playkit/player/metadata/PKMetadata;


# instance fields
.field public final chapterId:Ljava/lang/String;

.field public final endOffset:J

.field public final endTimeMs:I

.field public final id:Ljava/lang/String;

.field public final startOffset:J

.field public final startTimeMs:I

.field public final subFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/metadata/PKMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJJ",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/metadata/PKMetadata;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/player/metadata/PKChapterFrame;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/kaltura/playkit/player/metadata/PKChapterFrame;->chapterId:Ljava/lang/String;

    iput p3, p0, Lcom/kaltura/playkit/player/metadata/PKChapterFrame;->startTimeMs:I

    iput p4, p0, Lcom/kaltura/playkit/player/metadata/PKChapterFrame;->endTimeMs:I

    iput-wide p5, p0, Lcom/kaltura/playkit/player/metadata/PKChapterFrame;->startOffset:J

    iput-wide p7, p0, Lcom/kaltura/playkit/player/metadata/PKChapterFrame;->endOffset:J

    iput-object p9, p0, Lcom/kaltura/playkit/player/metadata/PKChapterFrame;->subFrames:Ljava/util/List;

    return-void
.end method
