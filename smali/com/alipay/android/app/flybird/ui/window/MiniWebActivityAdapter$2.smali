.class Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$2;
.super Ljava/lang/Object;
.source "MiniWebActivityAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "webonRefresh"

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$200(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
