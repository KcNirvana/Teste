.class Lcom/sdu/didi/openapi/DiDiWebActivity$2;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/openapi/DiDiWebActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/DiDiWebActivity;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$2;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    new-instance v0, Lcom/sdu/didi/openapi/ss/b;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdu/didi/openapi/ss/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/sdu/didi/openapi/ss/b;->a(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2

    const-string/jumbo v0, "prompt ok"

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$2;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->b(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/ss/f;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity$2;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-virtual {v0, p3, v1}, Lcom/sdu/didi/openapi/ss/f;->a(Ljava/lang/String;Lcom/sdu/didi/openapi/DiDiWebActivity;)V

    const/4 v0, 0x1

    return v0
.end method
