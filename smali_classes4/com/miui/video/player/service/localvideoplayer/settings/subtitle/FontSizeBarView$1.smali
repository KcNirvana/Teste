.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView$1;
.super Ljava/lang/Object;
.source "FontSizeBarView.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$ISubtitleFontChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->initSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubtitleFontSizeChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, p1, :cond_0

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/player/service/R$color;->subtitle_color_0091dc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "#ffffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;->access$200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeBarView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->setSubtitleFontSize(F)V

    :cond_3
    return-void
.end method
