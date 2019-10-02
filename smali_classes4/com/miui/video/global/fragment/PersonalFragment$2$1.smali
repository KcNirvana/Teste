.class Lcom/miui/video/global/fragment/PersonalFragment$2$1;
.super Ljava/lang/Object;
.source "PersonalFragment.java"

# interfaces
.implements Lcom/miui/video/common/library/widget/glide/ImgUtils$GlideLoadBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/global/fragment/PersonalFragment$2;->onResult(Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/global/fragment/PersonalFragment$2;


# direct methods
.method constructor <init>(Lcom/miui/video/global/fragment/PersonalFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/fragment/PersonalFragment$2$1;->this$1:Lcom/miui/video/global/fragment/PersonalFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmapCallback(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Lcom/miui/video/global/fragment/PersonalFragment$2$1$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/global/fragment/PersonalFragment$2$1$1;-><init>(Lcom/miui/video/global/fragment/PersonalFragment$2$1;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method
