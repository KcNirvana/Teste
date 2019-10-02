.class public Lcom/miui/video/player/service/controller/gesture/GestureSeek;
.super Lcom/miui/video/player/service/controller/gesture/GestureView;
.source "GestureSeek.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GestureSeek"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/controller/gesture/GestureView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static create(Landroid/view/ViewGroup;)Lcom/miui/video/player/service/controller/gesture/GestureSeek;
    .locals 3

    new-instance v0, Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static parseShortTime(I)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "00:00"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 p0, p0, 0x3e8

    div-int/lit16 v1, p0, 0xe10

    const/16 v2, 0xa

    if-lez v1, :cond_2

    if-ge v1, v2, :cond_1

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    rem-int/lit16 p0, p0, 0xe10

    div-int/lit8 v1, p0, 0x3c

    if-ge v1, v2, :cond_3

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p0, p0, 0x3c

    if-ge p0, v2, :cond_4

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public adjustSeekEnd()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->gone()V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onSeek(I)V

    return-void
.end method

.method public adjustSeekStart(IZI)V
    .locals 3

    const-string v0, "GestureSeek"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSeekStartrtf ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutRightToLeft(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " newposition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "forward = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutRightToLeft(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->mIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    sget p2, Lcom/miui/video/player/service/R$drawable;->vp_fas_back_icon_big:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/miui/video/player/service/R$drawable;->vp_fas_forward_icon_big:I

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->mIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    sget p2, Lcom/miui/video/player/service/R$drawable;->vp_fas_forward_icon_big:I

    goto :goto_1

    :cond_2
    sget p2, Lcom/miui/video/player/service/R$drawable;->vp_fas_back_icon_big:I

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object p2, p0, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->mText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->parseShortTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->parseShortTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->show()V

    return-void
.end method

.method protected getIcon()I
    .locals 1

    sget v0, Lcom/miui/video/player/service/R$drawable;->vp_fas_forward_icon_big:I

    return v0
.end method

.method protected getIconMarginTop()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$dimen;->comm_vp_volumn_icon_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getTextMarginTop()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$dimen;->comm_vp_volumn_percent_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
