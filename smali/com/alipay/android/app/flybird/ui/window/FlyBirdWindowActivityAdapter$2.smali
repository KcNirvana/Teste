.class Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;
.super Ljava/lang/Object;
.source "FlyBirdWindowActivityAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

.field final synthetic val$buttons:Ljava/util/List;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;->val$buttons:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->dismissLoading()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->removeMaskView()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;->val$buttons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;->val$buttons:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v4, v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->text:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->action:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-static {v3, v4, v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;->val$message:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;

    return-void
.end method
