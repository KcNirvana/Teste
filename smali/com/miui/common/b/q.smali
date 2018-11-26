.class public Lcom/miui/common/b/q;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final azP:Lcom/nostra13/universalimageloader/core/n;

.field public static final azQ:Lcom/nostra13/universalimageloader/core/n;

.field public static final azR:Lcom/nostra13/universalimageloader/core/n;

.field public static final azS:Lcom/nostra13/universalimageloader/core/n;

.field public static final azT:Lcom/nostra13/universalimageloader/core/n;

.field public static final azU:Lcom/nostra13/universalimageloader/core/n;

.field public static final azV:Lcom/nostra13/universalimageloader/core/n;

.field private static azW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIB(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/o;->bIC(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    sput-object v0, Lcom/miui/common/b/q;->azV:Lcom/nostra13/universalimageloader/core/n;

    new-instance v0, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIB(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/o;->bIC(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bik:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bII(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    sput-object v0, Lcom/miui/common/b/q;->azU:Lcom/nostra13/universalimageloader/core/n;

    new-instance v0, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIB(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIC(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bID(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    sput-object v0, Lcom/miui/common/b/q;->azQ:Lcom/nostra13/universalimageloader/core/n;

    new-instance v0, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIB(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/o;->bIC(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bID(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    sput-object v0, Lcom/miui/common/b/q;->azT:Lcom/nostra13/universalimageloader/core/n;

    new-instance v0, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIB(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/o;->bIC(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bID(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    sput-object v0, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    new-instance v0, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIB(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIC(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    new-instance v1, Lcom/miui/common/b/u;

    invoke-direct {v1}, Lcom/miui/common/b/u;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bIG(Lcom/nostra13/universalimageloader/core/d/a;)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bID(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    sput-object v0, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    new-instance v0, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIB(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/o;->bIC(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    new-instance v1, Lcom/miui/common/b/v;

    invoke-direct {v1}, Lcom/miui/common/b/v;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bIG(Lcom/nostra13/universalimageloader/core/d/a;)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bID(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    sput-object v0, Lcom/miui/common/b/q;->azS:Lcom/nostra13/universalimageloader/core/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/miui/common/b/q;->getInstance()Lcom/nostra13/universalimageloader/core/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/nostra13/universalimageloader/core/l;->bHD(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    return-void
.end method

.method public static aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V
    .locals 1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/miui/common/b/q;->getInstance()Lcom/nostra13/universalimageloader/core/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/nostra13/universalimageloader/core/l;->bHD(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    return-void
.end method

.method public static aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/miui/common/b/q;->getInstance()Lcom/nostra13/universalimageloader/core/l;

    move-result-object v0

    sget-object v1, Lcom/miui/common/b/q;->azQ:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v0, p0, p1, v1}, Lcom/nostra13/universalimageloader/core/l;->bHD(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    return-void
.end method

.method public static aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V
    .locals 1

    invoke-static {}, Lcom/miui/common/b/q;->getInstance()Lcom/nostra13/universalimageloader/core/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/nostra13/universalimageloader/core/l;->bHD(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    return-void
.end method

.method public static aJk(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/miui/common/b/q;->getInstance()Lcom/nostra13/universalimageloader/core/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/nostra13/universalimageloader/core/l;->bHJ(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static aJl(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/e/d;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/b/a;)V
    .locals 1

    invoke-static {}, Lcom/miui/common/b/q;->getInstance()Lcom/nostra13/universalimageloader/core/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/l;->bHE(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/e/d;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/b/a;)V

    return-void
.end method

.method public static declared-synchronized aJm()V
    .locals 3

    const-class v1, Lcom/miui/common/b/q;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/miui/common/b/q;->azW:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->bsI()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ImageLoader don\'t run in remote process"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/e;

    invoke-direct {v2, v0}, Lcom/nostra13/universalimageloader/core/e;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/e;->bGR(I)Lcom/nostra13/universalimageloader/core/e;

    new-instance v0, Lcom/nostra13/universalimageloader/b/a/a/a;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/b/a/a/a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/e;->bGN(Lcom/nostra13/universalimageloader/b/a/a/b;)Lcom/nostra13/universalimageloader/core/e;

    const/high16 v0, 0x3200000

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/e;->bGO(I)Lcom/nostra13/universalimageloader/core/e;

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->bih:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/e;->bGQ(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/e;

    invoke-static {}, Lcom/nostra13/universalimageloader/core/l;->getInstance()Lcom/nostra13/universalimageloader/core/l;

    move-result-object v0

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/e;->build()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/l;->bHG(Lcom/nostra13/universalimageloader/core/d;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/common/b/q;->azW:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method public static getInstance()Lcom/nostra13/universalimageloader/core/l;
    .locals 1

    invoke-static {}, Lcom/miui/common/b/q;->aJm()V

    invoke-static {}, Lcom/nostra13/universalimageloader/core/l;->getInstance()Lcom/nostra13/universalimageloader/core/l;

    move-result-object v0

    return-object v0
.end method
