.class Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;
.super Ljava/lang/Object;
.source "SearchCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->refreshHeaderView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/PhotoPickUtils;->getCroppedPhotoBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$002(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1b0c0049

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    invoke-static {v2, v0}, Lcom/miui/home/launcher/assistant/util/DrawableUtil;->bitmapToRoundedDrawable(Landroid/graphics/Bitmap;F)Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$202(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$600(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0
.end method
