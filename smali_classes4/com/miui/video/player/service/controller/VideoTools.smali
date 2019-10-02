.class public Lcom/miui/video/player/service/controller/VideoTools;
.super Landroid/widget/RelativeLayout;
.source "VideoTools.java"


# instance fields
.field private vScreenLocker:Landroid/widget/ImageView;

.field private vScreenShot:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoTools;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoTools;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoTools;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoTools;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->vp_video_tools:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_screen_locker:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTools;->vScreenLocker:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_screen_shot:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTools;->vScreenShot:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTools;->vScreenLocker:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTools;->vScreenShot:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setScreenLockerSelected(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTools;->vScreenLocker:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public setScreenLockerVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTools;->vScreenLocker:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setScreenShotVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTools;->vScreenShot:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
