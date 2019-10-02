.class Lcom/miui/video/service/browser/feature/iframe/FeatureIFrameJs$1;
.super Lcom/miui/video/common/browser/extension/ExWebViewClient;
.source "FeatureIFrameJs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/browser/feature/iframe/FeatureIFrameJs;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/browser/feature/iframe/FeatureIFrameJs;


# direct methods
.method constructor <init>(Lcom/miui/video/service/browser/feature/iframe/FeatureIFrameJs;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/iframe/FeatureIFrameJs$1;->this$0:Lcom/miui/video/service/browser/feature/iframe/FeatureIFrameJs;

    invoke-direct {p0}, Lcom/miui/video/common/browser/extension/ExWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/video/common/browser/extension/ExWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
