.class Lcom/google/ads/interactivemedia/v3/internal/it$1;
.super Landroid/webkit/WebChromeClient;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/it;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jd;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/internal/jd;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/it;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jd;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/it$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/it$1;->b:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/it$1;->c:Ljava/util/List;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    new-instance p2, Landroid/webkit/WebView;

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/it$1;->a:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p1}, Landroid/webkit/WebView$WebViewTransport;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/it$1$1;

    invoke-direct {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/it$1$1;-><init>(Lcom/google/ads/interactivemedia/v3/internal/it$1;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method
