.class Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$10;
.super Ljava/lang/Object;
.source "FlybirdWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$10;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$10;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->disposeUI()V

    return-void
.end method
