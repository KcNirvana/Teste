.class Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$4;
.super Ljava/lang/Object;
.source "FlybirdWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$4;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$4;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$600(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$4;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$700(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showLoading([Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#flybird"

    const-string/jumbo v2, "FlybirdWindowManager.onFrameChanged"

    const-string/jumbo v3, "LauncherApplication startup : loading"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
