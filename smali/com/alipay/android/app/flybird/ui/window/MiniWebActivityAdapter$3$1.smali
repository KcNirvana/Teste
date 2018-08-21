.class Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3$1;
.super Ljava/lang/Object;
.source "MiniWebActivityAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3$1;->this$1:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$400(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
