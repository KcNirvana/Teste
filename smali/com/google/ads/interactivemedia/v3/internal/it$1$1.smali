.class Lcom/google/ads/interactivemedia/v3/internal/it$1$1;
.super Landroid/webkit/WebViewClient;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/it$1;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/it$1;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/it$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/it$1$1;->a:Lcom/google/ads/interactivemedia/v3/internal/it$1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/it$1$1;->a:Lcom/google/ads/interactivemedia/v3/internal/it$1;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/it$1;->b:Lcom/google/ads/interactivemedia/v3/internal/jd;

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/jd;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/it$1$1;->a:Lcom/google/ads/interactivemedia/v3/internal/it$1;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/it$1;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;->onCompanionAdClick()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
