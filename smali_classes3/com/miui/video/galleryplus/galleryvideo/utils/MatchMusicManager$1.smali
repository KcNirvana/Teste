.class Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$1;
.super Ljava/lang/Object;
.source "MatchMusicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->startMatchMusic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;

.field final synthetic val$ret:I


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;

    iput p2, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$1;->val$ret:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$1;->val$ret:I

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->access$000(Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;I)V

    return-void
.end method
