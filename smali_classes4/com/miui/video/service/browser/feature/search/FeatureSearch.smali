.class public Lcom/miui/video/service/browser/feature/search/FeatureSearch;
.super Lcom/miui/video/common/browser/feature/base/FeatureBase;
.source "FeatureSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;
    }
.end annotation


# instance fields
.field private mExWebChromeClient:Lcom/miui/video/common/browser/extension/ExWebChromeClient;

.field private mExtensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

.field private mIOnPageChangeListener:Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->mIOnPageChangeListener:Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

    new-instance v0, Lcom/miui/video/service/browser/feature/search/FeatureSearch$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch$1;-><init>(Lcom/miui/video/service/browser/feature/search/FeatureSearch;)V

    iput-object v0, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->mExtensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

    new-instance v0, Lcom/miui/video/service/browser/feature/search/FeatureSearch$2;

    invoke-direct {v0, p0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch$2;-><init>(Lcom/miui/video/service/browser/feature/search/FeatureSearch;)V

    iput-object v0, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->mExWebChromeClient:Lcom/miui/video/common/browser/extension/ExWebChromeClient;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/browser/feature/search/FeatureSearch;)Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->mIOnPageChangeListener:Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->init()V

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->mExtensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

    invoke-virtual {p0, v0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->setExtensionWebViewClient(Lcom/miui/video/common/browser/extension/ExWebViewClient;)V

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->mExWebChromeClient:Lcom/miui/video/common/browser/extension/ExWebChromeClient;

    invoke-virtual {p0, v0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->setExtensionWebChromeClient(Lcom/miui/video/common/browser/extension/ExWebChromeClient;)V

    return-void
.end method

.method public setIOnPageChangeListener(Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->mIOnPageChangeListener:Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

    return-void
.end method

.method public unInit()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->unInit()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->setExtensionWebViewClient(Lcom/miui/video/common/browser/extension/ExWebViewClient;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->setExtensionWebChromeClient(Lcom/miui/video/common/browser/extension/ExWebChromeClient;)V

    iput-object v0, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->mIOnPageChangeListener:Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

    return-void
.end method
