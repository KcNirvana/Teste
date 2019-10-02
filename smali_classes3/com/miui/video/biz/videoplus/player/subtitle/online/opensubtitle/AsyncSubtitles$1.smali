.class Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$1;
.super Ljava/lang/Thread;
.source "AsyncSubtitles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->logoutOSA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$1;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$1;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->access$100(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles$1;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->access$000(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesAPI;->logout(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;->printStackTrace()V

    :goto_0
    return-void
.end method
