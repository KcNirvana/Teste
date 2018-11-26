.class final Lcom/nostra13/universalimageloader/core/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final ble:Lcom/nostra13/universalimageloader/core/c;

.field private final blf:Lcom/nostra13/universalimageloader/core/h;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/c;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/h;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/k;->ble:Lcom/nostra13/universalimageloader/core/c;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/k;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/k;->blf:Lcom/nostra13/universalimageloader/core/h;

    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/k;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string/jumbo v0, "PostProcess image before displaying [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/k;->blf:Lcom/nostra13/universalimageloader/core/h;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/h;->bkT:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/k;->blf:Lcom/nostra13/universalimageloader/core/h;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/h;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/n;->bHR()Lcom/nostra13/universalimageloader/core/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/k;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/core/d/a;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/b;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/k;->blf:Lcom/nostra13/universalimageloader/core/h;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/k;->ble:Lcom/nostra13/universalimageloader/core/c;

    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biA:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/b;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/h;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/k;->blf:Lcom/nostra13/universalimageloader/core/h;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/h;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/n;->bHM()Z

    move-result v0

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/k;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/k;->ble:Lcom/nostra13/universalimageloader/core/c;

    invoke-static {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/a;->bGp(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/c;)V

    return-void
.end method
