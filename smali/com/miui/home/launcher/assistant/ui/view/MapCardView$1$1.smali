.class Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;
.super Ljava/lang/Object;
.source "MapCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;->update(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;

.field final synthetic val$around:Ljava/lang/Boolean;

.field final synthetic val$des:Ljava/lang/String;

.field final synthetic val$list:Ljava/util/ArrayList;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$around:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$des:Ljava/lang/String;

    iput-object p7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$uri:Ljava/lang/String;

    iput-object p8, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/MapCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/MapCardView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$pkgName:Ljava/lang/String;

    const-string/jumbo v1, "com.baidu.BaiduMap"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/MapCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/MapCardView;)Landroid/widget/ImageView;

    move-result-object v1

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_2

    const v0, 0x1b0202d2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/MapCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/MapCardView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$pkgName:Ljava/lang/String;

    const-string/jumbo v1, "com.autonavi.minimap"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/MapCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/MapCardView;)Landroid/widget/ImageView;

    move-result-object v1

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_3

    const v0, 0x1b0202d0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/MapCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$around:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$des:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$uri:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1$1;->val$list:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/MapCardView;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_2
    const v0, 0x1b0202d1

    goto :goto_0

    :cond_3
    const v0, 0x1b0202cf

    goto :goto_1
.end method
