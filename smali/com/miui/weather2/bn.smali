.class Lcom/miui/weather2/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/bn;->a:Lcom/miui/weather2/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/miui/weather2/bn;->a:Lcom/miui/weather2/WebViewActivity;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
