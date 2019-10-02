.class public Lcom/miui/video/common/browser/extension/ExWebViewInterceptor;
.super Lcom/miui/video/framework/utilities/NoProguard;
.source "ExWebViewInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/framework/utilities/NoProguard;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept_GetOriginalUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public intercept_GetTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public intercept_GetUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public intercept_LoadUrl(Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
