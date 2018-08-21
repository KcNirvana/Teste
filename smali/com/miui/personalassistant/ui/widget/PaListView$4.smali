.class Lcom/miui/personalassistant/ui/widget/PaListView$4;
.super Ljava/lang/Object;
.source "PaListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/widget/PaListView;->updateInstalledStateUI(Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/content/Context;Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$holder:Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;

.field final synthetic val$item:Lcom/miui/personalassistant/model/FunctionLaunch;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/PaListView;Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/content/Context;Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4;->val$item:Lcom/miui/personalassistant/model/FunctionLaunch;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4;->val$holder:Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v2, "com.alipay.sdk.formi"

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4;->val$item:Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/personalassistant/util/Util;->isKeyguardSecure(Landroid/content/Context;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {}, Lcom/miui/personalassistant/util/ThreadDispatcher;->getInstance()Lcom/miui/personalassistant/util/ThreadDispatcher;

    new-instance v2, Lcom/miui/personalassistant/ui/widget/PaListView$4$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/miui/personalassistant/ui/widget/PaListView$4$1;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView$4;FZ)V

    invoke-static {v2}, Lcom/miui/personalassistant/util/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4;->val$item:Lcom/miui/personalassistant/model/FunctionLaunch;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->isInstalled(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1
.end method
