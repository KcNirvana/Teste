.class Lcom/miui/video/global/fragment/PersonalFragment$2$1$1;
.super Ljava/lang/Object;
.source "PersonalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/global/fragment/PersonalFragment$2$1;->getBitmapCallback(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/video/global/fragment/PersonalFragment$2$1;

.field final synthetic val$avatarBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/miui/video/global/fragment/PersonalFragment$2$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/fragment/PersonalFragment$2$1$1;->this$2:Lcom/miui/video/global/fragment/PersonalFragment$2$1;

    iput-object p2, p0, Lcom/miui/video/global/fragment/PersonalFragment$2$1$1;->val$avatarBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment$2$1$1;->this$2:Lcom/miui/video/global/fragment/PersonalFragment$2$1;

    iget-object v0, v0, Lcom/miui/video/global/fragment/PersonalFragment$2$1;->this$1:Lcom/miui/video/global/fragment/PersonalFragment$2;

    iget-object v0, v0, Lcom/miui/video/global/fragment/PersonalFragment$2;->this$0:Lcom/miui/video/global/fragment/PersonalFragment;

    invoke-static {v0}, Lcom/miui/video/global/fragment/PersonalFragment;->access$100(Lcom/miui/video/global/fragment/PersonalFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/global/fragment/PersonalFragment$2$1$1;->val$avatarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
