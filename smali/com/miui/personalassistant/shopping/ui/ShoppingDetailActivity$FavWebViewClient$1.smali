.class Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebViewClient$1;
.super Ljava/lang/Object;
.source "ShoppingDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebViewClient;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebViewClient$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "ShoppingDetailActivity"

    const-string/jumbo v1, "ShoppingDetailActivity finish"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebViewClient$1;->this$1:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebViewClient;

    iget-object v0, v0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->finish()V

    return-void
.end method
