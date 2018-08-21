.class Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;
.super Ljava/lang/Object;
.source "DeviceGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

.field final synthetic val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

.field final synthetic val$info:Lcom/xiaomi/miot/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;Lcom/xiaomi/miot/DeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const v5, 0x1b0b029f

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->getCurrentState()Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    move-result-object v1

    sget-object v4, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->REFRESH_FAILED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    if-ne v1, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-boolean v1, v1, Lcom/xiaomi/miot/DeviceInfo;->currentStatus:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1b020269

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-boolean v4, v4, Lcom/xiaomi/miot/DeviceInfo;->currentStatus:Z

    invoke-static {v1, v4}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->access$300(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;Z)V

    :cond_2
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-boolean v1, v1, Lcom/xiaomi/miot/DeviceInfo;->currentStatus:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, v4, Lcom/xiaomi/miot/DeviceInfo;->currentStatus:Z

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->getInstance()Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-object v4, v4, Lcom/xiaomi/miot/DeviceInfo;->did:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-boolean v5, v5, Lcom/xiaomi/miot/DeviceInfo;->currentStatus:Z

    if-nez v5, :cond_5

    :goto_3
    new-instance v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->setDeviceOn(Ljava/lang/String;ZLcom/xiaomi/miot/service/ICallback;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1b02026a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method
