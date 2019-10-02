.class Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$1;
.super Ljava/lang/Object;
.source "SubtitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$1;->this$0:Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$1;->this$0:Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->access$000(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$1;->this$0:Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->access$000(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setVisibility(I)V

    return-void
.end method
