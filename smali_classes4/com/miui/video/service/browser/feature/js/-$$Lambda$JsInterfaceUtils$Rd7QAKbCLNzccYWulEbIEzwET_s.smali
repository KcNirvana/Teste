.class public final synthetic Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsInterfaceUtils$Rd7QAKbCLNzccYWulEbIEzwET_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsInterfaceUtils$Rd7QAKbCLNzccYWulEbIEzwET_s;->f$0:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsInterfaceUtils$Rd7QAKbCLNzccYWulEbIEzwET_s;->f$0:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/miui/video/service/browser/feature/js/JsInterfaceUtils;->lambda$loadJsOnLoginMethod$10(Landroid/webkit/WebView;)V

    return-void
.end method
