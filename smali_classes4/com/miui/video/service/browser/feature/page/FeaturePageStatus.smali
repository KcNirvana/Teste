.class public Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;
.super Lcom/miui/video/common/browser/feature/base/FeatureBase;
.source "FeaturePageStatus.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.miui.video.service.browser.feature.page.FeaturePageStatus"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    new-instance v0, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus$1;-><init>(Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;->setExtensionWebViewBaseUIEvent(Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;)V

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->init()V

    return-void
.end method

.method public unInit()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->unInit()V

    return-void
.end method
