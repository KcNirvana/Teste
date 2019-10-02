.class Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$5;
.super Ljava/lang/Object;
.source "InlineManager.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->startInternal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$5;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;)V
    .locals 1

    const-string p1, "inlineManager"

    const-string v0, " inlineManager OnComple  "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
