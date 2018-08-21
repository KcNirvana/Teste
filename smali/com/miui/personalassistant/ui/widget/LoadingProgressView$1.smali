.class Lcom/miui/personalassistant/ui/widget/LoadingProgressView$1;
.super Ljava/lang/Object;
.source "LoadingProgressView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->onError(ZLcom/miui/personalassistant/request/core/BaseResult$State;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

.field final synthetic val$state:Lcom/miui/personalassistant/request/core/BaseResult$State;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/LoadingProgressView;Lcom/miui/personalassistant/request/core/BaseResult$State;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$1;->this$0:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$1;->val$state:Lcom/miui/personalassistant/request/core/BaseResult$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$1;->val$state:Lcom/miui/personalassistant/request/core/BaseResult$State;

    sget-object v2, Lcom/miui/personalassistant/request/core/BaseResult$State;->NETWORK_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    if-ne v1, v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$1;->this$0:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$1;->this$0:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->access$000(Lcom/miui/personalassistant/ui/widget/LoadingProgressView;)Lcom/miui/personalassistant/loader/Reloadable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$1;->this$0:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->access$000(Lcom/miui/personalassistant/ui/widget/LoadingProgressView;)Lcom/miui/personalassistant/loader/Reloadable;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/personalassistant/loader/Reloadable;->reload()V

    goto :goto_0
.end method
