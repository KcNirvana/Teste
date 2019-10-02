.class Lcom/miui/video/service/browser/feature/js/JsCommon$1;
.super Ljava/lang/Object;
.source "JsCommon.java"

# interfaces
.implements Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/browser/feature/js/JsCommon;->onLogin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/browser/feature/js/JsCommon;


# direct methods
.method constructor <init>(Lcom/miui/video/service/browser/feature/js/JsCommon;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/js/JsCommon$1;->this$0:Lcom/miui/video/service/browser/feature/js/JsCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/js/JsCommon$1;->this$0:Lcom/miui/video/service/browser/feature/js/JsCommon;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/js/JsCommon;->access$000(Lcom/miui/video/service/browser/feature/js/JsCommon;)Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/js/JsInterfaceUtils;->loadJsOnLoginMethod(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/js/JsCommon$1;->this$0:Lcom/miui/video/service/browser/feature/js/JsCommon;

    invoke-static {v0}, Lcom/miui/video/service/browser/feature/js/JsCommon;->access$000(Lcom/miui/video/service/browser/feature/js/JsCommon;)Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/service/browser/feature/js/JsInterfaceUtils;->loadJsOnLoginMethod(Landroid/webkit/WebView;)V

    return-void
.end method
