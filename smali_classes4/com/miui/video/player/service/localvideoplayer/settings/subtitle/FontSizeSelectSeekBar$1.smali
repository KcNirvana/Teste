.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$1;
.super Ljava/lang/Object;
.source "FontSizeSelectSeekBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->setCurrentSize(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;

    iget-object v1, v1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
