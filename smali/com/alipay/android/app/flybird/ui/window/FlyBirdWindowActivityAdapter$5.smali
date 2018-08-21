.class Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$5;
.super Ljava/lang/Object;
.source "FlyBirdWindowActivityAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

.field final synthetic val$titleString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$5;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$5;->val$titleString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$5;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$5;->val$titleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
