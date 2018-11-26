.class public Lcom/miui/applicationlock/a/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajk(Landroid/content/Context;Lcom/miui/applicationlock/a/a;I)[Landroid/graphics/Bitmap;
    .locals 12

    const/4 v1, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x0

    if-nez p1, :cond_0

    return-object v10

    :cond_0
    const/16 v0, 0x9

    new-array v7, v0, [Landroid/graphics/Bitmap;

    const-wide/16 v2, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v11, :cond_4

    move v0, v1

    :goto_1
    if-ge v0, v11, :cond_3

    int-to-long v4, p2

    const-wide/16 v8, 0xc8

    add-long/2addr v8, v4

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    add-long/2addr v2, v8

    invoke-virtual {p1, v2, v3}, Lcom/miui/applicationlock/a/a;->ajf(J)Lcom/miui/c/c;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v6, 0x3

    add-int/2addr v3, v0

    invoke-static {v2}, Lcom/miui/applicationlock/a/b;->ajn(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    const v8, 0x7f0900b7

    invoke-static {p0, v2, v8}, Lcom/miui/applicationlock/a/b;->ajl(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v7, v3

    add-int/lit8 v0, v0, 0x1

    move-wide v2, v4

    goto :goto_1

    :cond_1
    return-object v10

    :cond_2
    return-object v10

    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_4
    return-object v7
.end method

.method private static ajl(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float v0, v2, v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static ajm(Landroid/content/Context;Lcom/miui/applicationlock/a/a;Lcom/miui/common/customview/gif/GifImageView;Landroid/widget/ImageView;)V
    .locals 10

    const-wide/16 v0, 0xd1

    invoke-virtual {p1, v0, v1}, Lcom/miui/applicationlock/a/a;->ajf(J)Lcom/miui/c/c;

    move-result-object v3

    const-wide/16 v0, 0xd2

    invoke-virtual {p1, v0, v1}, Lcom/miui/applicationlock/a/a;->ajf(J)Lcom/miui/c/c;

    move-result-object v9

    invoke-static {p0}, Lcom/miui/c/d;->getInstance(Landroid/content/Context;)Lcom/miui/c/d;

    move-result-object v0

    const-string/jumbo v8, ""

    if-eqz v3, :cond_0

    const-string/jumbo v5, "key_flag_top_gif_adinfo_id"

    invoke-virtual {p1}, Lcom/miui/applicationlock/a/a;->aje()J

    move-result-wide v6

    const v4, 0x7f0900b6

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lcom/miui/applicationlock/a/b;->ajo(Landroid/content/Context;Lcom/miui/common/customview/gif/GifImageView;Lcom/miui/c/c;ILjava/lang/String;J)V

    const-string/jumbo v1, "applicationlock"

    const-string/jumbo v2, "com.miui.securitycenter_skinview"

    sget-object v3, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_VIEW:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-wide/16 v4, 0xd1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/c/d;->bze(Ljava/lang/String;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType$Type;J)V

    :cond_0
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, p3}, Lcom/miui/applicationlock/a/b;->ajq(Ljava/lang/String;Landroid/widget/ImageView;)V

    const-string/jumbo v1, "applicationlock"

    const-string/jumbo v2, "com.miui.securitycenter_skinview"

    sget-object v3, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_VIEW:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-wide/16 v4, 0xd2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/c/d;->bze(Ljava/lang/String;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType$Type;J)V

    :cond_1
    return-void

    :cond_2
    move-object v1, v8

    goto :goto_0
.end method

.method private static ajn(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bje:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bFK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1}, Lcom/miui/common/b/q;->aJk(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object v2
.end method

.method private static ajo(Landroid/content/Context;Lcom/miui/common/customview/gif/GifImageView;Lcom/miui/c/c;ILjava/lang/String;J)V
    .locals 5

    invoke-virtual {p2}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    invoke-static {p4, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/miui/c/c;->byY()Z

    move-result v1

    if-eqz v1, :cond_1

    cmp-long v1, v2, p5

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, p3, v1}, Lcom/miui/c/f;->bzu(Lcom/miui/common/customview/gif/GifImageView;Ljava/io/File;Landroid/content/Context;II)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Lcom/miui/common/customview/gif/GifImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p4, p5, p6}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/miui/c/c;->byY()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, p0}, Lcom/miui/c/f;->bzv(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    invoke-static {p0, v0, p3}, Lcom/miui/applicationlock/a/b;->ajl(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/common/customview/gif/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    check-cast p0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Lcom/miui/common/customview/gif/GifImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/applicationlock/a/b;->ajq(Ljava/lang/String;Landroid/widget/ImageView;)V

    check-cast p0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Lcom/miui/common/customview/gif/GifImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static ajp(Lcom/miui/applicationlock/a/a;)Z
    .locals 4

    const-string/jumbo v0, "flag_shake_adinfo_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/applicationlock/a/a;->aje()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string/jumbo v0, "flag_shake_adinfo_id"

    invoke-virtual {p0}, Lcom/miui/applicationlock/a/a;->aje()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ajq(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bje:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bFK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/common/b/q;->azU:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, p1, v1}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    :cond_0
    return-void
.end method
