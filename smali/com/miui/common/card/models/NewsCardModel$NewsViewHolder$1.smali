.class final Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nostra13/universalimageloader/core/d/a;


# instance fields
.field final synthetic this$1:Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$1;->this$1:Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$1;->this$1:Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->-get0(Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;)Lcom/nostra13/universalimageloader/core/n;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/securitycenter/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
