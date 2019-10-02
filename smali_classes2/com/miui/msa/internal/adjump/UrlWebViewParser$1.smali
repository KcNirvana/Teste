.class Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;
.super Landroid/webkit/WebViewClient;
.source "UrlWebViewParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/adjump/UrlWebViewParser;->parse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/adjump/UrlWebViewParser;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {v0}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$200(Lcom/miui/msa/internal/adjump/UrlWebViewParser;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {v0}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$200(Lcom/miui/msa/internal/adjump/UrlWebViewParser;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :cond_2
    iget-object p1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {p1, v1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$202(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Z)Z

    iget-object p1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {p1, p2}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$300(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {p1, p2}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$400(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p2}, Lcom/miui/msa/internal/adjump/Utils;->isGooglePlayUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Lcom/miui/msa/internal/adjump/Utils;->isMiMarketUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :cond_6
    iget-object p1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {p1, v1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$202(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Z)Z

    iget-object p1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {p1, p2}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$300(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {p1, p2}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$400(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {v0}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$200(Lcom/miui/msa/internal/adjump/UrlWebViewParser;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {v0, p3}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$502(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$202(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Z)Z

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {v0, p4}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$300(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {v0, p4}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$400(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {v0}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$100(Lcom/miui/msa/internal/adjump/UrlWebViewParser;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;->this$0:Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    invoke-static {v1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->access$004(Lcom/miui/msa/internal/adjump/UrlWebViewParser;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UrlWebViewParser"

    const-string v2, "Put jumpDetail exception"

    invoke-static {v1, v2, v0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
