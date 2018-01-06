.class Lcom/miui/weather2/WebViewActivity$XiangKan;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XiangKan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/weather2/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/WebViewActivity$XiangKan;->this$0:Lcom/miui/weather2/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInstallXiangKan()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/WebViewActivity$XiangKan;->this$0:Lcom/miui/weather2/WebViewActivity;

    invoke-static {v0}, Lcom/miui/weather2/WebViewActivity;->a(Lcom/miui/weather2/WebViewActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.xiangkan.android"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
