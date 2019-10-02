.class public Lcom/kaltura/playkit/player/metadata/PKChapterTocFrame;
.super Ljava/lang/Object;
.source "PKChapterTocFrame.java"

# interfaces
.implements Lcom/kaltura/playkit/player/metadata/PKMetadata;


# instance fields
.field public final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final elementId:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final isOrdered:Z

.field public final isRoot:Z

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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/metadata/PKMetadata;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/player/metadata/PKChapterTocFrame;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/kaltura/playkit/player/metadata/PKChapterTocFrame;->elementId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/kaltura/playkit/player/metadata/PKChapterTocFrame;->isRoot:Z

    iput-boolean p4, p0, Lcom/kaltura/playkit/player/metadata/PKChapterTocFrame;->isOrdered:Z

    iput-object p5, p0, Lcom/kaltura/playkit/player/metadata/PKChapterTocFrame;->children:Ljava/util/List;

    iput-object p6, p0, Lcom/kaltura/playkit/player/metadata/PKChapterTocFrame;->subFrames:Ljava/util/List;

    return-void
.end method
