.class final Lcom/miui/personalassistant/util/ImageUtil$1;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/ImageUtil;->loadImage(Ljava/lang/String;Lcom/miui/personalassistant/util/ImageUtil$LoadCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/miui/personalassistant/util/ImageUtil$LoadCallBack;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/ImageUtil$LoadCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/ImageUtil$1;->val$callback:Lcom/miui/personalassistant/util/ImageUtil$LoadCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/ImageUtil$1;->val$callback:Lcom/miui/personalassistant/util/ImageUtil$LoadCallBack;

    invoke-interface {v0, p3, p1}, Lcom/miui/personalassistant/util/ImageUtil$LoadCallBack;->onImageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method
