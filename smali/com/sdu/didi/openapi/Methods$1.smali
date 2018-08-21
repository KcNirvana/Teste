.class Lcom/sdu/didi/openapi/Methods$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/openapi/Methods;->pageRefresh(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/sdu/didi/openapi/Methods;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/Methods;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/Methods$1;->b:Lcom/sdu/didi/openapi/Methods;

    iput-object p2, p0, Lcom/sdu/didi/openapi/Methods$1;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/Methods$1;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sdu/didi/openapi/Methods$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
