.class Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "ShoppingDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebChromeClient;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebChromeClient;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebChromeClient;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->access$500(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)Lmiui/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$FavWebChromeClient;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->access$500(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)Lmiui/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
