.class public Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;
.super Landroid/widget/FrameLayout;
.source "Gallery8KVideoProgress.java"


# instance fields
.field private mDuration:Landroid/widget/TextView;

.field private mLayoutView:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->initView()V

    return-void
.end method

.method private formatVideoDuration(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    const-wide/16 v2, 0xe10

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    div-long v4, p1, v2

    mul-long v2, v2, v4

    sub-long/2addr p1, v2

    goto :goto_0

    :cond_1
    move-wide v4, v0

    :goto_0
    const-wide/16 v2, 0x3c

    cmp-long v6, p1, v2

    if-ltz v6, :cond_2

    div-long v6, p1, v2

    mul-long v2, v2, v6

    sub-long/2addr p1, v2

    goto :goto_1

    :cond_2
    move-wide v6, v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v0, v4, v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v8, "%d"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v4, "%d"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0xa

    cmp-long v0, p1, v4

    if-gez v0, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v4, "%d"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v4, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$layout;->gallery_8k_video_progress_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->mLayoutView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->gallery_video_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->mTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->gallery_video_duration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->mDuration:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->gallery_video_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public show8KProgress(JJ)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->mTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->formatVideoDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->mDuration:Landroid/widget/TextView;

    invoke-direct {p0, p3, p4}, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->formatVideoDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/Gallery8KVideoProgress;->mProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    const-wide/16 v1, 0x64

    mul-long p1, p1, v1

    div-long v1, p1, p3

    :cond_0
    long-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
