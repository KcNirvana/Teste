.class final Lcom/miui/video/biz/search/activity/H5SearchResultActivity$initViewsEvent$2;
.super Ljava/lang/Object;
.source "H5SearchResultActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$initViewsEvent$2;->this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$initViewsEvent$2;->this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;

    invoke-static {p1}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->access$getVWebView$p(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->canGoBack()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$initViewsEvent$2;->this$0:Lcom/miui/video/biz/search/activity/H5SearchResultActivity;

    invoke-static {p1}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->access$getVWebView$p(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->goBack()V

    :cond_2
    return-void
.end method
