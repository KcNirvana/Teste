.class public Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;
.super Ljava/lang/Object;
.source "ExWebViewInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/browser/extension/ExWebViewInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterceptLoadUrlParams"
.end annotation


# instance fields
.field public additionalHttpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;->additionalHttpHeaders:Ljava/util/Map;

    return-void
.end method
