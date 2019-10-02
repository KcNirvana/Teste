.class Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$4;
.super Landroid/os/Handler;
.source "SubtitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->access$300(Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->access$200(Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/miui/video/player/service/R$plurals;->lv_subtitle_offset_delay_times:I

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1, v4, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->access$200(Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/miui/video/player/service/R$plurals;->lv_subtitle_offset_advance_times:I

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1, v4, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->access$200(Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$string;->lv_subtitle_offset_normal:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->access$200(Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->access$200(Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->access$200(Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
