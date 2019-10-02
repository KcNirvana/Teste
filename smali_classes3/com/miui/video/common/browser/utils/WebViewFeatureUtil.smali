.class public Lcom/miui/video/common/browser/utils/WebViewFeatureUtil;
.super Ljava/lang/Object;
.source "WebViewFeatureUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showWebViewError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 p2, 0x0

    if-nez p0, :cond_0

    const-string p0, "WebViewFeatureUtil"

    const-string p1, "showWebViewError WebView is null"

    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return p2

    :cond_0
    const-string v0, "WebViewFeatureUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWebViewError  url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; failingUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    const/4 p3, -0x2

    if-eq p1, p3, :cond_1

    const/4 p3, -0x5

    if-eq p1, p3, :cond_1

    const/4 p3, -0x6

    if-eq p1, p3, :cond_1

    const/4 p3, -0x7

    if-eq p1, p3, :cond_1

    const/4 p3, -0x8

    if-eq p1, p3, :cond_1

    const/16 p3, -0xc

    if-ne p1, p3, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "WebViewFeatureUtil"

    const-string p1, "WebView is showing Error "

    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "WebViewFeatureUtil"

    const-string p1, "WebView  not show Error "

    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return p2
.end method
