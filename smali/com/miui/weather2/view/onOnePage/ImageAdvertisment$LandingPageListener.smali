.class public Lcom/miui/weather2/view/onOnePage/ImageAdvertisment$LandingPageListener;
.super Lcom/miui/systemAdSolution/landingPage/LandingPageAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LandingPageListener"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment$LandingPageListener;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment$LandingPageListener;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDownloadStart()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment$LandingPageListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->d()V

    const-string v1, "Wth2:ImageAdvertisment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadStart() Downloading package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    iget-object v3, v3, Lcom/miui/weather2/structures/AdvertismentData;->mDeepLink:Lcom/miui/weather2/structures/DeepLinkInfo;

    iget-object v3, v3, Lcom/miui/weather2/structures/DeepLinkInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    iget-object v0, v0, Lcom/miui/weather2/structures/AdvertismentData;->mDeepLink:Lcom/miui/weather2/structures/DeepLinkInfo;

    iget-object v0, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDownloadSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment$LandingPageListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->f()V

    const-string v1, "Wth2:ImageAdvertisment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadSuccess() Downloading package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    iget-object v0, v0, Lcom/miui/weather2/structures/AdvertismentData;->mDeepLink:Lcom/miui/weather2/structures/DeepLinkInfo;

    iget-object v0, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInstallSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment$LandingPageListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->g()V

    const-string v1, "Wth2:ImageAdvertisment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInstallSuccess() Install package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    iget-object v0, v0, Lcom/miui/weather2/structures/AdvertismentData;->mDeepLink:Lcom/miui/weather2/structures/DeepLinkInfo;

    iget-object v0, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
