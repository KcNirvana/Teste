.class Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$10;
.super Ljava/lang/Object;
.source "FlybirdLocalViewActivityAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$10;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$10;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->access$200(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->clearText()V

    return-void
.end method
