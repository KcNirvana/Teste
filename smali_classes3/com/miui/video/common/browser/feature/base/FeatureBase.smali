.class public Lcom/miui/video/common/browser/feature/base/FeatureBase;
.super Lcom/miui/video/framework/utilities/NoProguard;
.source "FeatureBase.java"


# static fields
.field private static final ENABLE_FEATURE_PERFORMANCE_TRACE:I = 0x1

.field private static enablePerformanceTrace:I

.field private static final nilMethodObj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final nilReceiverObj:Ljava/lang/Object;


# instance fields
.field private cachedReceiver:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private extensionWebChromeClient:Lcom/miui/video/common/browser/extension/ExWebChromeClient;

.field private extensionWebViewAction:Lcom/miui/video/common/browser/extension/ExWebViewAction;

.field private extensionWebViewBaseUIEvent:Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;

.field private extensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

.field private extensionWebViewInterceptor:Lcom/miui/video/common/browser/extension/ExWebViewInterceptor;

.field private webChromeClientMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private webViewActionMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private webViewBaseUIEventMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private webViewClientMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private webViewController:Lcom/miui/video/common/browser/foundation/WebViewController;

.field private webViewInterceptorMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->nilMethodObj:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->nilReceiverObj:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->enablePerformanceTrace:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/framework/utilities/NoProguard;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->webChromeClientMethodMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->webViewClientMethodMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->webViewActionMethodMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->webViewBaseUIEventMethodMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->webViewInterceptorMethodMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->cachedReceiver:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private varargs callExtensionMethod(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    array-length v0, p4

    invoke-direct {p0, p3, v0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getMethodIdentify(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    :try_start_0
    sget p3, Lcom/miui/video/common/browser/feature/base/FeatureBase;->enablePerformanceTrace:I

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const/4 v2, 0x0

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-lez p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_0

    const-class p4, Lcom/miui/video/common/browser/feature/base/FeatureBase;

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1

    :cond_2
    invoke-virtual {p1, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class p3, Ljava/lang/AssertionError;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object p2

    new-instance p3, Lcom/miui/video/common/browser/feature/base/FeatureBase$1;

    invoke-direct {p3, p0, p1}, Lcom/miui/video/common/browser/feature/base/FeatureBase$1;-><init>(Lcom/miui/video/common/browser/feature/base/FeatureBase;Ljava/lang/reflect/InvocationTargetException;)V

    invoke-virtual {p2, p3}, Lcom/miui/video/common/browser/foundation/WebViewEx;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private enumExtensionMethod(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    invoke-direct {p0, v3, v4}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getMethodIdentify(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method private enumWebChromeClientMethod()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getExtensionWebChromeClient()Lcom/miui/video/common/browser/extension/ExWebChromeClient;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->webChromeClientMethodMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->enumExtensionMethod(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method private enumWebViewActionMethod()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getExtensionWebViewAction()Lcom/miui/video/common/browser/extension/ExWebViewAction;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->webViewActionMethodMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->enumExtensionMethod(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method private enumWebViewBaseUIEventMethod()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getExtensionWebViewBaseUIEvent()Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->webViewBaseUIEventMethodMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->enumExtensionMethod(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method private enumWebViewClientMethod()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getExtensionWebViewClient()Lcom/miui/video/common/browser/extension/ExWebViewClient;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->webViewClientMethodMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->enumExtensionMethod(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method private enumWebViewInterceptorMethod()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getExtensionWebViewInterceptor()Lcom/miui/video/common/browser/extension/ExWebViewInterceptor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->webViewInterceptorMethodMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->enumExtensionMethod(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method private getMethodIdentify(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private varargs getReceiverAndMethodMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->cachedReceiver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v5, v1

    move-object v1, v2

    move-object v4, v3

    move-object v3, v1

    :goto_0
    if-eqz v1, :cond_0

    if-nez v3, :cond_2

    :cond_0
    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v4, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v7, v2

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v3, :cond_1

    if-eqz v7, :cond_1

    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v3, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    iget-object v3, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->cachedReceiver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v8

    goto :goto_3

    :catch_0
    move-object v5, v8

    goto :goto_2

    :catch_1
    move-object v6, v1

    goto :goto_1

    :catch_2
    move-object v6, v1

    goto :goto_1

    :catch_3
    move-object v6, v1

    goto :goto_1

    :catch_4
    move-object v6, v1

    :catch_5
    :goto_1
    move-object v1, v3

    :catch_6
    :cond_1
    :goto_2
    move-object v3, v1

    move-object v1, v6

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v1, v5

    :cond_3
    :goto_3
    if-eqz v1, :cond_6

    sget-object p1, Lcom/miui/video/common/browser/feature/base/FeatureBase;->nilMethodObj:Ljava/util/Map;

    iget-object p2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/miui/video/common/browser/feature/base/FeatureBase;->nilReceiverObj:Ljava/lang/Object;

    iget-object p2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    array-length p2, p4

    invoke-direct {p0, p3, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getMethodIdentify(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object v1

    :cond_5
    return-object v2

    :cond_6
    :goto_4
    if-nez v1, :cond_7

    iget-object p1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->cachedReceiver:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p2, Landroid/util/Pair;

    sget-object p3, Lcom/miui/video/common/browser/feature/base/FeatureBase;->nilMethodObj:Ljava/util/Map;

    sget-object p4, Lcom/miui/video/common/browser/feature/base/FeatureBase;->nilReceiverObj:Ljava/lang/Object;

    invoke-direct {p2, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v2
.end method

.method private static varargs raiseExtension(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/browser/feature/base/FeatureBase;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getReceiverAndMethodMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v0, v2, v1, p3, p4}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->callExtensionMethod(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static varargs raiseExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/browser/feature/base/FeatureBase;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getReceiverAndMethodMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, p3, p4}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->callExtensionMethod(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method private static varargs raiseExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/browser/feature/base/FeatureBase;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getReceiverAndMethodMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, p3, p4}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->callExtensionMethod(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_4
    return-object v0
.end method

.method public static varargs raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "webChromeClientMethodMap"

    const-string v1, "getExtensionWebChromeClient"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtension(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs raiseWebChromeClientExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const-string v0, "webChromeClientMethodMap"

    const-string v1, "getExtensionWebChromeClient"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs raiseWebChromeClientExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "webChromeClientMethodMap"

    const-string v1, "getExtensionWebChromeClient"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "webViewActionMethodMap"

    const-string v1, "getExtensionWebViewAction"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtension(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs raiseWebViewActionExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const-string v0, "webViewActionMethodMap"

    const-string v1, "getExtensionWebViewAction"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs raiseWebViewActionExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "webViewActionMethodMap"

    const-string v1, "getExtensionWebViewAction"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs raiseWebViewBaseUIExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "webViewBaseUIEventMethodMap"

    const-string v1, "getExtensionWebViewBaseUIEvent"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtension(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs raiseWebViewBaseUIExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const-string v0, "webViewBaseUIEventMethodMap"

    const-string v1, "getExtensionWebViewBaseUIEvent"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs raiseWebViewBaseUIExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "webViewBaseUIEventMethodMap"

    const-string v1, "getExtensionWebViewBaseUIEvent"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs raiseWebViewClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "webViewClientMethodMap"

    const-string v1, "getExtensionWebViewClient"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtension(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs raiseWebViewClientExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const-string v0, "webViewClientMethodMap"

    const-string v1, "getExtensionWebViewClient"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs raiseWebViewClientExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "webViewClientMethodMap"

    const-string v1, "getExtensionWebViewClient"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs raiseWebViewInterceptorExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "webViewInterceptorMethodMap"

    const-string v1, "getExtensionWebViewInterceptor"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtension(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs raiseWebViewInterceptorExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const-string v0, "webViewInterceptorMethodMap"

    const-string v1, "getExtensionWebViewInterceptor"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs raiseWebViewInterceptorExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "webViewInterceptorMethodMap"

    const-string v1, "getExtensionWebViewInterceptor"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getExtensionWebChromeClient()Lcom/miui/video/common/browser/extension/ExWebChromeClient;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->extensionWebChromeClient:Lcom/miui/video/common/browser/extension/ExWebChromeClient;

    return-object v0
.end method

.method public getExtensionWebViewAction()Lcom/miui/video/common/browser/extension/ExWebViewAction;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->extensionWebViewAction:Lcom/miui/video/common/browser/extension/ExWebViewAction;

    return-object v0
.end method

.method public getExtensionWebViewBaseUIEvent()Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->extensionWebViewBaseUIEvent:Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;

    return-object v0
.end method

.method public getExtensionWebViewClient()Lcom/miui/video/common/browser/extension/ExWebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->extensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

    return-object v0
.end method

.method public getExtensionWebViewInterceptor()Lcom/miui/video/common/browser/extension/ExWebViewInterceptor;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->extensionWebViewInterceptor:Lcom/miui/video/common/browser/extension/ExWebViewInterceptor;

    return-object v0
.end method

.method public getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getWebViewBaseUI()Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebViewBaseUI()Lcom/miui/video/common/browser/ui/WebViewBaseUI;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebViewBaseUI()Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->webViewController:Lcom/miui/video/common/browser/foundation/WebViewController;

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public varargs onReceiveEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setExtensionWebChromeClient(Lcom/miui/video/common/browser/extension/ExWebChromeClient;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->extensionWebChromeClient:Lcom/miui/video/common/browser/extension/ExWebChromeClient;

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->enumWebChromeClientMethod()V

    return-void
.end method

.method public setExtensionWebViewAction(Lcom/miui/video/common/browser/extension/ExWebViewAction;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->extensionWebViewAction:Lcom/miui/video/common/browser/extension/ExWebViewAction;

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->enumWebViewActionMethod()V

    return-void
.end method

.method public setExtensionWebViewBaseUIEvent(Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->extensionWebViewBaseUIEvent:Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->enumWebViewBaseUIEventMethod()V

    return-void
.end method

.method public setExtensionWebViewClient(Lcom/miui/video/common/browser/extension/ExWebViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->extensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->enumWebViewClientMethod()V

    return-void
.end method

.method public setExtensionWebViewInterceptor(Lcom/miui/video/common/browser/extension/ExWebViewInterceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->extensionWebViewInterceptor:Lcom/miui/video/common/browser/extension/ExWebViewInterceptor;

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->enumWebViewInterceptorMethod()V

    return-void
.end method

.method public setWebViewController(Lcom/miui/video/common/browser/foundation/WebViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase;->webViewController:Lcom/miui/video/common/browser/foundation/WebViewController;

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
